(*
ocamlfind ocamlopt -rectypes -thread -O3 ./Boyer2_nofib.ml -o "./Boyer2_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Boyer2_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec addtoLUT_d0 _lh_addtoLUT_arg1_1 =
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
                      (`Node((`LH_P3((addtoLUT_d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_2, _lh_addtoLUT_LH_P3_1_2, _lh_addtoLUT_LH_P3_0_3))), (`LH_P2(_lh_addtoLUT_LH_P2_0_1, _lh_addtoLUT_LH_P2_1_1)), _lh_addtoLUT_LH_P3_2_3))))
                    else
                      (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_3, (`LH_P2(_lh_addtoLUT_LH_P2_0_1, _lh_addtoLUT_LH_P2_1_1)), (addtoLUT_d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_2, _lh_addtoLUT_LH_P3_1_2, _lh_addtoLUT_LH_P3_2_3)))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc_d0 _lh_assoc_arg1_1 =
  (match _lh_assoc_arg1_1 with
    | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
      (match _lh_assoc_LH_P2_1_3 with
        | `Cons(_lh_assoc_Cons_0_2) -> 
          (match _lh_assoc_Cons_0_2 with
            | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
              (let rec _lh_matchIdent_3_1 = _lh_assoc_LH_P2_0_4 in
                (match _lh_matchIdent_3_1 with
                  | `Cons(_lh_assoc_Cons_0_3) -> 
                    (match _lh_assoc_Cons_0_3 with
                      | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
                        (match _lh_assoc_LH_P2_0_5 with
                          | `Atom(_lh_assoc_Atom_0_1) -> 
                            (if (_lh_assoc_LH_P2_0_3 = (`Atom(_lh_assoc_Atom_0_1))) then
                              _lh_assoc_LH_P2_0_4
                            else
                              (assoc_d0 (`LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_4))))
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
let rec assoc_d1 _lh_assoc_arg1_2 =
  (match _lh_assoc_arg1_2 with
    | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
      (match _lh_assoc_LH_P2_1_6 with
        | `Cons(_lh_assoc_Cons_0_4) -> 
          (match _lh_assoc_Cons_0_4 with
            | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
              (let rec _lh_matchIdent_4_8 = _lh_assoc_LH_P2_0_7 in
                (match _lh_matchIdent_4_8 with
                  | `Cons(_lh_assoc_Cons_0_5) -> 
                    (match _lh_assoc_Cons_0_5 with
                      | `LH_P2(_lh_assoc_LH_P2_0_8, _lh_assoc_LH_P2_1_8) -> 
                        (match _lh_assoc_LH_P2_0_8 with
                          | `Atom(_lh_assoc_Atom_0_2) -> 
                            (if (_lh_assoc_LH_P2_0_6 = (`Atom(_lh_assoc_Atom_0_2))) then
                              _lh_assoc_LH_P2_0_7
                            else
                              (assoc_d1 (`LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_7))))
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
let rec assoc_d2 _lh_assoc_arg1_3 =
  (match _lh_assoc_arg1_3 with
    | `LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_9) -> 
      (match _lh_assoc_LH_P2_1_9 with
        | `Cons(_lh_assoc_Cons_0_6) -> 
          (match _lh_assoc_Cons_0_6 with
            | `LH_P2(_lh_assoc_LH_P2_0_1_0, _lh_assoc_LH_P2_1_1_0) -> 
              (let rec _lh_matchIdent_5_8 = _lh_assoc_LH_P2_0_1_0 in
                (match _lh_matchIdent_5_8 with
                  | `Cons(_lh_assoc_Cons_0_7) -> 
                    (match _lh_assoc_Cons_0_7 with
                      | `LH_P2(_lh_assoc_LH_P2_0_1_1, _lh_assoc_LH_P2_1_1_1) -> 
                        (match _lh_assoc_LH_P2_0_1_1 with
                          | `Atom(_lh_assoc_Atom_0_3) -> 
                            (if (_lh_assoc_LH_P2_0_9 = (`Atom(_lh_assoc_Atom_0_3))) then
                              _lh_assoc_LH_P2_0_1_0
                            else
                              (assoc_d2 (`LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_1_0))))
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
let rec atom_d0 _lh_atom_arg1_3 =
  (match _lh_atom_arg1_3 with
    | `Atom(_lh_atom_Atom_0_3) -> 
      true
    | _ -> 
      false);;
let rec atom_d1 _lh_atom_arg1_2 =
  (match _lh_atom_arg1_2 with
    | `Atom(_lh_atom_Atom_0_2) -> 
      true
    | _ -> 
      false);;
let rec atom_d2 _lh_atom_arg1_1 =
  (match _lh_atom_arg1_1 with
    | `Atom(_lh_atom_Atom_0_1) -> 
      true
    | _ -> 
      false);;
let rec car_d0 _lh_car_arg1_1_3 =
  (match _lh_car_arg1_1_3 with
    | `Cons(_lh_car_Cons_0_1_3) -> 
      (match _lh_car_Cons_0_1_3 with
        | `LH_P2(_lh_car_LH_P2_0_1_3, _lh_car_LH_P2_1_1_3) -> 
          _lh_car_LH_P2_0_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1 _lh_car_arg1_6 =
  (match _lh_car_arg1_6 with
    | `Cons(_lh_car_Cons_0_6) -> 
      (match _lh_car_Cons_0_6 with
        | `LH_P2(_lh_car_LH_P2_0_6, _lh_car_LH_P2_1_6) -> 
          _lh_car_LH_P2_0_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d0 _lh_car_arg1_8 =
  (match _lh_car_arg1_8 with
    | `Cons(_lh_car_Cons_0_8) -> 
      (match _lh_car_Cons_0_8 with
        | `LH_P2(_lh_car_LH_P2_0_8, _lh_car_LH_P2_1_8) -> 
          _lh_car_LH_P2_0_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d1 _lh_car_arg1_1_6 =
  (match _lh_car_arg1_1_6 with
    | `Cons(_lh_car_Cons_0_1_6) -> 
      (match _lh_car_Cons_0_1_6 with
        | `LH_P2(_lh_car_LH_P2_0_1_6, _lh_car_LH_P2_1_1_6) -> 
          _lh_car_LH_P2_0_1_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d2 _lh_car_arg1_2 =
  (match _lh_car_arg1_2 with
    | `Cons(_lh_car_Cons_0_2) -> 
      (match _lh_car_Cons_0_2 with
        | `LH_P2(_lh_car_LH_P2_0_2, _lh_car_LH_P2_1_2) -> 
          _lh_car_LH_P2_0_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d3 _lh_car_arg1_1_5 =
  (match _lh_car_arg1_1_5 with
    | `Cons(_lh_car_Cons_0_1_5) -> 
      (match _lh_car_Cons_0_1_5 with
        | `LH_P2(_lh_car_LH_P2_0_1_5, _lh_car_LH_P2_1_1_5) -> 
          _lh_car_LH_P2_0_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d4 _lh_car_arg1_4 =
  (match _lh_car_arg1_4 with
    | `Cons(_lh_car_Cons_0_4) -> 
      (match _lh_car_Cons_0_4 with
        | `LH_P2(_lh_car_LH_P2_0_4, _lh_car_LH_P2_1_4) -> 
          _lh_car_LH_P2_0_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d5 _lh_car_arg1_5 =
  (match _lh_car_arg1_5 with
    | `Cons(_lh_car_Cons_0_5) -> 
      (match _lh_car_Cons_0_5 with
        | `LH_P2(_lh_car_LH_P2_0_5, _lh_car_LH_P2_1_5) -> 
          _lh_car_LH_P2_0_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d2 _lh_car_arg1_1_4 =
  (match _lh_car_arg1_1_4 with
    | `Cons(_lh_car_Cons_0_1_4) -> 
      (match _lh_car_Cons_0_1_4 with
        | `LH_P2(_lh_car_LH_P2_0_1_4, _lh_car_LH_P2_1_1_4) -> 
          _lh_car_LH_P2_0_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d3 _lh_car_arg1_1_0 =
  (match _lh_car_arg1_1_0 with
    | `Cons(_lh_car_Cons_0_1_0) -> 
      (match _lh_car_Cons_0_1_0 with
        | `LH_P2(_lh_car_LH_P2_0_1_0, _lh_car_LH_P2_1_1_0) -> 
          _lh_car_LH_P2_0_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d4 _lh_car_arg1_7 =
  (match _lh_car_arg1_7 with
    | `Cons(_lh_car_Cons_0_7) -> 
      (match _lh_car_Cons_0_7 with
        | `LH_P2(_lh_car_LH_P2_0_7, _lh_car_LH_P2_1_7) -> 
          _lh_car_LH_P2_0_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d5 _lh_car_arg1_9 =
  (match _lh_car_arg1_9 with
    | `Cons(_lh_car_Cons_0_9) -> 
      (match _lh_car_Cons_0_9 with
        | `LH_P2(_lh_car_LH_P2_0_9, _lh_car_LH_P2_1_9) -> 
          _lh_car_LH_P2_0_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d6 _lh_car_arg1_1_2 =
  (match _lh_car_arg1_1_2 with
    | `Cons(_lh_car_Cons_0_1_2) -> 
      (match _lh_car_Cons_0_1_2 with
        | `LH_P2(_lh_car_LH_P2_0_1_2, _lh_car_LH_P2_1_1_2) -> 
          _lh_car_LH_P2_0_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d7 _lh_car_arg1_1 =
  (match _lh_car_arg1_1 with
    | `Cons(_lh_car_Cons_0_1) -> 
      (match _lh_car_Cons_0_1 with
        | `LH_P2(_lh_car_LH_P2_0_1, _lh_car_LH_P2_1_1) -> 
          _lh_car_LH_P2_0_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d8 _lh_car_arg1_3 =
  (match _lh_car_arg1_3 with
    | `Cons(_lh_car_Cons_0_3) -> 
      (match _lh_car_Cons_0_3 with
        | `LH_P2(_lh_car_LH_P2_0_3, _lh_car_LH_P2_1_3) -> 
          _lh_car_LH_P2_0_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d9 _lh_car_arg1_1_1 =
  (match _lh_car_arg1_1_1 with
    | `Cons(_lh_car_Cons_0_1_1) -> 
      (match _lh_car_Cons_0_1_1 with
        | `LH_P2(_lh_car_LH_P2_0_1_1, _lh_car_LH_P2_1_1_1) -> 
          _lh_car_LH_P2_0_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d0 _lh_cdr_arg1_7 =
  (match _lh_cdr_arg1_7 with
    | `Cons(_lh_cdr_Cons_0_7) -> 
      (match _lh_cdr_Cons_0_7 with
        | `LH_P2(_lh_cdr_LH_P2_0_7, _lh_cdr_LH_P2_1_7) -> 
          _lh_cdr_LH_P2_1_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1 _lh_cdr_arg1_1_1 =
  (match _lh_cdr_arg1_1_1 with
    | `Cons(_lh_cdr_Cons_0_1_1) -> 
      (match _lh_cdr_Cons_0_1_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_1, _lh_cdr_LH_P2_1_1_1) -> 
          _lh_cdr_LH_P2_1_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d0 _lh_cdr_arg1_1 =
  (match _lh_cdr_arg1_1 with
    | `Cons(_lh_cdr_Cons_0_1) -> 
      (match _lh_cdr_Cons_0_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_1, _lh_cdr_LH_P2_1_1) -> 
          _lh_cdr_LH_P2_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d1 _lh_cdr_arg1_9 =
  (match _lh_cdr_arg1_9 with
    | `Cons(_lh_cdr_Cons_0_9) -> 
      (match _lh_cdr_Cons_0_9 with
        | `LH_P2(_lh_cdr_LH_P2_0_9, _lh_cdr_LH_P2_1_9) -> 
          _lh_cdr_LH_P2_1_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d2 _lh_cdr_arg1_1_3 =
  (match _lh_cdr_arg1_1_3 with
    | `Cons(_lh_cdr_Cons_0_1_3) -> 
      (match _lh_cdr_Cons_0_1_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_3, _lh_cdr_LH_P2_1_1_3) -> 
          _lh_cdr_LH_P2_1_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d2 _lh_cdr_arg1_4 =
  (match _lh_cdr_arg1_4 with
    | `Cons(_lh_cdr_Cons_0_4) -> 
      (match _lh_cdr_Cons_0_4 with
        | `LH_P2(_lh_cdr_LH_P2_0_4, _lh_cdr_LH_P2_1_4) -> 
          _lh_cdr_LH_P2_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d3 _lh_cdr_arg1_1_2 =
  (match _lh_cdr_arg1_1_2 with
    | `Cons(_lh_cdr_Cons_0_1_2) -> 
      (match _lh_cdr_Cons_0_1_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_2, _lh_cdr_LH_P2_1_1_2) -> 
          _lh_cdr_LH_P2_1_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d4 _lh_cdr_arg1_2 =
  (match _lh_cdr_arg1_2 with
    | `Cons(_lh_cdr_Cons_0_2) -> 
      (match _lh_cdr_Cons_0_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_2, _lh_cdr_LH_P2_1_2) -> 
          _lh_cdr_LH_P2_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d5 _lh_cdr_arg1_5 =
  (match _lh_cdr_arg1_5 with
    | `Cons(_lh_cdr_Cons_0_5) -> 
      (match _lh_cdr_Cons_0_5 with
        | `LH_P2(_lh_cdr_LH_P2_0_5, _lh_cdr_LH_P2_1_5) -> 
          _lh_cdr_LH_P2_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d6 _lh_cdr_arg1_3 =
  (match _lh_cdr_arg1_3 with
    | `Cons(_lh_cdr_Cons_0_3) -> 
      (match _lh_cdr_Cons_0_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_3, _lh_cdr_LH_P2_1_3) -> 
          _lh_cdr_LH_P2_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d7 _lh_cdr_arg1_8 =
  (match _lh_cdr_arg1_8 with
    | `Cons(_lh_cdr_Cons_0_8) -> 
      (match _lh_cdr_Cons_0_8 with
        | `LH_P2(_lh_cdr_LH_P2_0_8, _lh_cdr_LH_P2_1_8) -> 
          _lh_cdr_LH_P2_1_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d8 _lh_cdr_arg1_6 =
  (match _lh_cdr_arg1_6 with
    | `Cons(_lh_cdr_Cons_0_6) -> 
      (match _lh_cdr_Cons_0_6 with
        | `LH_P2(_lh_cdr_LH_P2_0_6, _lh_cdr_LH_P2_1_6) -> 
          _lh_cdr_LH_P2_1_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d9 _lh_cdr_arg1_1_0 =
  (match _lh_cdr_arg1_1_0 with
    | `Cons(_lh_cdr_Cons_0_1_0) -> 
      (match _lh_cdr_Cons_0_1_0 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_0, _lh_cdr_LH_P2_1_1_0) -> 
          _lh_cdr_LH_P2_1_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec getLUT_d0 _lh_getLUT_arg1_1 =
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
                      (getLUT_d0 (`LH_P2(_lh_getLUT_LH_P2_0_2, _lh_getLUT_LH_P3_0_1)))
                    else
                      (getLUT_d0 (`LH_P2(_lh_getLUT_LH_P2_0_2, _lh_getLUT_LH_P3_2_1)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0 _lh_lispmember_arg1_1 =
  (match _lh_lispmember_arg1_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_2) -> 
      (match _lh_lispmember_LH_P2_1_2 with
        | `Cons(_lh_lispmember_Cons_0_1) -> 
          (match _lh_lispmember_Cons_0_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3, _lh_lispmember_LH_P2_1_3) -> 
              (if (_lh_lispmember_LH_P2_0_2 = _lh_lispmember_LH_P2_0_3) then
                true
              else
                (lispmember_d0 (`LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1 _lh_lispmember_arg1_5 =
  (match _lh_lispmember_arg1_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0, _lh_lispmember_LH_P2_1_1_0) -> 
      (match _lh_lispmember_LH_P2_1_1_0 with
        | `Cons(_lh_lispmember_Cons_0_5) -> 
          (match _lh_lispmember_Cons_0_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1, _lh_lispmember_LH_P2_1_1_1) -> 
              (if (_lh_lispmember_LH_P2_0_1_0 = _lh_lispmember_LH_P2_0_1_1) then
                true
              else
                (lispmember_d1 (`LH_P2(_lh_lispmember_LH_P2_0_1_0, _lh_lispmember_LH_P2_1_1_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2 _lh_lispmember_arg1_2 =
  (match _lh_lispmember_arg1_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_4) -> 
      (match _lh_lispmember_LH_P2_1_4 with
        | `Cons(_lh_lispmember_Cons_0_2) -> 
          (match _lh_lispmember_Cons_0_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5, _lh_lispmember_LH_P2_1_5) -> 
              (if (_lh_lispmember_LH_P2_0_4 = _lh_lispmember_LH_P2_0_5) then
                true
              else
                (lispmember_d2 (`LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3 _lh_lispmember_arg1_4 =
  (match _lh_lispmember_arg1_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_8) -> 
      (match _lh_lispmember_LH_P2_1_8 with
        | `Cons(_lh_lispmember_Cons_0_4) -> 
          (match _lh_lispmember_Cons_0_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9, _lh_lispmember_LH_P2_1_9) -> 
              (if (_lh_lispmember_LH_P2_0_8 = _lh_lispmember_LH_P2_0_9) then
                true
              else
                (lispmember_d3 (`LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4 _lh_lispmember_arg1_3 =
  (match _lh_lispmember_arg1_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_6) -> 
      (match _lh_lispmember_LH_P2_1_6 with
        | `Cons(_lh_lispmember_Cons_0_3) -> 
          (match _lh_lispmember_Cons_0_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7, _lh_lispmember_LH_P2_1_7) -> 
              (if (_lh_lispmember_LH_P2_0_6 = _lh_lispmember_LH_P2_0_7) then
                true
              else
                (lispmember_d4 (`LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec mappend_d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend_d0 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend_d1 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d2 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend_d2 t_2_5) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_d3 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend_d3 t_2_4) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d4 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend_d4 t_2_6) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec report_d0 _lh_report_arg1_1 =
  (match _lh_report_arg1_1 with
    | true -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
    | false -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d0 _lh_restOfToken_arg1_3 =
  (match _lh_restOfToken_arg1_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_C_1_3) -> 
      (if (((_lh_restOfToken_LH_C_0_3 = '(') || (_lh_restOfToken_LH_C_0_3 = ')')) || (_lh_restOfToken_LH_C_0_3 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_C_1_3))))
      else
        (let rec _lh_matchIdent_4_7 = (restOfToken_d0 _lh_restOfToken_LH_C_1_3) in
          (match _lh_matchIdent_4_7 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_3, _lh_restOfToken_LH_P2_1_3) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_P2_0_3)), _lh_restOfToken_LH_P2_1_3))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d1 _lh_restOfToken_arg1_2 =
  (match _lh_restOfToken_arg1_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_C_1_2) -> 
      (if (((_lh_restOfToken_LH_C_0_2 = '(') || (_lh_restOfToken_LH_C_0_2 = ')')) || (_lh_restOfToken_LH_C_0_2 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_C_1_2))))
      else
        (let rec _lh_matchIdent_2_4 = (restOfToken_d1 _lh_restOfToken_LH_C_1_2) in
          (match _lh_matchIdent_2_4 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_2, _lh_restOfToken_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_P2_0_2)), _lh_restOfToken_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d2 _lh_restOfToken_arg1_1 =
  (match _lh_restOfToken_arg1_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_C_1_1) -> 
      (if (((_lh_restOfToken_LH_C_0_1 = '(') || (_lh_restOfToken_LH_C_0_1 = ')')) || (_lh_restOfToken_LH_C_0_1 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_1_7 = (restOfToken_d2 _lh_restOfToken_LH_C_1_1) in
          (match _lh_matchIdent_1_7 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_1, _lh_restOfToken_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_P2_0_1)), _lh_restOfToken_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec rules_d0 _lh_rules_arg1_1 =
  (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('g', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('p', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('-', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('c', (`LH_C('-', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('1', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('w', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('1', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('2', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('3', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('4', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('5', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('6', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('m', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec sublist_d0 _lh_sublist_arg1_3 =
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
                  (let rec _lh_matchIdent_5_2 = (sublist_d0 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_2 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_8, _lh_sublist_LH_P2_1_1_8) -> 
                        (let rec _lh_matchIdent_5_3 = (sublist_d0 _lh_sublist_LH_P2_0_1_8) in
                          (match _lh_matchIdent_5_3 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1_9, _lh_sublist_LH_P2_1_1_9) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1_9, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_1_8, _lh_sublist_LH_P2_1_1_9))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_5_4 = (sublist_d0 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_0, _lh_sublist_LH_P2_1_2_0) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2_0, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_0))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_7 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_6, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_5_5 = (sublist_d0 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_5 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_1, _lh_sublist_LH_P2_1_2_1) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2_1, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_1))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_5_6 = (sublist_d0 _lh_sublist_LH_C_1_6) in
                (match _lh_matchIdent_5_6 with
                  | `LH_P2(_lh_sublist_LH_P2_0_2_2, _lh_sublist_LH_P2_1_2_2) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_2_2, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_2))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_5_7 = (sublist_d0 _lh_sublist_LH_C_1_6) in
            (match _lh_matchIdent_5_7 with
              | `LH_P2(_lh_sublist_LH_P2_0_2_3, _lh_sublist_LH_P2_1_2_3) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_2_3, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_3))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist_d1 _lh_sublist_arg1_1 =
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
                  (let rec _lh_matchIdent_2_5 = (sublist_d1 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_2_5 with
                      | `LH_P2(_lh_sublist_LH_P2_0_6, _lh_sublist_LH_P2_1_6) -> 
                        (let rec _lh_matchIdent_2_6 = (sublist_d1 _lh_sublist_LH_P2_0_6) in
                          (match _lh_matchIdent_2_6 with
                            | `LH_P2(_lh_sublist_LH_P2_0_7, _lh_sublist_LH_P2_1_7) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_7, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_6, _lh_sublist_LH_P2_1_7))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_2_7 = (sublist_d1 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_2_7 with
                      | `LH_P2(_lh_sublist_LH_P2_0_8, _lh_sublist_LH_P2_1_8) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_8, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_8))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_3 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_2, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_2_8 = (sublist_d1 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_2_8 with
                      | `LH_P2(_lh_sublist_LH_P2_0_9, _lh_sublist_LH_P2_1_9) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_9, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_9))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_2_9 = (sublist_d1 _lh_sublist_LH_C_1_2) in
                (match _lh_matchIdent_2_9 with
                  | `LH_P2(_lh_sublist_LH_P2_0_1_0, _lh_sublist_LH_P2_1_1_0) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_1_0, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_1_0))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_3_0 = (sublist_d1 _lh_sublist_LH_C_1_2) in
            (match _lh_matchIdent_3_0 with
              | `LH_P2(_lh_sublist_LH_P2_0_1_1, _lh_sublist_LH_P2_1_1_1) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_1_1, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_1_1))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist_d2 _lh_sublist_arg1_2 =
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
                  (let rec _lh_matchIdent_4_1 = (sublist_d2 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_4_1 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_2, _lh_sublist_LH_P2_1_1_2) -> 
                        (let rec _lh_matchIdent_4_2 = (sublist_d2 _lh_sublist_LH_P2_0_1_2) in
                          (match _lh_matchIdent_4_2 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1_3, _lh_sublist_LH_P2_1_1_3) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1_3, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_1_2, _lh_sublist_LH_P2_1_1_3))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_4_3 = (sublist_d2 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_4_3 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_4, _lh_sublist_LH_P2_1_1_4) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_1_4, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_4))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_5 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_4, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_4_4 = (sublist_d2 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_4_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_5, _lh_sublist_LH_P2_1_1_5) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_1_5, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_5))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_4_5 = (sublist_d2 _lh_sublist_LH_C_1_4) in
                (match _lh_matchIdent_4_5 with
                  | `LH_P2(_lh_sublist_LH_P2_0_1_6, _lh_sublist_LH_P2_1_1_6) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_1_6, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_6))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_4_6 = (sublist_d2 _lh_sublist_LH_C_1_4) in
            (match _lh_matchIdent_4_6 with
              | `LH_P2(_lh_sublist_LH_P2_0_1_7, _lh_sublist_LH_P2_1_1_7) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_1_7, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_7))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec tv_d0 _lh_tv_arg1_2 =
  (match _lh_tv_arg1_2 with
    | `Atom(_lh_tv_Atom_0_2) -> 
      _lh_tv_Atom_0_2
    | _ -> 
      (failwith "error"));;
let rec tv_d1 _lh_tv_arg1_1 =
  (match _lh_tv_arg1_1 with
    | `Atom(_lh_tv_Atom_0_1) -> 
      _lh_tv_Atom_0_1
    | _ -> 
      (failwith "error"));;
let rec tv_d2 _lh_tv_arg1_3 =
  (match _lh_tv_arg1_3 with
    | `Atom(_lh_tv_Atom_0_3) -> 
      _lh_tv_Atom_0_3
    | _ -> 
      (failwith "error"));;
let rec addlemmalst_d0 _lh_addlemmalst_arg1_1 _lh_addlemmalst_arg2_1 =
  (match _lh_addlemmalst_arg1_1 with
    | `LH_N -> 
      _lh_addlemmalst_arg2_1
    | `LH_C(_lh_addlemmalst_LH_C_0_1, _lh_addlemmalst_LH_C_1_1) -> 
      ((addlemmalst_d0 _lh_addlemmalst_LH_C_1_1) ((addlemma_d0 _lh_addlemmalst_LH_C_0_1) _lh_addlemmalst_arg2_1))
    | _ -> 
      (failwith "error"))
and addlemma_d0 _lh_addlemma_arg1_1 _lh_addlemma_arg2_1 =
  (match _lh_addlemma_arg1_1 with
    | `Nil -> 
      _lh_addlemma_arg2_1
    | `Atom(_lh_addlemma_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_addlemma_Cons_0_1) -> 
      (match _lh_addlemma_Cons_0_1 with
        | `LH_P2(_lh_addlemma_LH_P2_0_1, _lh_addlemma_LH_P2_1_1) -> 
          (let rec z_1 = (car_d0 _lh_addlemma_LH_P2_1_1) in
            (if (((tv_d0 _lh_addlemma_LH_P2_0_1) = (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_N)))))))))))) && (not (atom_d0 z_1))) then
              (addtoLUT_d0 (`LH_P3((tv_d1 (car_d1 z_1)), (`Cons((`LH_P2(_lh_addlemma_LH_P2_0_1, _lh_addlemma_LH_P2_1_1)))), _lh_addlemma_arg2_1)))
            else
              (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst_d0 _lh_applysubstlst_arg1_2 _lh_applysubstlst_arg2_2 =
  (match _lh_applysubstlst_arg2_2 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_2) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_2) -> 
      (match _lh_applysubstlst_Cons_0_2 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_2, _lh_applysubstlst_LH_P2_1_2) -> 
          (`Cons((`LH_P2(((applysubst_d0 _lh_applysubstlst_arg1_2) _lh_applysubstlst_LH_P2_0_2), ((applysubstlst_d0 _lh_applysubstlst_arg1_2) _lh_applysubstlst_LH_P2_1_2)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst_d1 _lh_applysubstlst_arg1_1 _lh_applysubstlst_arg2_1 =
  (match _lh_applysubstlst_arg2_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_1) -> 
      (match _lh_applysubstlst_Cons_0_1 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_1, _lh_applysubstlst_LH_P2_1_1) -> 
          (`Cons((`LH_P2(((applysubst_d1 _lh_applysubstlst_arg1_1) _lh_applysubstlst_LH_P2_0_1), ((applysubstlst_d1 _lh_applysubstlst_arg1_1) _lh_applysubstlst_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst_d0 _lh_applysubst_arg1_1 _lh_applysubst_arg2_1 =
  (match _lh_applysubst_arg2_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_1) -> 
      (let rec _lh_matchIdent_2_3 = (assoc_d0 (`LH_P2((`Atom(_lh_applysubst_Atom_0_1)), _lh_applysubst_arg1_1))) in
        (match _lh_matchIdent_2_3 with
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
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_3, ((applysubstlst_d0 _lh_applysubst_arg1_1) _lh_applysubst_LH_P2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst_d1 _lh_applysubst_arg1_2 _lh_applysubst_arg2_2 =
  (match _lh_applysubst_arg2_2 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_2) -> 
      (let rec _lh_matchIdent_3_8 = (assoc_d2 (`LH_P2((`Atom(_lh_applysubst_Atom_0_2)), _lh_applysubst_arg1_2))) in
        (match _lh_matchIdent_3_8 with
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
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_5, ((applysubstlst_d1 _lh_applysubst_arg1_2) _lh_applysubst_LH_P2_1_5)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and caddr_d0 _lh_caddr_arg1_2 =
  ((fun _lh_funcomp_x_1_0 -> 
    ((fun _lh_funcomp_x_1_1 -> 
      (car_d2 (cdr_d0 _lh_funcomp_x_1_1))) (cdr_d1 _lh_funcomp_x_1_0))) _lh_caddr_arg1_2)
and caddr_d1 _lh_caddr_arg1_3 =
  ((fun _lh_funcomp_x_1_3 -> 
    ((fun _lh_funcomp_x_1_4 -> 
      (car_d8 (cdr_d7 _lh_funcomp_x_1_4))) (cdr_d8 _lh_funcomp_x_1_3))) _lh_caddr_arg1_3)
and caddr_d2 _lh_caddr_arg1_1 =
  ((fun _lh_funcomp_x_7 -> 
    ((fun _lh_funcomp_x_8 -> 
      (car_d9 (cdr_d9 _lh_funcomp_x_8))) (cdr_d1_d0 _lh_funcomp_x_7))) _lh_caddr_arg1_1)
and cadr_d0 _lh_cadr_arg1_2 =
  ((fun _lh_funcomp_x_9 -> 
    (car_d3 (cdr_d2 _lh_funcomp_x_9))) _lh_cadr_arg1_2)
and cadr_d1 _lh_cadr_arg1_3 =
  ((fun _lh_funcomp_x_1_2 -> 
    (car_d1_d0 (cdr_d1_d1 _lh_funcomp_x_1_2))) _lh_cadr_arg1_3)
and cadr_d2 _lh_cadr_arg1_1 =
  ((fun _lh_funcomp_x_6 -> 
    (car_d1_d1 (cdr_d1_d2 _lh_funcomp_x_6))) _lh_cadr_arg1_1)
and falsep_d0 _lh_falsep_arg1_2 =
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
                                  (lispmember_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                            | _ -> 
                              (lispmember_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                        | _ -> 
                          (lispmember_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                    | _ -> 
                      (lispmember_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                | _ -> 
                  (lispmember_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
            | _ -> 
              (lispmember_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
        | _ -> 
          (lispmember_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
    | _ -> 
      (failwith "error"))
and falsep_d1 _lh_falsep_arg1_1 =
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
                                  (lispmember_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                | _ -> 
                  (lispmember_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
            | _ -> 
              (lispmember_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
        | _ -> 
          (lispmember_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"))
and getToken_d0 _lh_getToken_arg1_1 =
  (match _lh_getToken_arg1_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_getToken_LH_C_0_1, _lh_getToken_LH_C_1_1) -> 
      (if (_lh_getToken_LH_C_0_1 = ' ') then
        (getToken_d0 _lh_getToken_LH_C_1_1)
      else
        (if ((_lh_getToken_LH_C_0_1 = '(') || (_lh_getToken_LH_C_0_1 = ')')) then
          (`LH_P2((`LH_C(_lh_getToken_LH_C_0_1, (`LH_N))), _lh_getToken_LH_C_1_1))
        else
          (let rec _lh_matchIdent_3_2 = (restOfToken_d0 _lh_getToken_LH_C_1_1) in
            (match _lh_matchIdent_3_2 with
              | `LH_P2(_lh_getToken_LH_P2_0_1, _lh_getToken_LH_P2_1_1) -> 
                (`LH_P2((`LH_C(_lh_getToken_LH_C_0_1, _lh_getToken_LH_P2_0_1)), _lh_getToken_LH_P2_1_1))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken_d1 _lh_getToken_arg1_3 =
  (match _lh_getToken_arg1_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_getToken_LH_C_0_3, _lh_getToken_LH_C_1_3) -> 
      (if (_lh_getToken_LH_C_0_3 = ' ') then
        (getToken_d1 _lh_getToken_LH_C_1_3)
      else
        (if ((_lh_getToken_LH_C_0_3 = '(') || (_lh_getToken_LH_C_0_3 = ')')) then
          (`LH_P2((`LH_C(_lh_getToken_LH_C_0_3, (`LH_N))), _lh_getToken_LH_C_1_3))
        else
          (let rec _lh_matchIdent_3_7 = (restOfToken_d1 _lh_getToken_LH_C_1_3) in
            (match _lh_matchIdent_3_7 with
              | `LH_P2(_lh_getToken_LH_P2_0_3, _lh_getToken_LH_P2_1_3) -> 
                (`LH_P2((`LH_C(_lh_getToken_LH_C_0_3, _lh_getToken_LH_P2_0_3)), _lh_getToken_LH_P2_1_3))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken_d2 _lh_getToken_arg1_2 =
  (match _lh_getToken_arg1_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_getToken_LH_C_0_2, _lh_getToken_LH_C_1_2) -> 
      (if (_lh_getToken_LH_C_0_2 = ' ') then
        (getToken_d2 _lh_getToken_LH_C_1_2)
      else
        (if ((_lh_getToken_LH_C_0_2 = '(') || (_lh_getToken_LH_C_0_2 = ')')) then
          (`LH_P2((`LH_C(_lh_getToken_LH_C_0_2, (`LH_N))), _lh_getToken_LH_C_1_2))
        else
          (let rec _lh_matchIdent_3_6 = (restOfToken_d2 _lh_getToken_LH_C_1_2) in
            (match _lh_matchIdent_3_6 with
              | `LH_P2(_lh_getToken_LH_P2_0_2, _lh_getToken_LH_P2_1_2) -> 
                (`LH_P2((`LH_C(_lh_getToken_LH_C_0_2, _lh_getToken_LH_P2_0_2)), _lh_getToken_LH_P2_1_2))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and lemmas_d0 _lh_lemmas_arg1_1 =
  ((addlemmalst_d0 (makelemmas_d0 (rules_d0 0))) (`Empty))
and makelemmas_d0 _lh_makelemmas_arg1_1 =
  (match _lh_makelemmas_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_makelemmas_LH_C_0_1, _lh_makelemmas_LH_C_1_1) -> 
      (`LH_C((mkLisplist_d0 (strToToken_d0 _lh_makelemmas_LH_C_0_1)), (makelemmas_d0 _lh_makelemmas_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and mkLisplist_d0 _lh_mkLisplist_arg1_3 =
  (match _lh_mkLisplist_arg1_3 with
    | `LH_C(_lh_mkLisplist_LH_C_0_6, _lh_mkLisplist_LH_C_1_6) -> 
      (match _lh_mkLisplist_LH_C_0_6 with
        | `LH_C(_lh_mkLisplist_LH_C_0_7, _lh_mkLisplist_LH_C_1_7) -> 
          (match _lh_mkLisplist_LH_C_0_7 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_7 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_3_4 = (sublist_d0 _lh_mkLisplist_LH_C_1_6) in
                    (match _lh_matchIdent_3_4 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_3, _lh_mkLisplist_LH_P2_1_3) -> 
                        (let rec _lh_matchIdent_3_5 = _lh_mkLisplist_LH_P2_0_3 in
                          (match _lh_matchIdent_3_5 with
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
and mkLisplist_d1 _lh_mkLisplist_arg1_2 =
  (match _lh_mkLisplist_arg1_2 with
    | `LH_C(_lh_mkLisplist_LH_C_0_4, _lh_mkLisplist_LH_C_1_4) -> 
      (match _lh_mkLisplist_LH_C_0_4 with
        | `LH_C(_lh_mkLisplist_LH_C_0_5, _lh_mkLisplist_LH_C_1_5) -> 
          (match _lh_mkLisplist_LH_C_0_5 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_5 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_2_1 = (sublist_d1 _lh_mkLisplist_LH_C_1_4) in
                    (match _lh_matchIdent_2_1 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_2, _lh_mkLisplist_LH_P2_1_2) -> 
                        (let rec _lh_matchIdent_2_2 = _lh_mkLisplist_LH_P2_0_2 in
                          (match _lh_matchIdent_2_2 with
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
and mkLisplist_d2 _lh_mkLisplist_arg1_1 =
  (match _lh_mkLisplist_arg1_1 with
    | `LH_C(_lh_mkLisplist_LH_C_0_2, _lh_mkLisplist_LH_C_1_2) -> 
      (match _lh_mkLisplist_LH_C_0_2 with
        | `LH_C(_lh_mkLisplist_LH_C_0_3, _lh_mkLisplist_LH_C_1_3) -> 
          (match _lh_mkLisplist_LH_C_0_3 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_3 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1_8 = (sublist_d2 _lh_mkLisplist_LH_C_1_2) in
                    (match _lh_matchIdent_1_8 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_1, _lh_mkLisplist_LH_P2_1_1) -> 
                        (let rec _lh_matchIdent_1_9 = _lh_mkLisplist_LH_P2_0_1 in
                          (match _lh_matchIdent_1_9 with
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
and onewayunify1lst_d0 _lh_onewayunify1lst_arg1_1 _lh_onewayunify1lst_arg2_1 _lh_onewayunify1lst_arg3_1 =
  (match _lh_onewayunify1lst_arg1_1 with
    | `Nil -> 
      (`LH_P2(true, _lh_onewayunify1lst_arg3_1))
    | _ -> 
      (let rec _lh_matchIdent_4_0 = (((onewayunify1_d0 (car_d6 _lh_onewayunify1lst_arg1_1)) (car_d7 _lh_onewayunify1lst_arg2_1)) _lh_onewayunify1lst_arg3_1) in
        (match _lh_matchIdent_4_0 with
          | `LH_P2(_lh_onewayunify1lst_LH_P2_0_1, _lh_onewayunify1lst_LH_P2_1_1) -> 
            (if _lh_onewayunify1lst_LH_P2_0_1 then
              (((onewayunify1lst_d0 (cdr_d5 _lh_onewayunify1lst_arg1_1)) (cdr_d6 _lh_onewayunify1lst_arg2_1)) _lh_onewayunify1lst_LH_P2_1_1)
            else
              (`LH_P2(false, _lh_onewayunify1lst_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))))
and onewayunify1_d0 _lh_onewayunify1_arg1_1 _lh_onewayunify1_arg2_1 _lh_onewayunify1_arg3_1 =
  (if (atom_d1 _lh_onewayunify1_arg2_1) then
    (let rec _lh_matchIdent_3_9 = (assoc_d1 (`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg3_1))) in
      (match _lh_matchIdent_3_9 with
        | `Cons(_lh_onewayunify1_Cons_0_1) -> 
          (match _lh_onewayunify1_Cons_0_1 with
            | `LH_P2(_lh_onewayunify1_LH_P2_0_1, _lh_onewayunify1_LH_P2_1_1) -> 
              (`LH_P2((_lh_onewayunify1_arg1_1 = _lh_onewayunify1_LH_P2_1_1), _lh_onewayunify1_arg3_1))
            | _ -> 
              (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg1_1)))), _lh_onewayunify1_arg3_1)))))))
        | _ -> 
          (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg1_1)))), _lh_onewayunify1_arg3_1))))))))
  else
    (if (atom_d2 _lh_onewayunify1_arg1_1) then
      (`LH_P2(false, _lh_onewayunify1_arg3_1))
    else
      (if ((car_d4 _lh_onewayunify1_arg1_1) = (car_d5 _lh_onewayunify1_arg2_1)) then
        (((onewayunify1lst_d0 (cdr_d3 _lh_onewayunify1_arg1_1)) (cdr_d4 _lh_onewayunify1_arg2_1)) _lh_onewayunify1_arg3_1)
      else
        (`LH_P2(false, _lh_onewayunify1_arg3_1)))))
and onewayunify_d0 _lh_onewayunify_arg1_1 _lh_onewayunify_arg2_1 =
  (((onewayunify1_d0 _lh_onewayunify_arg1_1) _lh_onewayunify_arg2_1) (`Nil))
and rewriteargs_d0 _lh_rewriteargs_arg1_1 _lh_rewriteargs_arg2_1 =
  (match _lh_rewriteargs_arg1_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewriteargs_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_rewriteargs_Cons_0_1) -> 
      (match _lh_rewriteargs_Cons_0_1 with
        | `LH_P2(_lh_rewriteargs_LH_P2_0_1, _lh_rewriteargs_LH_P2_1_1) -> 
          (`Cons((`LH_P2(((rewrite_d0 _lh_rewriteargs_LH_P2_0_1) _lh_rewriteargs_arg2_1), ((rewriteargs_d0 _lh_rewriteargs_LH_P2_1_1) _lh_rewriteargs_arg2_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewritewithlemmas_d0 _lh_rewritewithlemmas_arg1_1 _lh_rewritewithlemmas_arg2_1 _lh_rewritewithlemmas_arg3_1 =
  (match _lh_rewritewithlemmas_arg2_1 with
    | `LH_N -> 
      _lh_rewritewithlemmas_arg1_1
    | `LH_C(_lh_rewritewithlemmas_LH_C_0_1, _lh_rewritewithlemmas_LH_C_1_1) -> 
      (let rec _lh_matchIdent_4_9 = ((onewayunify_d0 _lh_rewritewithlemmas_arg1_1) (cadr_d0 _lh_rewritewithlemmas_LH_C_0_1)) in
        (match _lh_matchIdent_4_9 with
          | `LH_P2(_lh_rewritewithlemmas_LH_P2_0_1, _lh_rewritewithlemmas_LH_P2_1_1) -> 
            (if _lh_rewritewithlemmas_LH_P2_0_1 then
              ((rewrite_d0 ((applysubst_d0 _lh_rewritewithlemmas_LH_P2_1_1) (caddr_d0 _lh_rewritewithlemmas_LH_C_0_1))) _lh_rewritewithlemmas_arg3_1)
            else
              (((rewritewithlemmas_d0 _lh_rewritewithlemmas_arg1_1) _lh_rewritewithlemmas_LH_C_1_1) _lh_rewritewithlemmas_arg3_1))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and rewrite_d0 _lh_rewrite_arg1_1 _lh_rewrite_arg2_1 =
  (match _lh_rewrite_arg1_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewrite_Atom_0_1) -> 
      (`Atom(_lh_rewrite_Atom_0_1))
    | `Cons(_lh_rewrite_Cons_0_1) -> 
      (match _lh_rewrite_Cons_0_1 with
        | `LH_P2(_lh_rewrite_LH_P2_0_1, _lh_rewrite_LH_P2_1_1) -> 
          (((rewritewithlemmas_d0 (`Cons((`LH_P2(_lh_rewrite_LH_P2_0_1, ((rewriteargs_d0 _lh_rewrite_LH_P2_1_1) _lh_rewrite_arg2_1)))))) (getLUT_d0 (`LH_P2((tv_d2 _lh_rewrite_LH_P2_0_1), _lh_rewrite_arg2_1)))) _lh_rewrite_arg2_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and statement_d0 _lh_statement_arg1_1 =
  (mkLisplist_d1 (strToToken_d1 (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and strToToken_d0 _lh_strToToken_arg1_3 =
  (match _lh_strToToken_arg1_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_5_1 = (getToken_d0 _lh_strToToken_arg1_3) in
        (match _lh_matchIdent_5_1 with
          | `LH_P2(_lh_strToToken_LH_P2_0_3, _lh_strToToken_LH_P2_1_3) -> 
            (`LH_C(_lh_strToToken_LH_P2_0_3, (strToToken_d0 _lh_strToToken_LH_P2_1_3)))
          | _ -> 
            (failwith "error"))))
and strToToken_d1 _lh_strToToken_arg1_2 =
  (match _lh_strToToken_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_5_0 = (getToken_d1 _lh_strToToken_arg1_2) in
        (match _lh_matchIdent_5_0 with
          | `LH_P2(_lh_strToToken_LH_P2_0_2, _lh_strToToken_LH_P2_1_2) -> 
            (`LH_C(_lh_strToToken_LH_P2_0_2, (strToToken_d1 _lh_strToToken_LH_P2_1_2)))
          | _ -> 
            (failwith "error"))))
and strToToken_d2 _lh_strToToken_arg1_1 =
  (match _lh_strToToken_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_2_0 = (getToken_d2 _lh_strToToken_arg1_1) in
        (match _lh_matchIdent_2_0 with
          | `LH_P2(_lh_strToToken_LH_P2_0_1, _lh_strToToken_LH_P2_1_1) -> 
            (`LH_C(_lh_strToToken_LH_P2_0_1, (strToToken_d2 _lh_strToToken_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))))
and subterm_d0 _lh_subterm_arg1_1 =
  (let rec c_1 = ((mappend_d0 (`LH_C('c', (`LH_N)))) (string_of_int _lh_subterm_arg1_1)) in
    (let rec str_1 = ((mappend_d1 ((mappend_d2 ((mappend_d3 ((mappend_d4 (`LH_C('(', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_1)) (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_1)) (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('[', (`LH_C(']', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('w', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (mkLisplist_d2 (strToToken_d2 str_1))))
and tautologyp_d0 _lh_tautologyp_arg1_1 =
  (match _lh_tautologyp_arg1_1 with
    | `LH_P3(_lh_tautologyp_LH_P3_0_1, _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1) -> 
      (match _lh_tautologyp_LH_P3_0_1 with
        | `Nil -> 
          false
        | `Atom(_lh_tautologyp_Atom_0_2) -> 
          (truep_d0 (`LH_P2((`Atom(_lh_tautologyp_Atom_0_2)), _lh_tautologyp_LH_P3_1_1)))
        | `Cons(_lh_tautologyp_Cons_0_1) -> 
          (match _lh_tautologyp_Cons_0_1 with
            | `LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1) -> 
              (if (truep_d1 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1)))), _lh_tautologyp_LH_P3_1_1))) then
                true
              else
                (if (falsep_d0 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1)))), _lh_tautologyp_LH_P3_2_1))) then
                  false
                else
                  (let rec _lh_matchIdent_3_3 = _lh_tautologyp_LH_P2_0_1 in
                    (match _lh_matchIdent_3_3 with
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
                                            (if (truep_d2 (`LH_P2((car_d1_d2 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1))) then
                                              (tautologyp_d0 (`LH_P3((cadr_d1 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1)))
                                            else
                                              (if (falsep_d1 (`LH_P2((car_d1_d3 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_2_1))) then
                                                (tautologyp_d0 (`LH_P3((caddr_d1 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1)))
                                              else
                                                ((tautologyp_d0 (`LH_P3((cadr_d2 _lh_tautologyp_LH_P2_1_1), (`Cons((`LH_P2((car_d1_d4 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1)))), _lh_tautologyp_LH_P3_2_1))) && (tautologyp_d0 (`LH_P3((caddr_d2 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, (`Cons((`LH_P2((car_d1_d5 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_2_1))))))))))
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
and tautp_d0 _lh_tautp_arg1_1 =
  (tautologyp_d0 (`LH_P3(((rewrite_d0 _lh_tautp_arg1_1) (lemmas_d0 0)), (`Nil), (`Nil))))
and testBoyer2_nofib_d0 _lh_testBoyer2_nofib_arg1_1 =
  (report_d0 (testresult_d0 _lh_testBoyer2_nofib_arg1_1))
and testresult_d0 _lh_testresult_arg1_1 =
  (tautp_d0 (teststatement_d0 _lh_testresult_arg1_1))
and teststatement_d0 _lh_teststatement_arg1_1 =
  ((applysubst_d1 (subterm_d0 _lh_teststatement_arg1_1)) (statement_d0 0))
and truep_d0 _lh_truep_arg1_3 =
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
                                  (lispmember_d2 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                            | _ -> 
                              (lispmember_d2 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                        | _ -> 
                          (lispmember_d2 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                    | _ -> 
                      (lispmember_d2 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                | _ -> 
                  (lispmember_d2 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
            | _ -> 
              (lispmember_d2 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
        | _ -> 
          (lispmember_d2 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
    | _ -> 
      (failwith "error"))
and truep_d1 _lh_truep_arg1_2 =
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
                                  (lispmember_d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                            | _ -> 
                              (lispmember_d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                        | _ -> 
                          (lispmember_d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                    | _ -> 
                      (lispmember_d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                | _ -> 
                  (lispmember_d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
            | _ -> 
              (lispmember_d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
        | _ -> 
          (lispmember_d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
    | _ -> 
      (failwith "error"))
and truep_d2 _lh_truep_arg1_1 =
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
                                  (lispmember_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                | _ -> 
                  (lispmember_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
            | _ -> 
              (lispmember_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
        | _ -> 
          (lispmember_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"));;

(* lumberhack *)
let rec addlemmalst_d0_d0 _lh_addlemmalst_arg1_0 _lh_addlemmalst_arg2_2 =
  (_lh_addlemmalst_arg1_0 _lh_addlemmalst_arg2_2);;
let rec addtoLUT_d0_d0 _lh_addtoLUT_arg1_0 =
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
                      (`Node((`LH_P3((addtoLUT_d0_d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_0, _lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P3_0_1))), (`LH_P2(_lh_addtoLUT_LH_P2_0_0, _lh_addtoLUT_LH_P2_1_0)), _lh_addtoLUT_LH_P3_2_1))))
                    else
                      (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_1, (`LH_P2(_lh_addtoLUT_LH_P2_0_0, _lh_addtoLUT_LH_P2_1_0)), (addtoLUT_d0_d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_0, _lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P3_2_1)))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc_d0_d0 _lh_assoc_arg1_0 =
  (match _lh_assoc_arg1_0 with
    | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
      (match _lh_assoc_LH_P2_1_0 with
        | `Cons(_lh_assoc_Cons_0_0) -> 
          (match _lh_assoc_Cons_0_0 with
            | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
              (let rec _lh_matchIdent_0 = _lh_assoc_LH_P2_0_1 in
                (match _lh_matchIdent_0 with
                  | `Cons(_lh_assoc_Cons_0_1) -> 
                    (match _lh_assoc_Cons_0_1 with
                      | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
                        (match _lh_assoc_LH_P2_0_2 with
                          | `Atom(_lh_assoc_Atom_0_0) -> 
                            (if (_lh_assoc_LH_P2_0_0 = (`Atom(_lh_assoc_Atom_0_0))) then
                              _lh_assoc_LH_P2_0_1
                            else
                              (assoc_d0_d0 (`LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_1))))
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
let rec assoc_d1_d0 _lh_assoc_arg1_2 =
  (match _lh_assoc_arg1_2 with
    | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
      (match _lh_assoc_LH_P2_1_6 with
        | `Cons(_lh_assoc_Cons_0_4) -> 
          (match _lh_assoc_Cons_0_4 with
            | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
              (let rec _lh_matchIdent_3_9 = _lh_assoc_LH_P2_0_7 in
                (match _lh_matchIdent_3_9 with
                  | `Cons(_lh_assoc_Cons_0_5) -> 
                    (match _lh_assoc_Cons_0_5 with
                      | `LH_P2(_lh_assoc_LH_P2_0_8, _lh_assoc_LH_P2_1_8) -> 
                        (match _lh_assoc_LH_P2_0_8 with
                          | `Atom(_lh_assoc_Atom_0_2) -> 
                            (if (_lh_assoc_LH_P2_0_6 = (`Atom(_lh_assoc_Atom_0_2))) then
                              _lh_assoc_LH_P2_0_7
                            else
                              (assoc_d1_d0 (`LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_7))))
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
let rec assoc_d2_d0 _lh_assoc_arg1_1 =
  (match _lh_assoc_arg1_1 with
    | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
      (match _lh_assoc_LH_P2_1_3 with
        | `Cons(_lh_assoc_Cons_0_2) -> 
          (match _lh_assoc_Cons_0_2 with
            | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
              (let rec _lh_matchIdent_2_8 = _lh_assoc_LH_P2_0_4 in
                (match _lh_matchIdent_2_8 with
                  | `Cons(_lh_assoc_Cons_0_3) -> 
                    (match _lh_assoc_Cons_0_3 with
                      | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
                        (match _lh_assoc_LH_P2_0_5 with
                          | `Atom(_lh_assoc_Atom_0_1) -> 
                            (if (_lh_assoc_LH_P2_0_3 = (`Atom(_lh_assoc_Atom_0_1))) then
                              _lh_assoc_LH_P2_0_4
                            else
                              (assoc_d2_d0 (`LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_4))))
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
let rec atom_d0_d0 _lh_atom_arg1_0 =
  (match _lh_atom_arg1_0 with
    | `Atom(_lh_atom_Atom_0_0) -> 
      true
    | _ -> 
      false);;
let rec atom_d1_d0 _lh_atom_arg1_1 =
  (match _lh_atom_arg1_1 with
    | `Atom(_lh_atom_Atom_0_1) -> 
      true
    | _ -> 
      false);;
let rec atom_d2_d0 _lh_atom_arg1_2 =
  (match _lh_atom_arg1_2 with
    | `Atom(_lh_atom_Atom_0_2) -> 
      true
    | _ -> 
      false);;
let rec car_d0_d0 _lh_car_arg1_9 =
  (match _lh_car_arg1_9 with
    | `Cons(_lh_car_Cons_0_9) -> 
      (match _lh_car_Cons_0_9 with
        | `LH_P2(_lh_car_LH_P2_0_9, _lh_car_LH_P2_1_9) -> 
          _lh_car_LH_P2_0_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d0 _lh_car_arg1_8 =
  (match _lh_car_arg1_8 with
    | `Cons(_lh_car_Cons_0_8) -> 
      (match _lh_car_Cons_0_8 with
        | `LH_P2(_lh_car_LH_P2_0_8, _lh_car_LH_P2_1_8) -> 
          _lh_car_LH_P2_0_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d0_d0 _lh_car_arg1_7 =
  (match _lh_car_arg1_7 with
    | `Cons(_lh_car_Cons_0_7) -> 
      (match _lh_car_Cons_0_7 with
        | `LH_P2(_lh_car_LH_P2_0_7, _lh_car_LH_P2_1_7) -> 
          _lh_car_LH_P2_0_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d1_d0 _lh_car_arg1_1_2 =
  (match _lh_car_arg1_1_2 with
    | `Cons(_lh_car_Cons_0_1_2) -> 
      (match _lh_car_Cons_0_1_2 with
        | `LH_P2(_lh_car_LH_P2_0_1_2, _lh_car_LH_P2_1_1_2) -> 
          _lh_car_LH_P2_0_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d2_d0 _lh_car_arg1_6 =
  (match _lh_car_arg1_6 with
    | `Cons(_lh_car_Cons_0_6) -> 
      (match _lh_car_Cons_0_6 with
        | `LH_P2(_lh_car_LH_P2_0_6, _lh_car_LH_P2_1_6) -> 
          _lh_car_LH_P2_0_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d3_d0 _lh_car_arg1_1_0 =
  (match _lh_car_arg1_1_0 with
    | `Cons(_lh_car_Cons_0_1_0) -> 
      (match _lh_car_Cons_0_1_0 with
        | `LH_P2(_lh_car_LH_P2_0_1_0, _lh_car_LH_P2_1_1_0) -> 
          _lh_car_LH_P2_0_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d4_d0 _lh_car_arg1_2 =
  (match _lh_car_arg1_2 with
    | `Cons(_lh_car_Cons_0_2) -> 
      (match _lh_car_Cons_0_2 with
        | `LH_P2(_lh_car_LH_P2_0_2, _lh_car_LH_P2_1_2) -> 
          _lh_car_LH_P2_0_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d5_d0 _lh_car_arg1_3 =
  (match _lh_car_arg1_3 with
    | `Cons(_lh_car_Cons_0_3) -> 
      (match _lh_car_Cons_0_3 with
        | `LH_P2(_lh_car_LH_P2_0_3, _lh_car_LH_P2_1_3) -> 
          _lh_car_LH_P2_0_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d2_d0 _lh_car_arg1_1_1 =
  (match _lh_car_arg1_1_1 with
    | `Cons(_lh_car_Cons_0_1_1) -> 
      (match _lh_car_Cons_0_1_1 with
        | `LH_P2(_lh_car_LH_P2_0_1_1, _lh_car_LH_P2_1_1_1) -> 
          _lh_car_LH_P2_0_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d3_d0 _lh_car_arg1_5 =
  (match _lh_car_arg1_5 with
    | `Cons(_lh_car_Cons_0_5) -> 
      (match _lh_car_Cons_0_5 with
        | `LH_P2(_lh_car_LH_P2_0_5, _lh_car_LH_P2_1_5) -> 
          _lh_car_LH_P2_0_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d4_d0 _lh_car_arg1_0 =
  (match _lh_car_arg1_0 with
    | `Cons(_lh_car_Cons_0_0) -> 
      (match _lh_car_Cons_0_0 with
        | `LH_P2(_lh_car_LH_P2_0_0, _lh_car_LH_P2_1_0) -> 
          _lh_car_LH_P2_0_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d5_d0 _lh_car_arg1_1_5 =
  (match _lh_car_arg1_1_5 with
    | `Cons(_lh_car_Cons_0_1_5) -> 
      (match _lh_car_Cons_0_1_5 with
        | `LH_P2(_lh_car_LH_P2_0_1_5, _lh_car_LH_P2_1_1_5) -> 
          _lh_car_LH_P2_0_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d6_d0 _lh_car_arg1_1 =
  (match _lh_car_arg1_1 with
    | `Cons(_lh_car_Cons_0_1) -> 
      (match _lh_car_Cons_0_1 with
        | `LH_P2(_lh_car_LH_P2_0_1, _lh_car_LH_P2_1_1) -> 
          _lh_car_LH_P2_0_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d7_d0 _lh_car_arg1_1_3 =
  (match _lh_car_arg1_1_3 with
    | `Cons(_lh_car_Cons_0_1_3) -> 
      (match _lh_car_Cons_0_1_3 with
        | `LH_P2(_lh_car_LH_P2_0_1_3, _lh_car_LH_P2_1_1_3) -> 
          _lh_car_LH_P2_0_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d8_d0 _lh_car_arg1_1_4 =
  (match _lh_car_arg1_1_4 with
    | `Cons(_lh_car_Cons_0_1_4) -> 
      (match _lh_car_Cons_0_1_4 with
        | `LH_P2(_lh_car_LH_P2_0_1_4, _lh_car_LH_P2_1_1_4) -> 
          _lh_car_LH_P2_0_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d9_d0 _lh_car_arg1_4 =
  (match _lh_car_arg1_4 with
    | `Cons(_lh_car_Cons_0_4) -> 
      (match _lh_car_Cons_0_4 with
        | `LH_P2(_lh_car_LH_P2_0_4, _lh_car_LH_P2_1_4) -> 
          _lh_car_LH_P2_0_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d0_d0 _lh_cdr_arg1_5 =
  (match _lh_cdr_arg1_5 with
    | `Cons(_lh_cdr_Cons_0_5) -> 
      (match _lh_cdr_Cons_0_5 with
        | `LH_P2(_lh_cdr_LH_P2_0_5, _lh_cdr_LH_P2_1_5) -> 
          _lh_cdr_LH_P2_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d0 _lh_cdr_arg1_2 =
  (match _lh_cdr_arg1_2 with
    | `Cons(_lh_cdr_Cons_0_2) -> 
      (match _lh_cdr_Cons_0_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_2, _lh_cdr_LH_P2_1_2) -> 
          _lh_cdr_LH_P2_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d0_d0 _lh_cdr_arg1_1_0 =
  (match _lh_cdr_arg1_1_0 with
    | `Cons(_lh_cdr_Cons_0_1_0) -> 
      (match _lh_cdr_Cons_0_1_0 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_0, _lh_cdr_LH_P2_1_1_0) -> 
          _lh_cdr_LH_P2_1_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d1_d0 _lh_cdr_arg1_1 =
  (match _lh_cdr_arg1_1 with
    | `Cons(_lh_cdr_Cons_0_1) -> 
      (match _lh_cdr_Cons_0_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_1, _lh_cdr_LH_P2_1_1) -> 
          _lh_cdr_LH_P2_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d2_d0 _lh_cdr_arg1_3 =
  (match _lh_cdr_arg1_3 with
    | `Cons(_lh_cdr_Cons_0_3) -> 
      (match _lh_cdr_Cons_0_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_3, _lh_cdr_LH_P2_1_3) -> 
          _lh_cdr_LH_P2_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d2_d0 _lh_cdr_arg1_8 =
  (match _lh_cdr_arg1_8 with
    | `Cons(_lh_cdr_Cons_0_8) -> 
      (match _lh_cdr_Cons_0_8 with
        | `LH_P2(_lh_cdr_LH_P2_0_8, _lh_cdr_LH_P2_1_8) -> 
          _lh_cdr_LH_P2_1_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d3_d0 _lh_cdr_arg1_9 =
  (match _lh_cdr_arg1_9 with
    | `Cons(_lh_cdr_Cons_0_9) -> 
      (match _lh_cdr_Cons_0_9 with
        | `LH_P2(_lh_cdr_LH_P2_0_9, _lh_cdr_LH_P2_1_9) -> 
          _lh_cdr_LH_P2_1_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d4_d0 _lh_cdr_arg1_7 =
  (match _lh_cdr_arg1_7 with
    | `Cons(_lh_cdr_Cons_0_7) -> 
      (match _lh_cdr_Cons_0_7 with
        | `LH_P2(_lh_cdr_LH_P2_0_7, _lh_cdr_LH_P2_1_7) -> 
          _lh_cdr_LH_P2_1_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d5_d0 _lh_cdr_arg1_1_1 =
  (match _lh_cdr_arg1_1_1 with
    | `Cons(_lh_cdr_Cons_0_1_1) -> 
      (match _lh_cdr_Cons_0_1_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_1, _lh_cdr_LH_P2_1_1_1) -> 
          _lh_cdr_LH_P2_1_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d6_d0 _lh_cdr_arg1_4 =
  (match _lh_cdr_arg1_4 with
    | `Cons(_lh_cdr_Cons_0_4) -> 
      (match _lh_cdr_Cons_0_4 with
        | `LH_P2(_lh_cdr_LH_P2_0_4, _lh_cdr_LH_P2_1_4) -> 
          _lh_cdr_LH_P2_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d7_d0 _lh_cdr_arg1_1_2 =
  (match _lh_cdr_arg1_1_2 with
    | `Cons(_lh_cdr_Cons_0_1_2) -> 
      (match _lh_cdr_Cons_0_1_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_2, _lh_cdr_LH_P2_1_1_2) -> 
          _lh_cdr_LH_P2_1_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d8_d0 _lh_cdr_arg1_0 =
  (match _lh_cdr_arg1_0 with
    | `Cons(_lh_cdr_Cons_0_0) -> 
      (match _lh_cdr_Cons_0_0 with
        | `LH_P2(_lh_cdr_LH_P2_0_0, _lh_cdr_LH_P2_1_0) -> 
          _lh_cdr_LH_P2_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d9_d0 _lh_cdr_arg1_6 =
  (match _lh_cdr_arg1_6 with
    | `Cons(_lh_cdr_Cons_0_6) -> 
      (match _lh_cdr_Cons_0_6 with
        | `LH_P2(_lh_cdr_LH_P2_0_6, _lh_cdr_LH_P2_1_6) -> 
          _lh_cdr_LH_P2_1_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec getLUT_d0_d0 _lh_getLUT_arg1_0 =
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
                      (getLUT_d0_d0 (`LH_P2(_lh_getLUT_LH_P2_0_0, _lh_getLUT_LH_P3_0_0)))
                    else
                      (getLUT_d0_d0 (`LH_P2(_lh_getLUT_LH_P2_0_0, _lh_getLUT_LH_P3_2_0)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d0 _lh_lispmember_arg1_2_3 =
  (match _lh_lispmember_arg1_2_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_6, _lh_lispmember_LH_P2_1_4_6) -> 
      (match _lh_lispmember_LH_P2_1_4_6 with
        | `Cons(_lh_lispmember_Cons_0_2_3) -> 
          (match _lh_lispmember_Cons_0_2_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_7, _lh_lispmember_LH_P2_1_4_7) -> 
              (if (_lh_lispmember_LH_P2_0_4_6 = _lh_lispmember_LH_P2_0_4_7) then
                true
              else
                (lispmember_d0_d0 (`LH_P2(_lh_lispmember_LH_P2_0_4_6, _lh_lispmember_LH_P2_1_4_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d1 _lh_lispmember_arg1_2_1 =
  (match _lh_lispmember_arg1_2_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_2, _lh_lispmember_LH_P2_1_4_2) -> 
      (match _lh_lispmember_LH_P2_1_4_2 with
        | `Cons(_lh_lispmember_Cons_0_2_1) -> 
          (match _lh_lispmember_Cons_0_2_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_3, _lh_lispmember_LH_P2_1_4_3) -> 
              (if (_lh_lispmember_LH_P2_0_4_2 = _lh_lispmember_LH_P2_0_4_3) then
                true
              else
                (lispmember_d0_d1 (`LH_P2(_lh_lispmember_LH_P2_0_4_2, _lh_lispmember_LH_P2_1_4_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d2 _lh_lispmember_arg1_1_4 =
  (match _lh_lispmember_arg1_1_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_8, _lh_lispmember_LH_P2_1_2_8) -> 
      (match _lh_lispmember_LH_P2_1_2_8 with
        | `Cons(_lh_lispmember_Cons_0_1_4) -> 
          (match _lh_lispmember_Cons_0_1_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_9, _lh_lispmember_LH_P2_1_2_9) -> 
              (if (_lh_lispmember_LH_P2_0_2_8 = _lh_lispmember_LH_P2_0_2_9) then
                true
              else
                (lispmember_d0_d2 (`LH_P2(_lh_lispmember_LH_P2_0_2_8, _lh_lispmember_LH_P2_1_2_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d3 _lh_lispmember_arg1_1_1 =
  (match _lh_lispmember_arg1_1_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_2, _lh_lispmember_LH_P2_1_2_2) -> 
      (match _lh_lispmember_LH_P2_1_2_2 with
        | `Cons(_lh_lispmember_Cons_0_1_1) -> 
          (match _lh_lispmember_Cons_0_1_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_3, _lh_lispmember_LH_P2_1_2_3) -> 
              (if (_lh_lispmember_LH_P2_0_2_2 = _lh_lispmember_LH_P2_0_2_3) then
                true
              else
                (lispmember_d0_d3 (`LH_P2(_lh_lispmember_LH_P2_0_2_2, _lh_lispmember_LH_P2_1_2_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d4 _lh_lispmember_arg1_1_7 =
  (match _lh_lispmember_arg1_1_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_4, _lh_lispmember_LH_P2_1_3_4) -> 
      (match _lh_lispmember_LH_P2_1_3_4 with
        | `Cons(_lh_lispmember_Cons_0_1_7) -> 
          (match _lh_lispmember_Cons_0_1_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_5, _lh_lispmember_LH_P2_1_3_5) -> 
              (if (_lh_lispmember_LH_P2_0_3_4 = _lh_lispmember_LH_P2_0_3_5) then
                true
              else
                (lispmember_d0_d4 (`LH_P2(_lh_lispmember_LH_P2_0_3_4, _lh_lispmember_LH_P2_1_3_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d5 _lh_lispmember_arg1_1_3 =
  (match _lh_lispmember_arg1_1_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_6, _lh_lispmember_LH_P2_1_2_6) -> 
      (match _lh_lispmember_LH_P2_1_2_6 with
        | `Cons(_lh_lispmember_Cons_0_1_3) -> 
          (match _lh_lispmember_Cons_0_1_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_7, _lh_lispmember_LH_P2_1_2_7) -> 
              (if (_lh_lispmember_LH_P2_0_2_6 = _lh_lispmember_LH_P2_0_2_7) then
                true
              else
                (lispmember_d0_d5 (`LH_P2(_lh_lispmember_LH_P2_0_2_6, _lh_lispmember_LH_P2_1_2_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d6 _lh_lispmember_arg1_2_0 =
  (match _lh_lispmember_arg1_2_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_0, _lh_lispmember_LH_P2_1_4_0) -> 
      (match _lh_lispmember_LH_P2_1_4_0 with
        | `Cons(_lh_lispmember_Cons_0_2_0) -> 
          (match _lh_lispmember_Cons_0_2_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_1, _lh_lispmember_LH_P2_1_4_1) -> 
              (if (_lh_lispmember_LH_P2_0_4_0 = _lh_lispmember_LH_P2_0_4_1) then
                true
              else
                (lispmember_d0_d6 (`LH_P2(_lh_lispmember_LH_P2_0_4_0, _lh_lispmember_LH_P2_1_4_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d0 _lh_lispmember_arg1_7 =
  (match _lh_lispmember_arg1_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_4, _lh_lispmember_LH_P2_1_1_4) -> 
      (match _lh_lispmember_LH_P2_1_1_4 with
        | `Cons(_lh_lispmember_Cons_0_7) -> 
          (match _lh_lispmember_Cons_0_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_5, _lh_lispmember_LH_P2_1_1_5) -> 
              (if (_lh_lispmember_LH_P2_0_1_4 = _lh_lispmember_LH_P2_0_1_5) then
                true
              else
                (lispmember_d1_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_4, _lh_lispmember_LH_P2_1_1_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d1 _lh_lispmember_arg1_1_9 =
  (match _lh_lispmember_arg1_1_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_8, _lh_lispmember_LH_P2_1_3_8) -> 
      (match _lh_lispmember_LH_P2_1_3_8 with
        | `Cons(_lh_lispmember_Cons_0_1_9) -> 
          (match _lh_lispmember_Cons_0_1_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_9, _lh_lispmember_LH_P2_1_3_9) -> 
              (if (_lh_lispmember_LH_P2_0_3_8 = _lh_lispmember_LH_P2_0_3_9) then
                true
              else
                (lispmember_d1_d1 (`LH_P2(_lh_lispmember_LH_P2_0_3_8, _lh_lispmember_LH_P2_1_3_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d2 _lh_lispmember_arg1_5 =
  (match _lh_lispmember_arg1_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0, _lh_lispmember_LH_P2_1_1_0) -> 
      (match _lh_lispmember_LH_P2_1_1_0 with
        | `Cons(_lh_lispmember_Cons_0_5) -> 
          (match _lh_lispmember_Cons_0_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1, _lh_lispmember_LH_P2_1_1_1) -> 
              (if (_lh_lispmember_LH_P2_0_1_0 = _lh_lispmember_LH_P2_0_1_1) then
                true
              else
                (lispmember_d1_d2 (`LH_P2(_lh_lispmember_LH_P2_0_1_0, _lh_lispmember_LH_P2_1_1_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d3 _lh_lispmember_arg1_2_2 =
  (match _lh_lispmember_arg1_2_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_4, _lh_lispmember_LH_P2_1_4_4) -> 
      (match _lh_lispmember_LH_P2_1_4_4 with
        | `Cons(_lh_lispmember_Cons_0_2_2) -> 
          (match _lh_lispmember_Cons_0_2_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_5, _lh_lispmember_LH_P2_1_4_5) -> 
              (if (_lh_lispmember_LH_P2_0_4_4 = _lh_lispmember_LH_P2_0_4_5) then
                true
              else
                (lispmember_d1_d3 (`LH_P2(_lh_lispmember_LH_P2_0_4_4, _lh_lispmember_LH_P2_1_4_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d4 _lh_lispmember_arg1_2_8 =
  (match _lh_lispmember_arg1_2_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_5_6, _lh_lispmember_LH_P2_1_5_6) -> 
      (match _lh_lispmember_LH_P2_1_5_6 with
        | `Cons(_lh_lispmember_Cons_0_2_8) -> 
          (match _lh_lispmember_Cons_0_2_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5_7, _lh_lispmember_LH_P2_1_5_7) -> 
              (if (_lh_lispmember_LH_P2_0_5_6 = _lh_lispmember_LH_P2_0_5_7) then
                true
              else
                (lispmember_d1_d4 (`LH_P2(_lh_lispmember_LH_P2_0_5_6, _lh_lispmember_LH_P2_1_5_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d5 _lh_lispmember_arg1_9 =
  (match _lh_lispmember_arg1_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_8, _lh_lispmember_LH_P2_1_1_8) -> 
      (match _lh_lispmember_LH_P2_1_1_8 with
        | `Cons(_lh_lispmember_Cons_0_9) -> 
          (match _lh_lispmember_Cons_0_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_9, _lh_lispmember_LH_P2_1_1_9) -> 
              (if (_lh_lispmember_LH_P2_0_1_8 = _lh_lispmember_LH_P2_0_1_9) then
                true
              else
                (lispmember_d1_d5 (`LH_P2(_lh_lispmember_LH_P2_0_1_8, _lh_lispmember_LH_P2_1_1_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d6 _lh_lispmember_arg1_3_4 =
  (match _lh_lispmember_arg1_3_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6_8, _lh_lispmember_LH_P2_1_6_8) -> 
      (match _lh_lispmember_LH_P2_1_6_8 with
        | `Cons(_lh_lispmember_Cons_0_3_4) -> 
          (match _lh_lispmember_Cons_0_3_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_6_9, _lh_lispmember_LH_P2_1_6_9) -> 
              (if (_lh_lispmember_LH_P2_0_6_8 = _lh_lispmember_LH_P2_0_6_9) then
                true
              else
                (lispmember_d1_d6 (`LH_P2(_lh_lispmember_LH_P2_0_6_8, _lh_lispmember_LH_P2_1_6_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d0 _lh_lispmember_arg1_1_0 =
  (match _lh_lispmember_arg1_1_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_0, _lh_lispmember_LH_P2_1_2_0) -> 
      (match _lh_lispmember_LH_P2_1_2_0 with
        | `Cons(_lh_lispmember_Cons_0_1_0) -> 
          (match _lh_lispmember_Cons_0_1_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_1, _lh_lispmember_LH_P2_1_2_1) -> 
              (if (_lh_lispmember_LH_P2_0_2_0 = _lh_lispmember_LH_P2_0_2_1) then
                true
              else
                (lispmember_d2_d0 (`LH_P2(_lh_lispmember_LH_P2_0_2_0, _lh_lispmember_LH_P2_1_2_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d1 _lh_lispmember_arg1_2_4 =
  (match _lh_lispmember_arg1_2_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4_8, _lh_lispmember_LH_P2_1_4_8) -> 
      (match _lh_lispmember_LH_P2_1_4_8 with
        | `Cons(_lh_lispmember_Cons_0_2_4) -> 
          (match _lh_lispmember_Cons_0_2_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_4_9, _lh_lispmember_LH_P2_1_4_9) -> 
              (if (_lh_lispmember_LH_P2_0_4_8 = _lh_lispmember_LH_P2_0_4_9) then
                true
              else
                (lispmember_d2_d1 (`LH_P2(_lh_lispmember_LH_P2_0_4_8, _lh_lispmember_LH_P2_1_4_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d2 _lh_lispmember_arg1_3_3 =
  (match _lh_lispmember_arg1_3_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6_6, _lh_lispmember_LH_P2_1_6_6) -> 
      (match _lh_lispmember_LH_P2_1_6_6 with
        | `Cons(_lh_lispmember_Cons_0_3_3) -> 
          (match _lh_lispmember_Cons_0_3_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_6_7, _lh_lispmember_LH_P2_1_6_7) -> 
              (if (_lh_lispmember_LH_P2_0_6_6 = _lh_lispmember_LH_P2_0_6_7) then
                true
              else
                (lispmember_d2_d2 (`LH_P2(_lh_lispmember_LH_P2_0_6_6, _lh_lispmember_LH_P2_1_6_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d3 _lh_lispmember_arg1_3_0 =
  (match _lh_lispmember_arg1_3_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6_0, _lh_lispmember_LH_P2_1_6_0) -> 
      (match _lh_lispmember_LH_P2_1_6_0 with
        | `Cons(_lh_lispmember_Cons_0_3_0) -> 
          (match _lh_lispmember_Cons_0_3_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_6_1, _lh_lispmember_LH_P2_1_6_1) -> 
              (if (_lh_lispmember_LH_P2_0_6_0 = _lh_lispmember_LH_P2_0_6_1) then
                true
              else
                (lispmember_d2_d3 (`LH_P2(_lh_lispmember_LH_P2_0_6_0, _lh_lispmember_LH_P2_1_6_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d4 _lh_lispmember_arg1_8 =
  (match _lh_lispmember_arg1_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_6, _lh_lispmember_LH_P2_1_1_6) -> 
      (match _lh_lispmember_LH_P2_1_1_6 with
        | `Cons(_lh_lispmember_Cons_0_8) -> 
          (match _lh_lispmember_Cons_0_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_7, _lh_lispmember_LH_P2_1_1_7) -> 
              (if (_lh_lispmember_LH_P2_0_1_6 = _lh_lispmember_LH_P2_0_1_7) then
                true
              else
                (lispmember_d2_d4 (`LH_P2(_lh_lispmember_LH_P2_0_1_6, _lh_lispmember_LH_P2_1_1_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d5 _lh_lispmember_arg1_2_5 =
  (match _lh_lispmember_arg1_2_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_5_0, _lh_lispmember_LH_P2_1_5_0) -> 
      (match _lh_lispmember_LH_P2_1_5_0 with
        | `Cons(_lh_lispmember_Cons_0_2_5) -> 
          (match _lh_lispmember_Cons_0_2_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5_1, _lh_lispmember_LH_P2_1_5_1) -> 
              (if (_lh_lispmember_LH_P2_0_5_0 = _lh_lispmember_LH_P2_0_5_1) then
                true
              else
                (lispmember_d2_d5 (`LH_P2(_lh_lispmember_LH_P2_0_5_0, _lh_lispmember_LH_P2_1_5_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d6 _lh_lispmember_arg1_2 =
  (match _lh_lispmember_arg1_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_4) -> 
      (match _lh_lispmember_LH_P2_1_4 with
        | `Cons(_lh_lispmember_Cons_0_2) -> 
          (match _lh_lispmember_Cons_0_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5, _lh_lispmember_LH_P2_1_5) -> 
              (if (_lh_lispmember_LH_P2_0_4 = _lh_lispmember_LH_P2_0_5) then
                true
              else
                (lispmember_d2_d6 (`LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d0 _lh_lispmember_arg1_3_2 =
  (match _lh_lispmember_arg1_3_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6_4, _lh_lispmember_LH_P2_1_6_4) -> 
      (match _lh_lispmember_LH_P2_1_6_4 with
        | `Cons(_lh_lispmember_Cons_0_3_2) -> 
          (match _lh_lispmember_Cons_0_3_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_6_5, _lh_lispmember_LH_P2_1_6_5) -> 
              (if (_lh_lispmember_LH_P2_0_6_4 = _lh_lispmember_LH_P2_0_6_5) then
                true
              else
                (lispmember_d3_d0 (`LH_P2(_lh_lispmember_LH_P2_0_6_4, _lh_lispmember_LH_P2_1_6_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d1 _lh_lispmember_arg1_1_2 =
  (match _lh_lispmember_arg1_1_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2_4, _lh_lispmember_LH_P2_1_2_4) -> 
      (match _lh_lispmember_LH_P2_1_2_4 with
        | `Cons(_lh_lispmember_Cons_0_1_2) -> 
          (match _lh_lispmember_Cons_0_1_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_2_5, _lh_lispmember_LH_P2_1_2_5) -> 
              (if (_lh_lispmember_LH_P2_0_2_4 = _lh_lispmember_LH_P2_0_2_5) then
                true
              else
                (lispmember_d3_d1 (`LH_P2(_lh_lispmember_LH_P2_0_2_4, _lh_lispmember_LH_P2_1_2_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d2 _lh_lispmember_arg1_3 =
  (match _lh_lispmember_arg1_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_6) -> 
      (match _lh_lispmember_LH_P2_1_6 with
        | `Cons(_lh_lispmember_Cons_0_3) -> 
          (match _lh_lispmember_Cons_0_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7, _lh_lispmember_LH_P2_1_7) -> 
              (if (_lh_lispmember_LH_P2_0_6 = _lh_lispmember_LH_P2_0_7) then
                true
              else
                (lispmember_d3_d2 (`LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d3 _lh_lispmember_arg1_0 =
  (match _lh_lispmember_arg1_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_0, _lh_lispmember_LH_P2_1_0) -> 
      (match _lh_lispmember_LH_P2_1_0 with
        | `Cons(_lh_lispmember_Cons_0_0) -> 
          (match _lh_lispmember_Cons_0_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1, _lh_lispmember_LH_P2_1_1) -> 
              (if (_lh_lispmember_LH_P2_0_0 = _lh_lispmember_LH_P2_0_1) then
                true
              else
                (lispmember_d3_d3 (`LH_P2(_lh_lispmember_LH_P2_0_0, _lh_lispmember_LH_P2_1_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d4 _lh_lispmember_arg1_2_7 =
  (match _lh_lispmember_arg1_2_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_5_4, _lh_lispmember_LH_P2_1_5_4) -> 
      (match _lh_lispmember_LH_P2_1_5_4 with
        | `Cons(_lh_lispmember_Cons_0_2_7) -> 
          (match _lh_lispmember_Cons_0_2_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5_5, _lh_lispmember_LH_P2_1_5_5) -> 
              (if (_lh_lispmember_LH_P2_0_5_4 = _lh_lispmember_LH_P2_0_5_5) then
                true
              else
                (lispmember_d3_d4 (`LH_P2(_lh_lispmember_LH_P2_0_5_4, _lh_lispmember_LH_P2_1_5_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d5 _lh_lispmember_arg1_4 =
  (match _lh_lispmember_arg1_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_8) -> 
      (match _lh_lispmember_LH_P2_1_8 with
        | `Cons(_lh_lispmember_Cons_0_4) -> 
          (match _lh_lispmember_Cons_0_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9, _lh_lispmember_LH_P2_1_9) -> 
              (if (_lh_lispmember_LH_P2_0_8 = _lh_lispmember_LH_P2_0_9) then
                true
              else
                (lispmember_d3_d5 (`LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d6 _lh_lispmember_arg1_1 =
  (match _lh_lispmember_arg1_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_2) -> 
      (match _lh_lispmember_LH_P2_1_2 with
        | `Cons(_lh_lispmember_Cons_0_1) -> 
          (match _lh_lispmember_Cons_0_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3, _lh_lispmember_LH_P2_1_3) -> 
              (if (_lh_lispmember_LH_P2_0_2 = _lh_lispmember_LH_P2_0_3) then
                true
              else
                (lispmember_d3_d6 (`LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d0 _lh_lispmember_arg1_2_6 =
  (match _lh_lispmember_arg1_2_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_5_2, _lh_lispmember_LH_P2_1_5_2) -> 
      (match _lh_lispmember_LH_P2_1_5_2 with
        | `Cons(_lh_lispmember_Cons_0_2_6) -> 
          (match _lh_lispmember_Cons_0_2_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5_3, _lh_lispmember_LH_P2_1_5_3) -> 
              (if (_lh_lispmember_LH_P2_0_5_2 = _lh_lispmember_LH_P2_0_5_3) then
                true
              else
                (lispmember_d4_d0 (`LH_P2(_lh_lispmember_LH_P2_0_5_2, _lh_lispmember_LH_P2_1_5_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d1 _lh_lispmember_arg1_1_5 =
  (match _lh_lispmember_arg1_1_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_0, _lh_lispmember_LH_P2_1_3_0) -> 
      (match _lh_lispmember_LH_P2_1_3_0 with
        | `Cons(_lh_lispmember_Cons_0_1_5) -> 
          (match _lh_lispmember_Cons_0_1_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_1, _lh_lispmember_LH_P2_1_3_1) -> 
              (if (_lh_lispmember_LH_P2_0_3_0 = _lh_lispmember_LH_P2_0_3_1) then
                true
              else
                (lispmember_d4_d1 (`LH_P2(_lh_lispmember_LH_P2_0_3_0, _lh_lispmember_LH_P2_1_3_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d2 _lh_lispmember_arg1_1_8 =
  (match _lh_lispmember_arg1_1_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_6, _lh_lispmember_LH_P2_1_3_6) -> 
      (match _lh_lispmember_LH_P2_1_3_6 with
        | `Cons(_lh_lispmember_Cons_0_1_8) -> 
          (match _lh_lispmember_Cons_0_1_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_7, _lh_lispmember_LH_P2_1_3_7) -> 
              (if (_lh_lispmember_LH_P2_0_3_6 = _lh_lispmember_LH_P2_0_3_7) then
                true
              else
                (lispmember_d4_d2 (`LH_P2(_lh_lispmember_LH_P2_0_3_6, _lh_lispmember_LH_P2_1_3_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d3 _lh_lispmember_arg1_1_6 =
  (match _lh_lispmember_arg1_1_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_3_2, _lh_lispmember_LH_P2_1_3_2) -> 
      (match _lh_lispmember_LH_P2_1_3_2 with
        | `Cons(_lh_lispmember_Cons_0_1_6) -> 
          (match _lh_lispmember_Cons_0_1_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3_3, _lh_lispmember_LH_P2_1_3_3) -> 
              (if (_lh_lispmember_LH_P2_0_3_2 = _lh_lispmember_LH_P2_0_3_3) then
                true
              else
                (lispmember_d4_d3 (`LH_P2(_lh_lispmember_LH_P2_0_3_2, _lh_lispmember_LH_P2_1_3_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d4 _lh_lispmember_arg1_3_1 =
  (match _lh_lispmember_arg1_3_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6_2, _lh_lispmember_LH_P2_1_6_2) -> 
      (match _lh_lispmember_LH_P2_1_6_2 with
        | `Cons(_lh_lispmember_Cons_0_3_1) -> 
          (match _lh_lispmember_Cons_0_3_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_6_3, _lh_lispmember_LH_P2_1_6_3) -> 
              (if (_lh_lispmember_LH_P2_0_6_2 = _lh_lispmember_LH_P2_0_6_3) then
                true
              else
                (lispmember_d4_d4 (`LH_P2(_lh_lispmember_LH_P2_0_6_2, _lh_lispmember_LH_P2_1_6_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d5 _lh_lispmember_arg1_2_9 =
  (match _lh_lispmember_arg1_2_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_5_8, _lh_lispmember_LH_P2_1_5_8) -> 
      (match _lh_lispmember_LH_P2_1_5_8 with
        | `Cons(_lh_lispmember_Cons_0_2_9) -> 
          (match _lh_lispmember_Cons_0_2_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5_9, _lh_lispmember_LH_P2_1_5_9) -> 
              (if (_lh_lispmember_LH_P2_0_5_8 = _lh_lispmember_LH_P2_0_5_9) then
                true
              else
                (lispmember_d4_d5 (`LH_P2(_lh_lispmember_LH_P2_0_5_8, _lh_lispmember_LH_P2_1_5_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d6 _lh_lispmember_arg1_6 =
  (match _lh_lispmember_arg1_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_2, _lh_lispmember_LH_P2_1_1_2) -> 
      (match _lh_lispmember_LH_P2_1_1_2 with
        | `Cons(_lh_lispmember_Cons_0_6) -> 
          (match _lh_lispmember_Cons_0_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_3, _lh_lispmember_LH_P2_1_1_3) -> 
              (if (_lh_lispmember_LH_P2_0_1_2 = _lh_lispmember_LH_P2_0_1_3) then
                true
              else
                (lispmember_d4_d6 (`LH_P2(_lh_lispmember_LH_P2_0_1_2, _lh_lispmember_LH_P2_1_1_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec mappend_d0_d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend_d1_d0 xs_2 ys_4 =
  (match xs_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_d1_d0 t_2) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_d2_d0 xs_1 ys_3 =
  (match xs_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_d2_d0 t_1) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_d3_d0 xs_4 ys_6 =
  (match xs_4 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_d3_d0 t_4) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec mappend_d4_d0 xs_3 ys_5 =
  (match xs_3 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_d4_d0 t_3) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec report_d0_d0 _lh_report_arg1_0 =
  (match _lh_report_arg1_0 with
    | true -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
    | false -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d0_d0 _lh_restOfToken_arg1_2 =
  (match _lh_restOfToken_arg1_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_C_1_2) -> 
      (if (((_lh_restOfToken_LH_C_0_2 = '(') || (_lh_restOfToken_LH_C_0_2 = ')')) || (_lh_restOfToken_LH_C_0_2 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_C_1_2))))
      else
        (let rec _lh_matchIdent_2_7 = (restOfToken_d0_d0 _lh_restOfToken_LH_C_1_2) in
          (match _lh_matchIdent_2_7 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_2, _lh_restOfToken_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_P2_0_2)), _lh_restOfToken_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d1_d0 _lh_restOfToken_arg1_1 =
  (match _lh_restOfToken_arg1_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_C_1_1) -> 
      (if (((_lh_restOfToken_LH_C_0_1 = '(') || (_lh_restOfToken_LH_C_0_1 = ')')) || (_lh_restOfToken_LH_C_0_1 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_2_6 = (restOfToken_d1_d0 _lh_restOfToken_LH_C_1_1) in
          (match _lh_matchIdent_2_6 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_1, _lh_restOfToken_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_P2_0_1)), _lh_restOfToken_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d2_d0 _lh_restOfToken_arg1_0 =
  (match _lh_restOfToken_arg1_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_C_1_0) -> 
      (if (((_lh_restOfToken_LH_C_0_0 = '(') || (_lh_restOfToken_LH_C_0_0 = ')')) || (_lh_restOfToken_LH_C_0_0 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_2_3 = (restOfToken_d2_d0 _lh_restOfToken_LH_C_1_0) in
          (match _lh_matchIdent_2_3 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_0, _lh_restOfToken_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_P2_0_0)), _lh_restOfToken_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec rules_d0_d0 _lh_rules_arg1_0 =
  (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('g', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('p', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('-', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('c', (`LH_C('-', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('1', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('w', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('1', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('2', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('3', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('4', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('5', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('6', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('m', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec sublist_d0_d0 _lh_sublist_arg1_1 =
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
                  (let rec _lh_matchIdent_1_1 = (sublist_d0_d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_1_1 with
                      | `LH_P2(_lh_sublist_LH_P2_0_6, _lh_sublist_LH_P2_1_6) -> 
                        (let rec _lh_matchIdent_1_2 = (sublist_d0_d0 _lh_sublist_LH_P2_0_6) in
                          (match _lh_matchIdent_1_2 with
                            | `LH_P2(_lh_sublist_LH_P2_0_7, _lh_sublist_LH_P2_1_7) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_7, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_6, _lh_sublist_LH_P2_1_7))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_1_3 = (sublist_d0_d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_1_3 with
                      | `LH_P2(_lh_sublist_LH_P2_0_8, _lh_sublist_LH_P2_1_8) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_8, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_8))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_3 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_2, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_1_4 = (sublist_d0_d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_1_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_9, _lh_sublist_LH_P2_1_9) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_9, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_9))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_1_5 = (sublist_d0_d0 _lh_sublist_LH_C_1_2) in
                (match _lh_matchIdent_1_5 with
                  | `LH_P2(_lh_sublist_LH_P2_0_1_0, _lh_sublist_LH_P2_1_1_0) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_1_0, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_1_0))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_1_6 = (sublist_d0_d0 _lh_sublist_LH_C_1_2) in
            (match _lh_matchIdent_1_6 with
              | `LH_P2(_lh_sublist_LH_P2_0_1_1, _lh_sublist_LH_P2_1_1_1) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_1_1, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_1_1))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist_d1_d0 _lh_sublist_arg1_2 =
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
                  (let rec _lh_matchIdent_3_1 = (sublist_d1_d0 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_3_1 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_2, _lh_sublist_LH_P2_1_1_2) -> 
                        (let rec _lh_matchIdent_3_2 = (sublist_d1_d0 _lh_sublist_LH_P2_0_1_2) in
                          (match _lh_matchIdent_3_2 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1_3, _lh_sublist_LH_P2_1_1_3) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1_3, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_1_2, _lh_sublist_LH_P2_1_1_3))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_3_3 = (sublist_d1_d0 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_3_3 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_4, _lh_sublist_LH_P2_1_1_4) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_1_4, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_4))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_5 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_4, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_3_4 = (sublist_d1_d0 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_3_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_5, _lh_sublist_LH_P2_1_1_5) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_1_5, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_5))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_3_5 = (sublist_d1_d0 _lh_sublist_LH_C_1_4) in
                (match _lh_matchIdent_3_5 with
                  | `LH_P2(_lh_sublist_LH_P2_0_1_6, _lh_sublist_LH_P2_1_1_6) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_1_6, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_6))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_3_6 = (sublist_d1_d0 _lh_sublist_LH_C_1_4) in
            (match _lh_matchIdent_3_6 with
              | `LH_P2(_lh_sublist_LH_P2_0_1_7, _lh_sublist_LH_P2_1_1_7) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_1_7, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_7))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist_d2_d0 _lh_sublist_arg1_0 =
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
                  (let rec _lh_matchIdent_4 = (sublist_d2_d0 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_0, _lh_sublist_LH_P2_1_0) -> 
                        (let rec _lh_matchIdent_5 = (sublist_d2_d0 _lh_sublist_LH_P2_0_0) in
                          (match _lh_matchIdent_5 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1, _lh_sublist_LH_P2_1_1) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_0, _lh_sublist_LH_P2_1_1))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_6 = (sublist_d2_d0 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_6 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2, _lh_sublist_LH_P2_1_2) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_2))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_1 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_0, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_7 = (sublist_d2_d0 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_7 with
                      | `LH_P2(_lh_sublist_LH_P2_0_3, _lh_sublist_LH_P2_1_3) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_3, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_3))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_8 = (sublist_d2_d0 _lh_sublist_LH_C_1_0) in
                (match _lh_matchIdent_8 with
                  | `LH_P2(_lh_sublist_LH_P2_0_4, _lh_sublist_LH_P2_1_4) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_4, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_4))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_9 = (sublist_d2_d0 _lh_sublist_LH_C_1_0) in
            (match _lh_matchIdent_9 with
              | `LH_P2(_lh_sublist_LH_P2_0_5, _lh_sublist_LH_P2_1_5) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_5, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_5))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec tv_d0_d0 _lh_tv_arg1_1 =
  (match _lh_tv_arg1_1 with
    | `Atom(_lh_tv_Atom_0_1) -> 
      _lh_tv_Atom_0_1
    | _ -> 
      (failwith "error"));;
let rec tv_d1_d0 _lh_tv_arg1_0 =
  (match _lh_tv_arg1_0 with
    | `Atom(_lh_tv_Atom_0_0) -> 
      _lh_tv_Atom_0_0
    | _ -> 
      (failwith "error"));;
let rec tv_d2_d0 _lh_tv_arg1_2 =
  (match _lh_tv_arg1_2 with
    | `Atom(_lh_tv_Atom_0_2) -> 
      _lh_tv_Atom_0_2
    | _ -> 
      (failwith "error"));;
let rec addlemma_d0_d0 _lh_addlemma_arg1_0 _lh_addlemma_arg2_0 =
  (match _lh_addlemma_arg1_0 with
    | `Nil -> 
      _lh_addlemma_arg2_0
    | `Atom(_lh_addlemma_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_addlemma_Cons_0_0) -> 
      (match _lh_addlemma_Cons_0_0 with
        | `LH_P2(_lh_addlemma_LH_P2_0_0, _lh_addlemma_LH_P2_1_0) -> 
          (let rec z_0 = (car_d0_d0 _lh_addlemma_LH_P2_1_0) in
            (if (((tv_d0_d0 _lh_addlemma_LH_P2_0_0) = (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_N)))))))))))) && (not (atom_d0_d0 z_0))) then
              (addtoLUT_d0_d0 (`LH_P3((tv_d1_d0 (car_d1_d0 z_0)), (`Cons((`LH_P2(_lh_addlemma_LH_P2_0_0, _lh_addlemma_LH_P2_1_0)))), _lh_addlemma_arg2_0)))
            else
              (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst_d0_d0 _lh_applysubstlst_arg1_0 _lh_applysubstlst_arg2_0 =
  (match _lh_applysubstlst_arg2_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_0) -> 
      (match _lh_applysubstlst_Cons_0_0 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_0, _lh_applysubstlst_LH_P2_1_0) -> 
          (`Cons((`LH_P2(((applysubst_d0_d0 _lh_applysubstlst_arg1_0) _lh_applysubstlst_LH_P2_0_0), ((applysubstlst_d0_d0 _lh_applysubstlst_arg1_0) _lh_applysubstlst_LH_P2_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst_d1_d0 _lh_applysubstlst_arg1_1 _lh_applysubstlst_arg2_1 =
  (match _lh_applysubstlst_arg2_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_1) -> 
      (match _lh_applysubstlst_Cons_0_1 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_1, _lh_applysubstlst_LH_P2_1_1) -> 
          (`Cons((`LH_P2(((applysubst_d1_d0 _lh_applysubstlst_arg1_1) _lh_applysubstlst_LH_P2_0_1), ((applysubstlst_d1_d0 _lh_applysubstlst_arg1_1) _lh_applysubstlst_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst_d0_d0 _lh_applysubst_arg1_0 _lh_applysubst_arg2_0 =
  (match _lh_applysubst_arg2_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_0) -> 
      (let rec _lh_matchIdent_2_5 = (assoc_d0_d0 (`LH_P2((`Atom(_lh_applysubst_Atom_0_0)), _lh_applysubst_arg1_0))) in
        (match _lh_matchIdent_2_5 with
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
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_1, ((applysubstlst_d0_d0 _lh_applysubst_arg1_0) _lh_applysubst_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst_d1_d0 _lh_applysubst_arg1_1 _lh_applysubst_arg2_1 =
  (match _lh_applysubst_arg2_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_1) -> 
      (let rec _lh_matchIdent_3_0 = (assoc_d2_d0 (`LH_P2((`Atom(_lh_applysubst_Atom_0_1)), _lh_applysubst_arg1_1))) in
        (match _lh_matchIdent_3_0 with
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
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_3, ((applysubstlst_d1_d0 _lh_applysubst_arg1_1) _lh_applysubst_LH_P2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and caddr_d0_d0 _lh_caddr_arg1_1 =
  ((fun _lh_funcomp_x_3 -> 
    ((fun _lh_funcomp_x_4 -> 
      (car_d2_d0 (cdr_d0_d0 _lh_funcomp_x_4))) (cdr_d1_d0 _lh_funcomp_x_3))) _lh_caddr_arg1_1)
and caddr_d1_d0 _lh_caddr_arg1_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((fun _lh_funcomp_x_2 -> 
      (car_d8_d0 (cdr_d7_d0 _lh_funcomp_x_2))) (cdr_d8_d0 _lh_funcomp_x_1))) _lh_caddr_arg1_0)
and caddr_d2_d0 _lh_caddr_arg1_2 =
  ((fun _lh_funcomp_x_6 -> 
    ((fun _lh_funcomp_x_7 -> 
      (car_d9_d0 (cdr_d9_d0 _lh_funcomp_x_7))) (cdr_d1_d0_d0 _lh_funcomp_x_6))) _lh_caddr_arg1_2)
and cadr_d0_d0 _lh_cadr_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    (car_d3_d0 (cdr_d2_d0 _lh_funcomp_x_0))) _lh_cadr_arg1_0)
and cadr_d1_d0 _lh_cadr_arg1_1 =
  ((fun _lh_funcomp_x_5 -> 
    (car_d1_d0_d0 (cdr_d1_d1_d0 _lh_funcomp_x_5))) _lh_cadr_arg1_1)
and cadr_d2_d0 _lh_cadr_arg1_2 =
  ((fun _lh_funcomp_x_8 -> 
    (car_d1_d1_d0 (cdr_d1_d2_d0 _lh_funcomp_x_8))) _lh_cadr_arg1_2)
and falsep_d0_d0 _lh_falsep_arg1_1 =
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
                                  (lispmember_d0_d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember_d0_d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember_d0_d2 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember_d0_d3 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                | _ -> 
                  (lispmember_d0_d4 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
            | _ -> 
              (lispmember_d0_d5 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
        | _ -> 
          (lispmember_d0_d6 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"))
and falsep_d1_d0 _lh_falsep_arg1_0 =
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
                                  (lispmember_d1_d0 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                            | _ -> 
                              (lispmember_d1_d1 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                        | _ -> 
                          (lispmember_d1_d2 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                    | _ -> 
                      (lispmember_d1_d3 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                | _ -> 
                  (lispmember_d1_d4 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
            | _ -> 
              (lispmember_d1_d5 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
        | _ -> 
          (lispmember_d1_d6 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
    | _ -> 
      (failwith "error"))
and getToken_d0_d0 _lh_getToken_arg1_0 =
  (match _lh_getToken_arg1_0 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_0_0 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_1_0 = (`LH_N) in
          (`LH_C(_lh_strToToken_LH_P2_0_0, (strToToken_d0_d0 _lh_strToToken_LH_P2_1_0)))))
    | `LH_C(_lh_getToken_LH_C_0_0, _lh_getToken_LH_C_1_0) -> 
      (if (_lh_getToken_LH_C_0_0 = ' ') then
        (getToken_d0_d0 _lh_getToken_LH_C_1_0)
      else
        (if ((_lh_getToken_LH_C_0_0 = '(') || (_lh_getToken_LH_C_0_0 = ')')) then
          (let rec _lh_strToToken_LH_P2_0_1 = (`LH_C(_lh_getToken_LH_C_0_0, (`LH_N))) in
            (let rec _lh_strToToken_LH_P2_1_1 = _lh_getToken_LH_C_1_0 in
              (`LH_C(_lh_strToToken_LH_P2_0_1, (strToToken_d0_d0 _lh_strToToken_LH_P2_1_1)))))
        else
          (let rec _lh_matchIdent_1 = (restOfToken_d0_d0 _lh_getToken_LH_C_1_0) in
            (match _lh_matchIdent_1 with
              | `LH_P2(_lh_getToken_LH_P2_0_0, _lh_getToken_LH_P2_1_0) -> 
                (let rec _lh_strToToken_LH_P2_0_2 = (`LH_C(_lh_getToken_LH_C_0_0, _lh_getToken_LH_P2_0_0)) in
                  (let rec _lh_strToToken_LH_P2_1_2 = _lh_getToken_LH_P2_1_0 in
                    (`LH_C(_lh_strToToken_LH_P2_0_2, (strToToken_d0_d0 _lh_strToToken_LH_P2_1_2)))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken_d1_d0 _lh_getToken_arg1_2 =
  (match _lh_getToken_arg1_2 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_0_6 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_1_6 = (`LH_N) in
          (`LH_C(_lh_strToToken_LH_P2_0_6, (strToToken_d1_d0 _lh_strToToken_LH_P2_1_6)))))
    | `LH_C(_lh_getToken_LH_C_0_2, _lh_getToken_LH_C_1_2) -> 
      (if (_lh_getToken_LH_C_0_2 = ' ') then
        (getToken_d1_d0 _lh_getToken_LH_C_1_2)
      else
        (if ((_lh_getToken_LH_C_0_2 = '(') || (_lh_getToken_LH_C_0_2 = ')')) then
          (let rec _lh_strToToken_LH_P2_0_7 = (`LH_C(_lh_getToken_LH_C_0_2, (`LH_N))) in
            (let rec _lh_strToToken_LH_P2_1_7 = _lh_getToken_LH_C_1_2 in
              (`LH_C(_lh_strToToken_LH_P2_0_7, (strToToken_d1_d0 _lh_strToToken_LH_P2_1_7)))))
        else
          (let rec _lh_matchIdent_2_9 = (restOfToken_d1_d0 _lh_getToken_LH_C_1_2) in
            (match _lh_matchIdent_2_9 with
              | `LH_P2(_lh_getToken_LH_P2_0_2, _lh_getToken_LH_P2_1_2) -> 
                (let rec _lh_strToToken_LH_P2_0_8 = (`LH_C(_lh_getToken_LH_C_0_2, _lh_getToken_LH_P2_0_2)) in
                  (let rec _lh_strToToken_LH_P2_1_8 = _lh_getToken_LH_P2_1_2 in
                    (`LH_C(_lh_strToToken_LH_P2_0_8, (strToToken_d1_d0 _lh_strToToken_LH_P2_1_8)))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken_d2_d0 _lh_getToken_arg1_1 =
  (match _lh_getToken_arg1_1 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_0_3 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_1_3 = (`LH_N) in
          (`LH_C(_lh_strToToken_LH_P2_0_3, (strToToken_d2_d0 _lh_strToToken_LH_P2_1_3)))))
    | `LH_C(_lh_getToken_LH_C_0_1, _lh_getToken_LH_C_1_1) -> 
      (if (_lh_getToken_LH_C_0_1 = ' ') then
        (getToken_d2_d0 _lh_getToken_LH_C_1_1)
      else
        (if ((_lh_getToken_LH_C_0_1 = '(') || (_lh_getToken_LH_C_0_1 = ')')) then
          (let rec _lh_strToToken_LH_P2_0_4 = (`LH_C(_lh_getToken_LH_C_0_1, (`LH_N))) in
            (let rec _lh_strToToken_LH_P2_1_4 = _lh_getToken_LH_C_1_1 in
              (`LH_C(_lh_strToToken_LH_P2_0_4, (strToToken_d2_d0 _lh_strToToken_LH_P2_1_4)))))
        else
          (let rec _lh_matchIdent_3 = (restOfToken_d2_d0 _lh_getToken_LH_C_1_1) in
            (match _lh_matchIdent_3 with
              | `LH_P2(_lh_getToken_LH_P2_0_1, _lh_getToken_LH_P2_1_1) -> 
                (let rec _lh_strToToken_LH_P2_0_5 = (`LH_C(_lh_getToken_LH_C_0_1, _lh_getToken_LH_P2_0_1)) in
                  (let rec _lh_strToToken_LH_P2_1_5 = _lh_getToken_LH_P2_1_1 in
                    (`LH_C(_lh_strToToken_LH_P2_0_5, (strToToken_d2_d0 _lh_strToToken_LH_P2_1_5)))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and lemmas_d0_d0 _lh_lemmas_arg1_0 =
  ((addlemmalst_d0_d0 (makelemmas_d0_d0 (rules_d0_d0 0))) (`Empty))
and makelemmas_d0_d0 _lh_makelemmas_arg1_0 =
  (match _lh_makelemmas_arg1_0 with
    | `LH_N -> 
      (fun _lh_addlemmalst_arg2_0 -> 
        _lh_addlemmalst_arg2_0)
    | `LH_C(_lh_makelemmas_LH_C_0_0, _lh_makelemmas_LH_C_1_0) -> 
      (let rec _lh_addlemmalst_LH_C_0_0 = (mkLisplist_d0_d0 (strToToken_d0_d0 _lh_makelemmas_LH_C_0_0)) in
        (let rec _lh_addlemmalst_LH_C_1_0 = (makelemmas_d0_d0 _lh_makelemmas_LH_C_1_0) in
          (fun _lh_addlemmalst_arg2_1 -> 
            ((addlemmalst_d0_d0 _lh_addlemmalst_LH_C_1_0) ((addlemma_d0_d0 _lh_addlemmalst_LH_C_0_0) _lh_addlemmalst_arg2_1)))))
    | _ -> 
      (failwith "error"))
and mkLisplist_d0_d0 _lh_mkLisplist_arg1_0 =
  (match _lh_mkLisplist_arg1_0 with
    | `LH_C(_lh_mkLisplist_LH_C_0_0, _lh_mkLisplist_LH_C_1_0) -> 
      (match _lh_mkLisplist_LH_C_0_0 with
        | `LH_C(_lh_mkLisplist_LH_C_0_1, _lh_mkLisplist_LH_C_1_1) -> 
          (match _lh_mkLisplist_LH_C_0_1 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_1 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1_8 = (sublist_d0_d0 _lh_mkLisplist_LH_C_1_0) in
                    (match _lh_matchIdent_1_8 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_0, _lh_mkLisplist_LH_P2_1_0) -> 
                        (let rec _lh_matchIdent_1_9 = _lh_mkLisplist_LH_P2_0_0 in
                          (match _lh_matchIdent_1_9 with
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
and mkLisplist_d1_d0 _lh_mkLisplist_arg1_2 =
  (match _lh_mkLisplist_arg1_2 with
    | `LH_C(_lh_mkLisplist_LH_C_0_4, _lh_mkLisplist_LH_C_1_4) -> 
      (match _lh_mkLisplist_LH_C_0_4 with
        | `LH_C(_lh_mkLisplist_LH_C_0_5, _lh_mkLisplist_LH_C_1_5) -> 
          (match _lh_mkLisplist_LH_C_0_5 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_5 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_3_7 = (sublist_d1_d0 _lh_mkLisplist_LH_C_1_4) in
                    (match _lh_matchIdent_3_7 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_2, _lh_mkLisplist_LH_P2_1_2) -> 
                        (let rec _lh_matchIdent_3_8 = _lh_mkLisplist_LH_P2_0_2 in
                          (match _lh_matchIdent_3_8 with
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
and mkLisplist_d2_d0 _lh_mkLisplist_arg1_1 =
  (match _lh_mkLisplist_arg1_1 with
    | `LH_C(_lh_mkLisplist_LH_C_0_2, _lh_mkLisplist_LH_C_1_2) -> 
      (match _lh_mkLisplist_LH_C_0_2 with
        | `LH_C(_lh_mkLisplist_LH_C_0_3, _lh_mkLisplist_LH_C_1_3) -> 
          (match _lh_mkLisplist_LH_C_0_3 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_3 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_2_1 = (sublist_d2_d0 _lh_mkLisplist_LH_C_1_2) in
                    (match _lh_matchIdent_2_1 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_1, _lh_mkLisplist_LH_P2_1_1) -> 
                        (let rec _lh_matchIdent_2_2 = _lh_mkLisplist_LH_P2_0_1 in
                          (match _lh_matchIdent_2_2 with
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
and onewayunify1lst_d0_d0 _lh_onewayunify1lst_arg1_0 _lh_onewayunify1lst_arg2_0 _lh_onewayunify1lst_arg3_0 =
  (match _lh_onewayunify1lst_arg1_0 with
    | `Nil -> 
      (`LH_P2(true, _lh_onewayunify1lst_arg3_0))
    | _ -> 
      (let rec _lh_matchIdent_1_7 = (((onewayunify1_d0_d0 (car_d6_d0 _lh_onewayunify1lst_arg1_0)) (car_d7_d0 _lh_onewayunify1lst_arg2_0)) _lh_onewayunify1lst_arg3_0) in
        (match _lh_matchIdent_1_7 with
          | `LH_P2(_lh_onewayunify1lst_LH_P2_0_0, _lh_onewayunify1lst_LH_P2_1_0) -> 
            (if _lh_onewayunify1lst_LH_P2_0_0 then
              (((onewayunify1lst_d0_d0 (cdr_d5_d0 _lh_onewayunify1lst_arg1_0)) (cdr_d6_d0 _lh_onewayunify1lst_arg2_0)) _lh_onewayunify1lst_LH_P2_1_0)
            else
              (`LH_P2(false, _lh_onewayunify1lst_LH_P2_1_0)))
          | _ -> 
            (failwith "error"))))
and onewayunify1_d0_d0 _lh_onewayunify1_arg1_0 _lh_onewayunify1_arg2_0 _lh_onewayunify1_arg3_0 =
  (if (atom_d1_d0 _lh_onewayunify1_arg2_0) then
    (let rec _lh_matchIdent_2_4 = (assoc_d1_d0 (`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg3_0))) in
      (match _lh_matchIdent_2_4 with
        | `Cons(_lh_onewayunify1_Cons_0_0) -> 
          (match _lh_onewayunify1_Cons_0_0 with
            | `LH_P2(_lh_onewayunify1_LH_P2_0_0, _lh_onewayunify1_LH_P2_1_0) -> 
              (`LH_P2((_lh_onewayunify1_arg1_0 = _lh_onewayunify1_LH_P2_1_0), _lh_onewayunify1_arg3_0))
            | _ -> 
              (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg1_0)))), _lh_onewayunify1_arg3_0)))))))
        | _ -> 
          (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg1_0)))), _lh_onewayunify1_arg3_0))))))))
  else
    (if (atom_d2_d0 _lh_onewayunify1_arg1_0) then
      (`LH_P2(false, _lh_onewayunify1_arg3_0))
    else
      (if ((car_d4_d0 _lh_onewayunify1_arg1_0) = (car_d5_d0 _lh_onewayunify1_arg2_0)) then
        (((onewayunify1lst_d0_d0 (cdr_d3_d0 _lh_onewayunify1_arg1_0)) (cdr_d4_d0 _lh_onewayunify1_arg2_0)) _lh_onewayunify1_arg3_0)
      else
        (`LH_P2(false, _lh_onewayunify1_arg3_0)))))
and onewayunify_d0_d0 _lh_onewayunify_arg1_0 _lh_onewayunify_arg2_0 =
  (((onewayunify1_d0_d0 _lh_onewayunify_arg1_0) _lh_onewayunify_arg2_0) (`Nil))
and rewriteargs_d0_d0 _lh_rewriteargs_arg1_0 _lh_rewriteargs_arg2_0 =
  (match _lh_rewriteargs_arg1_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewriteargs_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_rewriteargs_Cons_0_0) -> 
      (match _lh_rewriteargs_Cons_0_0 with
        | `LH_P2(_lh_rewriteargs_LH_P2_0_0, _lh_rewriteargs_LH_P2_1_0) -> 
          (`Cons((`LH_P2(((rewrite_d0_d0 _lh_rewriteargs_LH_P2_0_0) _lh_rewriteargs_arg2_0), ((rewriteargs_d0_d0 _lh_rewriteargs_LH_P2_1_0) _lh_rewriteargs_arg2_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewritewithlemmas_d0_d0 _lh_rewritewithlemmas_arg1_0 _lh_rewritewithlemmas_arg2_0 _lh_rewritewithlemmas_arg3_0 =
  (match _lh_rewritewithlemmas_arg2_0 with
    | `LH_N -> 
      _lh_rewritewithlemmas_arg1_0
    | `LH_C(_lh_rewritewithlemmas_LH_C_0_0, _lh_rewritewithlemmas_LH_C_1_0) -> 
      (let rec _lh_matchIdent_2 = ((onewayunify_d0_d0 _lh_rewritewithlemmas_arg1_0) (cadr_d0_d0 _lh_rewritewithlemmas_LH_C_0_0)) in
        (match _lh_matchIdent_2 with
          | `LH_P2(_lh_rewritewithlemmas_LH_P2_0_0, _lh_rewritewithlemmas_LH_P2_1_0) -> 
            (if _lh_rewritewithlemmas_LH_P2_0_0 then
              ((rewrite_d0_d0 ((applysubst_d0_d0 _lh_rewritewithlemmas_LH_P2_1_0) (caddr_d0_d0 _lh_rewritewithlemmas_LH_C_0_0))) _lh_rewritewithlemmas_arg3_0)
            else
              (((rewritewithlemmas_d0_d0 _lh_rewritewithlemmas_arg1_0) _lh_rewritewithlemmas_LH_C_1_0) _lh_rewritewithlemmas_arg3_0))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0 _lh_rewrite_arg1_0 _lh_rewrite_arg2_0 =
  (match _lh_rewrite_arg1_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewrite_Atom_0_0) -> 
      (`Atom(_lh_rewrite_Atom_0_0))
    | `Cons(_lh_rewrite_Cons_0_0) -> 
      (match _lh_rewrite_Cons_0_0 with
        | `LH_P2(_lh_rewrite_LH_P2_0_0, _lh_rewrite_LH_P2_1_0) -> 
          (((rewritewithlemmas_d0_d0 (`Cons((`LH_P2(_lh_rewrite_LH_P2_0_0, ((rewriteargs_d0_d0 _lh_rewrite_LH_P2_1_0) _lh_rewrite_arg2_0)))))) (getLUT_d0_d0 (`LH_P2((tv_d2_d0 _lh_rewrite_LH_P2_0_0), _lh_rewrite_arg2_0)))) _lh_rewrite_arg2_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and statement_d0_d0 _lh_statement_arg1_0 =
  (mkLisplist_d1_d0 (strToToken_d1_d0 (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and strToToken_d0_d0 _lh_strToToken_arg1_1 =
  (match _lh_strToToken_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_4_0 = (getToken_d0_d0 _lh_strToToken_arg1_1) in
        _lh_matchIdent_4_0))
and strToToken_d1_d0 _lh_strToToken_arg1_2 =
  (match _lh_strToToken_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_4_1 = (getToken_d1_d0 _lh_strToToken_arg1_2) in
        _lh_matchIdent_4_1))
and strToToken_d2_d0 _lh_strToToken_arg1_0 =
  (match _lh_strToToken_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_1_0 = (getToken_d2_d0 _lh_strToToken_arg1_0) in
        _lh_matchIdent_1_0))
and subterm_d0_d0 _lh_subterm_arg1_0 =
  (let rec c_0 = ((mappend_d0_d0 (let rec h_0 = 'c' in
    (let rec t_0 = (fun ys_1 -> 
      ys_1) in
      (fun ys_2 -> 
        (`LH_C(h_0, ((mappend_d0_d0 t_0) ys_2))))))) (string_of_int _lh_subterm_arg1_0)) in
    (let rec str_0 = ((mappend_d1_d0 ((mappend_d2_d0 ((mappend_d3_d0 ((mappend_d4_d0 (`LH_C('(', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_0)) (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_0)) (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('[', (`LH_C(']', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('w', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (mkLisplist_d2_d0 (strToToken_d2_d0 str_0))))
and tautologyp_d0_d0 _lh_tautologyp_arg1_0 =
  (match _lh_tautologyp_arg1_0 with
    | `LH_P3(_lh_tautologyp_LH_P3_0_0, _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0) -> 
      (match _lh_tautologyp_LH_P3_0_0 with
        | `Nil -> 
          false
        | `Atom(_lh_tautologyp_Atom_0_0) -> 
          (truep_d0_d0 (`LH_P2((`Atom(_lh_tautologyp_Atom_0_0)), _lh_tautologyp_LH_P3_1_0)))
        | `Cons(_lh_tautologyp_Cons_0_0) -> 
          (match _lh_tautologyp_Cons_0_0 with
            | `LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0) -> 
              (if (truep_d1_d0 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0)))), _lh_tautologyp_LH_P3_1_0))) then
                true
              else
                (if (falsep_d0_d0 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0)))), _lh_tautologyp_LH_P3_2_0))) then
                  false
                else
                  (let rec _lh_matchIdent_2_0 = _lh_tautologyp_LH_P2_0_0 in
                    (match _lh_matchIdent_2_0 with
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
                                            (if (truep_d2_d0 (`LH_P2((car_d1_d2_d0 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0))) then
                                              (tautologyp_d0_d0 (`LH_P3((cadr_d1_d0 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0)))
                                            else
                                              (if (falsep_d1_d0 (`LH_P2((car_d1_d3_d0 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_2_0))) then
                                                (tautologyp_d0_d0 (`LH_P3((caddr_d1_d0 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0)))
                                              else
                                                ((tautologyp_d0_d0 (`LH_P3((cadr_d2_d0 _lh_tautologyp_LH_P2_1_0), (`Cons((`LH_P2((car_d1_d4_d0 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0)))), _lh_tautologyp_LH_P3_2_0))) && (tautologyp_d0_d0 (`LH_P3((caddr_d2_d0 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, (`Cons((`LH_P2((car_d1_d5_d0 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_2_0))))))))))
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
and tautp_d0_d0 _lh_tautp_arg1_0 =
  (tautologyp_d0_d0 (`LH_P3(((rewrite_d0_d0 _lh_tautp_arg1_0) (lemmas_d0_d0 0)), (`Nil), (`Nil))))
and testBoyer2_nofib_d0_d0 _lh_testBoyer2_nofib_arg1_0 =
  (report_d0_d0 (testresult_d0_d0 _lh_testBoyer2_nofib_arg1_0))
and testresult_d0_d0 _lh_testresult_arg1_0 =
  (tautp_d0_d0 (teststatement_d0_d0 _lh_testresult_arg1_0))
and teststatement_d0_d0 _lh_teststatement_arg1_0 =
  ((applysubst_d1_d0 (subterm_d0_d0 _lh_teststatement_arg1_0)) (statement_d0_d0 0))
and truep_d0_d0 _lh_truep_arg1_2 =
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
                                  (lispmember_d2_d0 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                            | _ -> 
                              (lispmember_d2_d1 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                        | _ -> 
                          (lispmember_d2_d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                    | _ -> 
                      (lispmember_d2_d3 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                | _ -> 
                  (lispmember_d2_d4 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
            | _ -> 
              (lispmember_d2_d5 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
        | _ -> 
          (lispmember_d2_d6 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
    | _ -> 
      (failwith "error"))
and truep_d1_d0 _lh_truep_arg1_0 =
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
                                  (lispmember_d3_d0 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                            | _ -> 
                              (lispmember_d3_d1 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                        | _ -> 
                          (lispmember_d3_d2 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                    | _ -> 
                      (lispmember_d3_d3 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                | _ -> 
                  (lispmember_d3_d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
            | _ -> 
              (lispmember_d3_d5 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
        | _ -> 
          (lispmember_d3_d6 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
    | _ -> 
      (failwith "error"))
and truep_d2_d0 _lh_truep_arg1_1 =
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
                                  (lispmember_d4_d0 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember_d4_d1 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember_d4_d2 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember_d4_d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                | _ -> 
                  (lispmember_d4_d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
            | _ -> 
              (lispmember_d4_d5 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
        | _ -> 
          (lispmember_d4_d6 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"));;

(* lumberhack_pop_out *)
let rec addlemmalst_d0_d0_d0 _lh_addlemmalst_arg1_2 _lh_addlemmalst_arg2_6 =
  (_lh_addlemmalst_arg1_2 _lh_addlemmalst_arg2_6);;
let rec addlemmalst_d0_d0_d1 _lh_addlemmalst_arg1_1 _lh_addlemmalst_arg2_5 =
  (_lh_addlemmalst_arg1_1 _lh_addlemmalst_arg2_5);;
let rec addtoLUT_d0_d0_d0 _lh_addtoLUT_arg1_1 =
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
                      (`Node((`LH_P3((addtoLUT_d0_d0_d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_2, _lh_addtoLUT_LH_P3_1_2, _lh_addtoLUT_LH_P3_0_3))), (`LH_P2(_lh_addtoLUT_LH_P2_0_1, _lh_addtoLUT_LH_P2_1_1)), _lh_addtoLUT_LH_P3_2_3))))
                    else
                      (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_3, (`LH_P2(_lh_addtoLUT_LH_P2_0_1, _lh_addtoLUT_LH_P2_1_1)), (addtoLUT_d0_d0_d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_2, _lh_addtoLUT_LH_P3_1_2, _lh_addtoLUT_LH_P3_2_3)))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc_d0_d0_d0 _lh_assoc_arg1_4 =
  (match _lh_assoc_arg1_4 with
    | `LH_P2(_lh_assoc_LH_P2_0_1_2, _lh_assoc_LH_P2_1_1_2) -> 
      (match _lh_assoc_LH_P2_1_1_2 with
        | `Cons(_lh_assoc_Cons_0_8) -> 
          (match _lh_assoc_Cons_0_8 with
            | `LH_P2(_lh_assoc_LH_P2_0_1_3, _lh_assoc_LH_P2_1_1_3) -> 
              (let rec _lh_matchIdent_6_9 = _lh_assoc_LH_P2_0_1_3 in
                (match _lh_matchIdent_6_9 with
                  | `Cons(_lh_assoc_Cons_0_9) -> 
                    (match _lh_assoc_Cons_0_9 with
                      | `LH_P2(_lh_assoc_LH_P2_0_1_4, _lh_assoc_LH_P2_1_1_4) -> 
                        (match _lh_assoc_LH_P2_0_1_4 with
                          | `Atom(_lh_assoc_Atom_0_4) -> 
                            (if (_lh_assoc_LH_P2_0_1_2 = (`Atom(_lh_assoc_Atom_0_4))) then
                              _lh_assoc_LH_P2_0_1_3
                            else
                              (assoc_d0_d0_d0 (`LH_P2(_lh_assoc_LH_P2_0_1_2, _lh_assoc_LH_P2_1_1_3))))
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
let rec assoc_d1_d0_d0 _lh_assoc_arg1_3 =
  (match _lh_assoc_arg1_3 with
    | `LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_9) -> 
      (match _lh_assoc_LH_P2_1_9 with
        | `Cons(_lh_assoc_Cons_0_6) -> 
          (match _lh_assoc_Cons_0_6 with
            | `LH_P2(_lh_assoc_LH_P2_0_1_0, _lh_assoc_LH_P2_1_1_0) -> 
              (let rec _lh_matchIdent_5_1 = _lh_assoc_LH_P2_0_1_0 in
                (match _lh_matchIdent_5_1 with
                  | `Cons(_lh_assoc_Cons_0_7) -> 
                    (match _lh_assoc_Cons_0_7 with
                      | `LH_P2(_lh_assoc_LH_P2_0_1_1, _lh_assoc_LH_P2_1_1_1) -> 
                        (match _lh_assoc_LH_P2_0_1_1 with
                          | `Atom(_lh_assoc_Atom_0_3) -> 
                            (if (_lh_assoc_LH_P2_0_9 = (`Atom(_lh_assoc_Atom_0_3))) then
                              _lh_assoc_LH_P2_0_1_0
                            else
                              (assoc_d1_d0_d0 (`LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_1_0))))
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
let rec assoc_d2_d0_d0 _lh_assoc_arg1_5 =
  (match _lh_assoc_arg1_5 with
    | `LH_P2(_lh_assoc_LH_P2_0_1_5, _lh_assoc_LH_P2_1_1_5) -> 
      (match _lh_assoc_LH_P2_1_1_5 with
        | `Cons(_lh_assoc_Cons_0_1_0) -> 
          (match _lh_assoc_Cons_0_1_0 with
            | `LH_P2(_lh_assoc_LH_P2_0_1_6, _lh_assoc_LH_P2_1_1_6) -> 
              (let rec _lh_matchIdent_7_2 = _lh_assoc_LH_P2_0_1_6 in
                (match _lh_matchIdent_7_2 with
                  | `Cons(_lh_assoc_Cons_0_1_1) -> 
                    (match _lh_assoc_Cons_0_1_1 with
                      | `LH_P2(_lh_assoc_LH_P2_0_1_7, _lh_assoc_LH_P2_1_1_7) -> 
                        (match _lh_assoc_LH_P2_0_1_7 with
                          | `Atom(_lh_assoc_Atom_0_5) -> 
                            (if (_lh_assoc_LH_P2_0_1_5 = (`Atom(_lh_assoc_Atom_0_5))) then
                              _lh_assoc_LH_P2_0_1_6
                            else
                              (assoc_d2_d0_d0 (`LH_P2(_lh_assoc_LH_P2_0_1_5, _lh_assoc_LH_P2_1_1_6))))
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
let rec atom_d0_d0_d0 _lh_atom_arg1_3 =
  (match _lh_atom_arg1_3 with
    | `Atom(_lh_atom_Atom_0_3) -> 
      true
    | _ -> 
      false);;
let rec atom_d1_d0_d0 _lh_atom_arg1_5 =
  (match _lh_atom_arg1_5 with
    | `Atom(_lh_atom_Atom_0_5) -> 
      true
    | _ -> 
      false);;
let rec atom_d2_d0_d0 _lh_atom_arg1_4 =
  (match _lh_atom_arg1_4 with
    | `Atom(_lh_atom_Atom_0_4) -> 
      true
    | _ -> 
      false);;
let rec car_d0_d0_d0 _lh_car_arg1_3_0 =
  (match _lh_car_arg1_3_0 with
    | `Cons(_lh_car_Cons_0_3_0) -> 
      (match _lh_car_Cons_0_3_0 with
        | `LH_P2(_lh_car_LH_P2_0_3_0, _lh_car_LH_P2_1_3_0) -> 
          _lh_car_LH_P2_0_3_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d0_d0 _lh_car_arg1_2_1 =
  (match _lh_car_arg1_2_1 with
    | `Cons(_lh_car_Cons_0_2_1) -> 
      (match _lh_car_Cons_0_2_1 with
        | `LH_P2(_lh_car_LH_P2_0_2_1, _lh_car_LH_P2_1_2_1) -> 
          _lh_car_LH_P2_0_2_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d0_d0_d0 _lh_car_arg1_1_6 =
  (match _lh_car_arg1_1_6 with
    | `Cons(_lh_car_Cons_0_1_6) -> 
      (match _lh_car_Cons_0_1_6 with
        | `LH_P2(_lh_car_LH_P2_0_1_6, _lh_car_LH_P2_1_1_6) -> 
          _lh_car_LH_P2_0_1_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d1_d0_d0 _lh_car_arg1_2_2 =
  (match _lh_car_arg1_2_2 with
    | `Cons(_lh_car_Cons_0_2_2) -> 
      (match _lh_car_Cons_0_2_2 with
        | `LH_P2(_lh_car_LH_P2_0_2_2, _lh_car_LH_P2_1_2_2) -> 
          _lh_car_LH_P2_0_2_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d2_d0_d0 _lh_car_arg1_3_1 =
  (match _lh_car_arg1_3_1 with
    | `Cons(_lh_car_Cons_0_3_1) -> 
      (match _lh_car_Cons_0_3_1 with
        | `LH_P2(_lh_car_LH_P2_0_3_1, _lh_car_LH_P2_1_3_1) -> 
          _lh_car_LH_P2_0_3_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d3_d0_d0 _lh_car_arg1_2_7 =
  (match _lh_car_arg1_2_7 with
    | `Cons(_lh_car_Cons_0_2_7) -> 
      (match _lh_car_Cons_0_2_7 with
        | `LH_P2(_lh_car_LH_P2_0_2_7, _lh_car_LH_P2_1_2_7) -> 
          _lh_car_LH_P2_0_2_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d4_d0_d0 _lh_car_arg1_2_0 =
  (match _lh_car_arg1_2_0 with
    | `Cons(_lh_car_Cons_0_2_0) -> 
      (match _lh_car_Cons_0_2_0 with
        | `LH_P2(_lh_car_LH_P2_0_2_0, _lh_car_LH_P2_1_2_0) -> 
          _lh_car_LH_P2_0_2_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d1_d5_d0_d0 _lh_car_arg1_1_7 =
  (match _lh_car_arg1_1_7 with
    | `Cons(_lh_car_Cons_0_1_7) -> 
      (match _lh_car_Cons_0_1_7 with
        | `LH_P2(_lh_car_LH_P2_0_1_7, _lh_car_LH_P2_1_1_7) -> 
          _lh_car_LH_P2_0_1_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d2_d0_d0 _lh_car_arg1_2_3 =
  (match _lh_car_arg1_2_3 with
    | `Cons(_lh_car_Cons_0_2_3) -> 
      (match _lh_car_Cons_0_2_3 with
        | `LH_P2(_lh_car_LH_P2_0_2_3, _lh_car_LH_P2_1_2_3) -> 
          _lh_car_LH_P2_0_2_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d3_d0_d0 _lh_car_arg1_2_5 =
  (match _lh_car_arg1_2_5 with
    | `Cons(_lh_car_Cons_0_2_5) -> 
      (match _lh_car_Cons_0_2_5 with
        | `LH_P2(_lh_car_LH_P2_0_2_5, _lh_car_LH_P2_1_2_5) -> 
          _lh_car_LH_P2_0_2_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d4_d0_d0 _lh_car_arg1_1_8 =
  (match _lh_car_arg1_1_8 with
    | `Cons(_lh_car_Cons_0_1_8) -> 
      (match _lh_car_Cons_0_1_8 with
        | `LH_P2(_lh_car_LH_P2_0_1_8, _lh_car_LH_P2_1_1_8) -> 
          _lh_car_LH_P2_0_1_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d5_d0_d0 _lh_car_arg1_2_9 =
  (match _lh_car_arg1_2_9 with
    | `Cons(_lh_car_Cons_0_2_9) -> 
      (match _lh_car_Cons_0_2_9 with
        | `LH_P2(_lh_car_LH_P2_0_2_9, _lh_car_LH_P2_1_2_9) -> 
          _lh_car_LH_P2_0_2_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d6_d0_d0 _lh_car_arg1_1_9 =
  (match _lh_car_arg1_1_9 with
    | `Cons(_lh_car_Cons_0_1_9) -> 
      (match _lh_car_Cons_0_1_9 with
        | `LH_P2(_lh_car_LH_P2_0_1_9, _lh_car_LH_P2_1_1_9) -> 
          _lh_car_LH_P2_0_1_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d7_d0_d0 _lh_car_arg1_2_6 =
  (match _lh_car_arg1_2_6 with
    | `Cons(_lh_car_Cons_0_2_6) -> 
      (match _lh_car_Cons_0_2_6 with
        | `LH_P2(_lh_car_LH_P2_0_2_6, _lh_car_LH_P2_1_2_6) -> 
          _lh_car_LH_P2_0_2_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d8_d0_d0 _lh_car_arg1_2_8 =
  (match _lh_car_arg1_2_8 with
    | `Cons(_lh_car_Cons_0_2_8) -> 
      (match _lh_car_Cons_0_2_8 with
        | `LH_P2(_lh_car_LH_P2_0_2_8, _lh_car_LH_P2_1_2_8) -> 
          _lh_car_LH_P2_0_2_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car_d9_d0_d0 _lh_car_arg1_2_4 =
  (match _lh_car_arg1_2_4 with
    | `Cons(_lh_car_Cons_0_2_4) -> 
      (match _lh_car_Cons_0_2_4 with
        | `LH_P2(_lh_car_LH_P2_0_2_4, _lh_car_LH_P2_1_2_4) -> 
          _lh_car_LH_P2_0_2_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d0_d0_d0 _lh_cdr_arg1_1_6 =
  (match _lh_cdr_arg1_1_6 with
    | `Cons(_lh_cdr_Cons_0_1_6) -> 
      (match _lh_cdr_Cons_0_1_6 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_6, _lh_cdr_LH_P2_1_1_6) -> 
          _lh_cdr_LH_P2_1_1_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d0_d0 _lh_cdr_arg1_2_2 =
  (match _lh_cdr_arg1_2_2 with
    | `Cons(_lh_cdr_Cons_0_2_2) -> 
      (match _lh_cdr_Cons_0_2_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_2_2, _lh_cdr_LH_P2_1_2_2) -> 
          _lh_cdr_LH_P2_1_2_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d0_d0_d0 _lh_cdr_arg1_2_1 =
  (match _lh_cdr_arg1_2_1 with
    | `Cons(_lh_cdr_Cons_0_2_1) -> 
      (match _lh_cdr_Cons_0_2_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_2_1, _lh_cdr_LH_P2_1_2_1) -> 
          _lh_cdr_LH_P2_1_2_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d1_d0_d0 _lh_cdr_arg1_1_3 =
  (match _lh_cdr_arg1_1_3 with
    | `Cons(_lh_cdr_Cons_0_1_3) -> 
      (match _lh_cdr_Cons_0_1_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_3, _lh_cdr_LH_P2_1_1_3) -> 
          _lh_cdr_LH_P2_1_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d1_d2_d0_d0 _lh_cdr_arg1_2_3 =
  (match _lh_cdr_arg1_2_3 with
    | `Cons(_lh_cdr_Cons_0_2_3) -> 
      (match _lh_cdr_Cons_0_2_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_2_3, _lh_cdr_LH_P2_1_2_3) -> 
          _lh_cdr_LH_P2_1_2_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d2_d0_d0 _lh_cdr_arg1_1_9 =
  (match _lh_cdr_arg1_1_9 with
    | `Cons(_lh_cdr_Cons_0_1_9) -> 
      (match _lh_cdr_Cons_0_1_9 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_9, _lh_cdr_LH_P2_1_1_9) -> 
          _lh_cdr_LH_P2_1_1_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d3_d0_d0 _lh_cdr_arg1_2_4 =
  (match _lh_cdr_arg1_2_4 with
    | `Cons(_lh_cdr_Cons_0_2_4) -> 
      (match _lh_cdr_Cons_0_2_4 with
        | `LH_P2(_lh_cdr_LH_P2_0_2_4, _lh_cdr_LH_P2_1_2_4) -> 
          _lh_cdr_LH_P2_1_2_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d4_d0_d0 _lh_cdr_arg1_1_4 =
  (match _lh_cdr_arg1_1_4 with
    | `Cons(_lh_cdr_Cons_0_1_4) -> 
      (match _lh_cdr_Cons_0_1_4 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_4, _lh_cdr_LH_P2_1_1_4) -> 
          _lh_cdr_LH_P2_1_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d5_d0_d0 _lh_cdr_arg1_2_0 =
  (match _lh_cdr_arg1_2_0 with
    | `Cons(_lh_cdr_Cons_0_2_0) -> 
      (match _lh_cdr_Cons_0_2_0 with
        | `LH_P2(_lh_cdr_LH_P2_0_2_0, _lh_cdr_LH_P2_1_2_0) -> 
          _lh_cdr_LH_P2_1_2_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d6_d0_d0 _lh_cdr_arg1_1_5 =
  (match _lh_cdr_arg1_1_5 with
    | `Cons(_lh_cdr_Cons_0_1_5) -> 
      (match _lh_cdr_Cons_0_1_5 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_5, _lh_cdr_LH_P2_1_1_5) -> 
          _lh_cdr_LH_P2_1_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d7_d0_d0 _lh_cdr_arg1_2_5 =
  (match _lh_cdr_arg1_2_5 with
    | `Cons(_lh_cdr_Cons_0_2_5) -> 
      (match _lh_cdr_Cons_0_2_5 with
        | `LH_P2(_lh_cdr_LH_P2_0_2_5, _lh_cdr_LH_P2_1_2_5) -> 
          _lh_cdr_LH_P2_1_2_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d8_d0_d0 _lh_cdr_arg1_1_7 =
  (match _lh_cdr_arg1_1_7 with
    | `Cons(_lh_cdr_Cons_0_1_7) -> 
      (match _lh_cdr_Cons_0_1_7 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_7, _lh_cdr_LH_P2_1_1_7) -> 
          _lh_cdr_LH_P2_1_1_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr_d9_d0_d0 _lh_cdr_arg1_1_8 =
  (match _lh_cdr_arg1_1_8 with
    | `Cons(_lh_cdr_Cons_0_1_8) -> 
      (match _lh_cdr_Cons_0_1_8 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_8, _lh_cdr_LH_P2_1_1_8) -> 
          _lh_cdr_LH_P2_1_1_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec getLUT_d0_d0_d0 _lh_getLUT_arg1_1 =
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
                      (getLUT_d0_d0_d0 (`LH_P2(_lh_getLUT_LH_P2_0_2, _lh_getLUT_LH_P3_0_1)))
                    else
                      (getLUT_d0_d0_d0 (`LH_P2(_lh_getLUT_LH_P2_0_2, _lh_getLUT_LH_P3_2_1)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d0_d0 _lh_lispmember_arg1_6_3 =
  (match _lh_lispmember_arg1_6_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_2_6, _lh_lispmember_LH_P2_1_1_2_6) -> 
      (match _lh_lispmember_LH_P2_1_1_2_6 with
        | `Cons(_lh_lispmember_Cons_0_6_3) -> 
          (match _lh_lispmember_Cons_0_6_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_2_7, _lh_lispmember_LH_P2_1_1_2_7) -> 
              (if (_lh_lispmember_LH_P2_0_1_2_6 = _lh_lispmember_LH_P2_0_1_2_7) then
                true
              else
                (lispmember_d0_d0_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_2_6, _lh_lispmember_LH_P2_1_1_2_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d1_d0 _lh_lispmember_arg1_6_1 =
  (match _lh_lispmember_arg1_6_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_2_2, _lh_lispmember_LH_P2_1_1_2_2) -> 
      (match _lh_lispmember_LH_P2_1_1_2_2 with
        | `Cons(_lh_lispmember_Cons_0_6_1) -> 
          (match _lh_lispmember_Cons_0_6_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_2_3, _lh_lispmember_LH_P2_1_1_2_3) -> 
              (if (_lh_lispmember_LH_P2_0_1_2_2 = _lh_lispmember_LH_P2_0_1_2_3) then
                true
              else
                (lispmember_d0_d1_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_2_2, _lh_lispmember_LH_P2_1_1_2_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d2_d0 _lh_lispmember_arg1_4_2 =
  (match _lh_lispmember_arg1_4_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8_4, _lh_lispmember_LH_P2_1_8_4) -> 
      (match _lh_lispmember_LH_P2_1_8_4 with
        | `Cons(_lh_lispmember_Cons_0_4_2) -> 
          (match _lh_lispmember_Cons_0_4_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_8_5, _lh_lispmember_LH_P2_1_8_5) -> 
              (if (_lh_lispmember_LH_P2_0_8_4 = _lh_lispmember_LH_P2_0_8_5) then
                true
              else
                (lispmember_d0_d2_d0 (`LH_P2(_lh_lispmember_LH_P2_0_8_4, _lh_lispmember_LH_P2_1_8_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d3_d0 _lh_lispmember_arg1_3_5 =
  (match _lh_lispmember_arg1_3_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_7_0, _lh_lispmember_LH_P2_1_7_0) -> 
      (match _lh_lispmember_LH_P2_1_7_0 with
        | `Cons(_lh_lispmember_Cons_0_3_5) -> 
          (match _lh_lispmember_Cons_0_3_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7_1, _lh_lispmember_LH_P2_1_7_1) -> 
              (if (_lh_lispmember_LH_P2_0_7_0 = _lh_lispmember_LH_P2_0_7_1) then
                true
              else
                (lispmember_d0_d3_d0 (`LH_P2(_lh_lispmember_LH_P2_0_7_0, _lh_lispmember_LH_P2_1_7_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d4_d0 _lh_lispmember_arg1_5_8 =
  (match _lh_lispmember_arg1_5_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_1_6, _lh_lispmember_LH_P2_1_1_1_6) -> 
      (match _lh_lispmember_LH_P2_1_1_1_6 with
        | `Cons(_lh_lispmember_Cons_0_5_8) -> 
          (match _lh_lispmember_Cons_0_5_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1_7, _lh_lispmember_LH_P2_1_1_1_7) -> 
              (if (_lh_lispmember_LH_P2_0_1_1_6 = _lh_lispmember_LH_P2_0_1_1_7) then
                true
              else
                (lispmember_d0_d4_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_1_6, _lh_lispmember_LH_P2_1_1_1_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d5_d0 _lh_lispmember_arg1_5_5 =
  (match _lh_lispmember_arg1_5_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_1_0, _lh_lispmember_LH_P2_1_1_1_0) -> 
      (match _lh_lispmember_LH_P2_1_1_1_0 with
        | `Cons(_lh_lispmember_Cons_0_5_5) -> 
          (match _lh_lispmember_Cons_0_5_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1_1, _lh_lispmember_LH_P2_1_1_1_1) -> 
              (if (_lh_lispmember_LH_P2_0_1_1_0 = _lh_lispmember_LH_P2_0_1_1_1) then
                true
              else
                (lispmember_d0_d5_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_1_0, _lh_lispmember_LH_P2_1_1_1_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d0_d6_d0 _lh_lispmember_arg1_6_6 =
  (match _lh_lispmember_arg1_6_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_3_2, _lh_lispmember_LH_P2_1_1_3_2) -> 
      (match _lh_lispmember_LH_P2_1_1_3_2 with
        | `Cons(_lh_lispmember_Cons_0_6_6) -> 
          (match _lh_lispmember_Cons_0_6_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_3_3, _lh_lispmember_LH_P2_1_1_3_3) -> 
              (if (_lh_lispmember_LH_P2_0_1_3_2 = _lh_lispmember_LH_P2_0_1_3_3) then
                true
              else
                (lispmember_d0_d6_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_3_2, _lh_lispmember_LH_P2_1_1_3_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d0_d0 _lh_lispmember_arg1_3_7 =
  (match _lh_lispmember_arg1_3_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_7_4, _lh_lispmember_LH_P2_1_7_4) -> 
      (match _lh_lispmember_LH_P2_1_7_4 with
        | `Cons(_lh_lispmember_Cons_0_3_7) -> 
          (match _lh_lispmember_Cons_0_3_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7_5, _lh_lispmember_LH_P2_1_7_5) -> 
              (if (_lh_lispmember_LH_P2_0_7_4 = _lh_lispmember_LH_P2_0_7_5) then
                true
              else
                (lispmember_d1_d0_d0 (`LH_P2(_lh_lispmember_LH_P2_0_7_4, _lh_lispmember_LH_P2_1_7_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d1_d0 _lh_lispmember_arg1_5_0 =
  (match _lh_lispmember_arg1_5_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0_0, _lh_lispmember_LH_P2_1_1_0_0) -> 
      (match _lh_lispmember_LH_P2_1_1_0_0 with
        | `Cons(_lh_lispmember_Cons_0_5_0) -> 
          (match _lh_lispmember_Cons_0_5_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_0_1, _lh_lispmember_LH_P2_1_1_0_1) -> 
              (if (_lh_lispmember_LH_P2_0_1_0_0 = _lh_lispmember_LH_P2_0_1_0_1) then
                true
              else
                (lispmember_d1_d1_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_0_0, _lh_lispmember_LH_P2_1_1_0_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d2_d0 _lh_lispmember_arg1_4_5 =
  (match _lh_lispmember_arg1_4_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_9_0, _lh_lispmember_LH_P2_1_9_0) -> 
      (match _lh_lispmember_LH_P2_1_9_0 with
        | `Cons(_lh_lispmember_Cons_0_4_5) -> 
          (match _lh_lispmember_Cons_0_4_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9_1, _lh_lispmember_LH_P2_1_9_1) -> 
              (if (_lh_lispmember_LH_P2_0_9_0 = _lh_lispmember_LH_P2_0_9_1) then
                true
              else
                (lispmember_d1_d2_d0 (`LH_P2(_lh_lispmember_LH_P2_0_9_0, _lh_lispmember_LH_P2_1_9_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d3_d0 _lh_lispmember_arg1_5_7 =
  (match _lh_lispmember_arg1_5_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_1_4, _lh_lispmember_LH_P2_1_1_1_4) -> 
      (match _lh_lispmember_LH_P2_1_1_1_4 with
        | `Cons(_lh_lispmember_Cons_0_5_7) -> 
          (match _lh_lispmember_Cons_0_5_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1_5, _lh_lispmember_LH_P2_1_1_1_5) -> 
              (if (_lh_lispmember_LH_P2_0_1_1_4 = _lh_lispmember_LH_P2_0_1_1_5) then
                true
              else
                (lispmember_d1_d3_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_1_4, _lh_lispmember_LH_P2_1_1_1_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d4_d0 _lh_lispmember_arg1_3_8 =
  (match _lh_lispmember_arg1_3_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_7_6, _lh_lispmember_LH_P2_1_7_6) -> 
      (match _lh_lispmember_LH_P2_1_7_6 with
        | `Cons(_lh_lispmember_Cons_0_3_8) -> 
          (match _lh_lispmember_Cons_0_3_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7_7, _lh_lispmember_LH_P2_1_7_7) -> 
              (if (_lh_lispmember_LH_P2_0_7_6 = _lh_lispmember_LH_P2_0_7_7) then
                true
              else
                (lispmember_d1_d4_d0 (`LH_P2(_lh_lispmember_LH_P2_0_7_6, _lh_lispmember_LH_P2_1_7_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d5_d0 _lh_lispmember_arg1_4_1 =
  (match _lh_lispmember_arg1_4_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8_2, _lh_lispmember_LH_P2_1_8_2) -> 
      (match _lh_lispmember_LH_P2_1_8_2 with
        | `Cons(_lh_lispmember_Cons_0_4_1) -> 
          (match _lh_lispmember_Cons_0_4_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_8_3, _lh_lispmember_LH_P2_1_8_3) -> 
              (if (_lh_lispmember_LH_P2_0_8_2 = _lh_lispmember_LH_P2_0_8_3) then
                true
              else
                (lispmember_d1_d5_d0 (`LH_P2(_lh_lispmember_LH_P2_0_8_2, _lh_lispmember_LH_P2_1_8_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d1_d6_d0 _lh_lispmember_arg1_5_1 =
  (match _lh_lispmember_arg1_5_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0_2, _lh_lispmember_LH_P2_1_1_0_2) -> 
      (match _lh_lispmember_LH_P2_1_1_0_2 with
        | `Cons(_lh_lispmember_Cons_0_5_1) -> 
          (match _lh_lispmember_Cons_0_5_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_0_3, _lh_lispmember_LH_P2_1_1_0_3) -> 
              (if (_lh_lispmember_LH_P2_0_1_0_2 = _lh_lispmember_LH_P2_0_1_0_3) then
                true
              else
                (lispmember_d1_d6_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_0_2, _lh_lispmember_LH_P2_1_1_0_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d0_d0 _lh_lispmember_arg1_4_0 =
  (match _lh_lispmember_arg1_4_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8_0, _lh_lispmember_LH_P2_1_8_0) -> 
      (match _lh_lispmember_LH_P2_1_8_0 with
        | `Cons(_lh_lispmember_Cons_0_4_0) -> 
          (match _lh_lispmember_Cons_0_4_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_8_1, _lh_lispmember_LH_P2_1_8_1) -> 
              (if (_lh_lispmember_LH_P2_0_8_0 = _lh_lispmember_LH_P2_0_8_1) then
                true
              else
                (lispmember_d2_d0_d0 (`LH_P2(_lh_lispmember_LH_P2_0_8_0, _lh_lispmember_LH_P2_1_8_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d1_d0 _lh_lispmember_arg1_4_4 =
  (match _lh_lispmember_arg1_4_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8_8, _lh_lispmember_LH_P2_1_8_8) -> 
      (match _lh_lispmember_LH_P2_1_8_8 with
        | `Cons(_lh_lispmember_Cons_0_4_4) -> 
          (match _lh_lispmember_Cons_0_4_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_8_9, _lh_lispmember_LH_P2_1_8_9) -> 
              (if (_lh_lispmember_LH_P2_0_8_8 = _lh_lispmember_LH_P2_0_8_9) then
                true
              else
                (lispmember_d2_d1_d0 (`LH_P2(_lh_lispmember_LH_P2_0_8_8, _lh_lispmember_LH_P2_1_8_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d2_d0 _lh_lispmember_arg1_4_9 =
  (match _lh_lispmember_arg1_4_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_9_8, _lh_lispmember_LH_P2_1_9_8) -> 
      (match _lh_lispmember_LH_P2_1_9_8 with
        | `Cons(_lh_lispmember_Cons_0_4_9) -> 
          (match _lh_lispmember_Cons_0_4_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9_9, _lh_lispmember_LH_P2_1_9_9) -> 
              (if (_lh_lispmember_LH_P2_0_9_8 = _lh_lispmember_LH_P2_0_9_9) then
                true
              else
                (lispmember_d2_d2_d0 (`LH_P2(_lh_lispmember_LH_P2_0_9_8, _lh_lispmember_LH_P2_1_9_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d3_d0 _lh_lispmember_arg1_4_6 =
  (match _lh_lispmember_arg1_4_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_9_2, _lh_lispmember_LH_P2_1_9_2) -> 
      (match _lh_lispmember_LH_P2_1_9_2 with
        | `Cons(_lh_lispmember_Cons_0_4_6) -> 
          (match _lh_lispmember_Cons_0_4_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9_3, _lh_lispmember_LH_P2_1_9_3) -> 
              (if (_lh_lispmember_LH_P2_0_9_2 = _lh_lispmember_LH_P2_0_9_3) then
                true
              else
                (lispmember_d2_d3_d0 (`LH_P2(_lh_lispmember_LH_P2_0_9_2, _lh_lispmember_LH_P2_1_9_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d4_d0 _lh_lispmember_arg1_4_7 =
  (match _lh_lispmember_arg1_4_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_9_4, _lh_lispmember_LH_P2_1_9_4) -> 
      (match _lh_lispmember_LH_P2_1_9_4 with
        | `Cons(_lh_lispmember_Cons_0_4_7) -> 
          (match _lh_lispmember_Cons_0_4_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9_5, _lh_lispmember_LH_P2_1_9_5) -> 
              (if (_lh_lispmember_LH_P2_0_9_4 = _lh_lispmember_LH_P2_0_9_5) then
                true
              else
                (lispmember_d2_d4_d0 (`LH_P2(_lh_lispmember_LH_P2_0_9_4, _lh_lispmember_LH_P2_1_9_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d5_d0 _lh_lispmember_arg1_4_3 =
  (match _lh_lispmember_arg1_4_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8_6, _lh_lispmember_LH_P2_1_8_6) -> 
      (match _lh_lispmember_LH_P2_1_8_6 with
        | `Cons(_lh_lispmember_Cons_0_4_3) -> 
          (match _lh_lispmember_Cons_0_4_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_8_7, _lh_lispmember_LH_P2_1_8_7) -> 
              (if (_lh_lispmember_LH_P2_0_8_6 = _lh_lispmember_LH_P2_0_8_7) then
                true
              else
                (lispmember_d2_d5_d0 (`LH_P2(_lh_lispmember_LH_P2_0_8_6, _lh_lispmember_LH_P2_1_8_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d2_d6_d0 _lh_lispmember_arg1_5_3 =
  (match _lh_lispmember_arg1_5_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0_6, _lh_lispmember_LH_P2_1_1_0_6) -> 
      (match _lh_lispmember_LH_P2_1_1_0_6 with
        | `Cons(_lh_lispmember_Cons_0_5_3) -> 
          (match _lh_lispmember_Cons_0_5_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_0_7, _lh_lispmember_LH_P2_1_1_0_7) -> 
              (if (_lh_lispmember_LH_P2_0_1_0_6 = _lh_lispmember_LH_P2_0_1_0_7) then
                true
              else
                (lispmember_d2_d6_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_0_6, _lh_lispmember_LH_P2_1_1_0_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d0_d0 _lh_lispmember_arg1_4_8 =
  (match _lh_lispmember_arg1_4_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_9_6, _lh_lispmember_LH_P2_1_9_6) -> 
      (match _lh_lispmember_LH_P2_1_9_6 with
        | `Cons(_lh_lispmember_Cons_0_4_8) -> 
          (match _lh_lispmember_Cons_0_4_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9_7, _lh_lispmember_LH_P2_1_9_7) -> 
              (if (_lh_lispmember_LH_P2_0_9_6 = _lh_lispmember_LH_P2_0_9_7) then
                true
              else
                (lispmember_d3_d0_d0 (`LH_P2(_lh_lispmember_LH_P2_0_9_6, _lh_lispmember_LH_P2_1_9_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d1_d0 _lh_lispmember_arg1_3_6 =
  (match _lh_lispmember_arg1_3_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_7_2, _lh_lispmember_LH_P2_1_7_2) -> 
      (match _lh_lispmember_LH_P2_1_7_2 with
        | `Cons(_lh_lispmember_Cons_0_3_6) -> 
          (match _lh_lispmember_Cons_0_3_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7_3, _lh_lispmember_LH_P2_1_7_3) -> 
              (if (_lh_lispmember_LH_P2_0_7_2 = _lh_lispmember_LH_P2_0_7_3) then
                true
              else
                (lispmember_d3_d1_d0 (`LH_P2(_lh_lispmember_LH_P2_0_7_2, _lh_lispmember_LH_P2_1_7_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d2_d0 _lh_lispmember_arg1_5_4 =
  (match _lh_lispmember_arg1_5_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0_8, _lh_lispmember_LH_P2_1_1_0_8) -> 
      (match _lh_lispmember_LH_P2_1_1_0_8 with
        | `Cons(_lh_lispmember_Cons_0_5_4) -> 
          (match _lh_lispmember_Cons_0_5_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_0_9, _lh_lispmember_LH_P2_1_1_0_9) -> 
              (if (_lh_lispmember_LH_P2_0_1_0_8 = _lh_lispmember_LH_P2_0_1_0_9) then
                true
              else
                (lispmember_d3_d2_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_0_8, _lh_lispmember_LH_P2_1_1_0_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d3_d0 _lh_lispmember_arg1_6_4 =
  (match _lh_lispmember_arg1_6_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_2_8, _lh_lispmember_LH_P2_1_1_2_8) -> 
      (match _lh_lispmember_LH_P2_1_1_2_8 with
        | `Cons(_lh_lispmember_Cons_0_6_4) -> 
          (match _lh_lispmember_Cons_0_6_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_2_9, _lh_lispmember_LH_P2_1_1_2_9) -> 
              (if (_lh_lispmember_LH_P2_0_1_2_8 = _lh_lispmember_LH_P2_0_1_2_9) then
                true
              else
                (lispmember_d3_d3_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_2_8, _lh_lispmember_LH_P2_1_1_2_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d4_d0 _lh_lispmember_arg1_6_0 =
  (match _lh_lispmember_arg1_6_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_2_0, _lh_lispmember_LH_P2_1_1_2_0) -> 
      (match _lh_lispmember_LH_P2_1_1_2_0 with
        | `Cons(_lh_lispmember_Cons_0_6_0) -> 
          (match _lh_lispmember_Cons_0_6_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_2_1, _lh_lispmember_LH_P2_1_1_2_1) -> 
              (if (_lh_lispmember_LH_P2_0_1_2_0 = _lh_lispmember_LH_P2_0_1_2_1) then
                true
              else
                (lispmember_d3_d4_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_2_0, _lh_lispmember_LH_P2_1_1_2_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d5_d0 _lh_lispmember_arg1_6_5 =
  (match _lh_lispmember_arg1_6_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_3_0, _lh_lispmember_LH_P2_1_1_3_0) -> 
      (match _lh_lispmember_LH_P2_1_1_3_0 with
        | `Cons(_lh_lispmember_Cons_0_6_5) -> 
          (match _lh_lispmember_Cons_0_6_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_3_1, _lh_lispmember_LH_P2_1_1_3_1) -> 
              (if (_lh_lispmember_LH_P2_0_1_3_0 = _lh_lispmember_LH_P2_0_1_3_1) then
                true
              else
                (lispmember_d3_d5_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_3_0, _lh_lispmember_LH_P2_1_1_3_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d3_d6_d0 _lh_lispmember_arg1_6_7 =
  (match _lh_lispmember_arg1_6_7 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_3_4, _lh_lispmember_LH_P2_1_1_3_4) -> 
      (match _lh_lispmember_LH_P2_1_1_3_4 with
        | `Cons(_lh_lispmember_Cons_0_6_7) -> 
          (match _lh_lispmember_Cons_0_6_7 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_3_5, _lh_lispmember_LH_P2_1_1_3_5) -> 
              (if (_lh_lispmember_LH_P2_0_1_3_4 = _lh_lispmember_LH_P2_0_1_3_5) then
                true
              else
                (lispmember_d3_d6_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_3_4, _lh_lispmember_LH_P2_1_1_3_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d0_d0 _lh_lispmember_arg1_5_6 =
  (match _lh_lispmember_arg1_5_6 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_1_2, _lh_lispmember_LH_P2_1_1_1_2) -> 
      (match _lh_lispmember_LH_P2_1_1_1_2 with
        | `Cons(_lh_lispmember_Cons_0_5_6) -> 
          (match _lh_lispmember_Cons_0_5_6 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1_3, _lh_lispmember_LH_P2_1_1_1_3) -> 
              (if (_lh_lispmember_LH_P2_0_1_1_2 = _lh_lispmember_LH_P2_0_1_1_3) then
                true
              else
                (lispmember_d4_d0_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_1_2, _lh_lispmember_LH_P2_1_1_1_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d1_d0 _lh_lispmember_arg1_5_9 =
  (match _lh_lispmember_arg1_5_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_1_8, _lh_lispmember_LH_P2_1_1_1_8) -> 
      (match _lh_lispmember_LH_P2_1_1_1_8 with
        | `Cons(_lh_lispmember_Cons_0_5_9) -> 
          (match _lh_lispmember_Cons_0_5_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1_9, _lh_lispmember_LH_P2_1_1_1_9) -> 
              (if (_lh_lispmember_LH_P2_0_1_1_8 = _lh_lispmember_LH_P2_0_1_1_9) then
                true
              else
                (lispmember_d4_d1_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_1_8, _lh_lispmember_LH_P2_1_1_1_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d2_d0 _lh_lispmember_arg1_3_9 =
  (match _lh_lispmember_arg1_3_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_7_8, _lh_lispmember_LH_P2_1_7_8) -> 
      (match _lh_lispmember_LH_P2_1_7_8 with
        | `Cons(_lh_lispmember_Cons_0_3_9) -> 
          (match _lh_lispmember_Cons_0_3_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7_9, _lh_lispmember_LH_P2_1_7_9) -> 
              (if (_lh_lispmember_LH_P2_0_7_8 = _lh_lispmember_LH_P2_0_7_9) then
                true
              else
                (lispmember_d4_d2_d0 (`LH_P2(_lh_lispmember_LH_P2_0_7_8, _lh_lispmember_LH_P2_1_7_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d3_d0 _lh_lispmember_arg1_6_8 =
  (match _lh_lispmember_arg1_6_8 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_3_6, _lh_lispmember_LH_P2_1_1_3_6) -> 
      (match _lh_lispmember_LH_P2_1_1_3_6 with
        | `Cons(_lh_lispmember_Cons_0_6_8) -> 
          (match _lh_lispmember_Cons_0_6_8 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_3_7, _lh_lispmember_LH_P2_1_1_3_7) -> 
              (if (_lh_lispmember_LH_P2_0_1_3_6 = _lh_lispmember_LH_P2_0_1_3_7) then
                true
              else
                (lispmember_d4_d3_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_3_6, _lh_lispmember_LH_P2_1_1_3_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d4_d0 _lh_lispmember_arg1_6_2 =
  (match _lh_lispmember_arg1_6_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_2_4, _lh_lispmember_LH_P2_1_1_2_4) -> 
      (match _lh_lispmember_LH_P2_1_1_2_4 with
        | `Cons(_lh_lispmember_Cons_0_6_2) -> 
          (match _lh_lispmember_Cons_0_6_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_2_5, _lh_lispmember_LH_P2_1_1_2_5) -> 
              (if (_lh_lispmember_LH_P2_0_1_2_4 = _lh_lispmember_LH_P2_0_1_2_5) then
                true
              else
                (lispmember_d4_d4_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_2_4, _lh_lispmember_LH_P2_1_1_2_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d5_d0 _lh_lispmember_arg1_6_9 =
  (match _lh_lispmember_arg1_6_9 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_3_8, _lh_lispmember_LH_P2_1_1_3_8) -> 
      (match _lh_lispmember_LH_P2_1_1_3_8 with
        | `Cons(_lh_lispmember_Cons_0_6_9) -> 
          (match _lh_lispmember_Cons_0_6_9 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_3_9, _lh_lispmember_LH_P2_1_1_3_9) -> 
              (if (_lh_lispmember_LH_P2_0_1_3_8 = _lh_lispmember_LH_P2_0_1_3_9) then
                true
              else
                (lispmember_d4_d5_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_3_8, _lh_lispmember_LH_P2_1_1_3_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember_d4_d6_d0 _lh_lispmember_arg1_5_2 =
  (match _lh_lispmember_arg1_5_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0_4, _lh_lispmember_LH_P2_1_1_0_4) -> 
      (match _lh_lispmember_LH_P2_1_1_0_4 with
        | `Cons(_lh_lispmember_Cons_0_5_2) -> 
          (match _lh_lispmember_Cons_0_5_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_0_5, _lh_lispmember_LH_P2_1_1_0_5) -> 
              (if (_lh_lispmember_LH_P2_0_1_0_4 = _lh_lispmember_LH_P2_0_1_0_5) then
                true
              else
                (lispmember_d4_d6_d0 (`LH_P2(_lh_lispmember_LH_P2_0_1_0_4, _lh_lispmember_LH_P2_1_1_0_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec mappend_d0_d0_d0 xs_6 ys_1_0 =
  (xs_6 ys_1_0);;
let rec mappend_d0_d0_d1 xs_8 ys_1_2 =
  (xs_8 ys_1_2);;
let rec mappend_d1_d0_d0 xs_7 ys_1_1 =
  (match xs_7 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_d1_d0_d0 t_7) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d2_d0_d0 xs_5 ys_7 =
  (match xs_5 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_d2_d0_d0 t_5) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec mappend_d3_d0_d0 xs_1_0 ys_1_4 =
  (match xs_1_0 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_d3_d0_d0 t_9) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_d4_d0_d0 xs_9 ys_1_3 =
  (match xs_9 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_d4_d0_d0 t_8) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec report_d0_d0_d0 _lh_report_arg1_1 =
  (match _lh_report_arg1_1 with
    | true -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
    | false -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d0_d0_d0 _lh_restOfToken_arg1_5 =
  (match _lh_restOfToken_arg1_5 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_5, _lh_restOfToken_LH_C_1_5) -> 
      (if (((_lh_restOfToken_LH_C_0_5 = '(') || (_lh_restOfToken_LH_C_0_5 = ')')) || (_lh_restOfToken_LH_C_0_5 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_5, _lh_restOfToken_LH_C_1_5))))
      else
        (let rec _lh_matchIdent_4_8 = (restOfToken_d0_d0_d0 _lh_restOfToken_LH_C_1_5) in
          (match _lh_matchIdent_4_8 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_5, _lh_restOfToken_LH_P2_1_5) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_5, _lh_restOfToken_LH_P2_0_5)), _lh_restOfToken_LH_P2_1_5))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d1_d0_d0 _lh_restOfToken_arg1_3 =
  (match _lh_restOfToken_arg1_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_C_1_3) -> 
      (if (((_lh_restOfToken_LH_C_0_3 = '(') || (_lh_restOfToken_LH_C_0_3 = ')')) || (_lh_restOfToken_LH_C_0_3 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_C_1_3))))
      else
        (let rec _lh_matchIdent_4_2 = (restOfToken_d1_d0_d0 _lh_restOfToken_LH_C_1_3) in
          (match _lh_matchIdent_4_2 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_3, _lh_restOfToken_LH_P2_1_3) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_P2_0_3)), _lh_restOfToken_LH_P2_1_3))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken_d2_d0_d0 _lh_restOfToken_arg1_4 =
  (match _lh_restOfToken_arg1_4 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_4, _lh_restOfToken_LH_C_1_4) -> 
      (if (((_lh_restOfToken_LH_C_0_4 = '(') || (_lh_restOfToken_LH_C_0_4 = ')')) || (_lh_restOfToken_LH_C_0_4 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_4, _lh_restOfToken_LH_C_1_4))))
      else
        (let rec _lh_matchIdent_4_5 = (restOfToken_d2_d0_d0 _lh_restOfToken_LH_C_1_4) in
          (match _lh_matchIdent_4_5 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_4, _lh_restOfToken_LH_P2_1_4) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_4, _lh_restOfToken_LH_P2_0_4)), _lh_restOfToken_LH_P2_1_4))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec rules_d0_d0_d0 _lh_rules_arg1_1 =
  (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('g', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('p', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('-', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('c', (`LH_C('-', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('1', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('w', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('1', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('2', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('3', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('4', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('5', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('6', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('m', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec sublist_d0_d0_d0 _lh_sublist_arg1_3 =
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
                  (let rec _lh_matchIdent_5_3 = (sublist_d0_d0_d0 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_3 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_8, _lh_sublist_LH_P2_1_1_8) -> 
                        (let rec _lh_matchIdent_5_4 = (sublist_d0_d0_d0 _lh_sublist_LH_P2_0_1_8) in
                          (match _lh_matchIdent_5_4 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1_9, _lh_sublist_LH_P2_1_1_9) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1_9, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_1_8, _lh_sublist_LH_P2_1_1_9))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_5_5 = (sublist_d0_d0_d0 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_5 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_0, _lh_sublist_LH_P2_1_2_0) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2_0, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_0))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_7 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_6, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_5_6 = (sublist_d0_d0_d0 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_6 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_1, _lh_sublist_LH_P2_1_2_1) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2_1, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_1))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_5_7 = (sublist_d0_d0_d0 _lh_sublist_LH_C_1_6) in
                (match _lh_matchIdent_5_7 with
                  | `LH_P2(_lh_sublist_LH_P2_0_2_2, _lh_sublist_LH_P2_1_2_2) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_2_2, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_2))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_5_8 = (sublist_d0_d0_d0 _lh_sublist_LH_C_1_6) in
            (match _lh_matchIdent_5_8 with
              | `LH_P2(_lh_sublist_LH_P2_0_2_3, _lh_sublist_LH_P2_1_2_3) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_2_3, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_3))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist_d1_d0_d0 _lh_sublist_arg1_5 =
  (match _lh_sublist_arg1_5 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`Nil)))
    | `LH_C(_lh_sublist_LH_C_0_1_0, _lh_sublist_LH_C_1_1_0) -> 
      (match _lh_sublist_LH_C_0_1_0 with
        | `LH_C(_lh_sublist_LH_C_0_1_1, _lh_sublist_LH_C_1_1_1) -> 
          (match _lh_sublist_LH_C_0_1_1 with
            | '(' -> 
              (match _lh_sublist_LH_C_1_1_1 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_7_4 = (sublist_d1_d0_d0 _lh_sublist_LH_C_1_1_0) in
                    (match _lh_matchIdent_7_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_3_0, _lh_sublist_LH_P2_1_3_0) -> 
                        (let rec _lh_matchIdent_7_5 = (sublist_d1_d0_d0 _lh_sublist_LH_P2_0_3_0) in
                          (match _lh_matchIdent_7_5 with
                            | `LH_P2(_lh_sublist_LH_P2_0_3_1, _lh_sublist_LH_P2_1_3_1) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_3_1, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_3_0, _lh_sublist_LH_P2_1_3_1))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_7_6 = (sublist_d1_d0_d0 _lh_sublist_LH_C_1_1_0) in
                    (match _lh_matchIdent_7_6 with
                      | `LH_P2(_lh_sublist_LH_P2_0_3_2, _lh_sublist_LH_P2_1_3_2) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_3_2, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_1_0)), _lh_sublist_LH_P2_1_3_2))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_1_1 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_1_0, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_7_7 = (sublist_d1_d0_d0 _lh_sublist_LH_C_1_1_0) in
                    (match _lh_matchIdent_7_7 with
                      | `LH_P2(_lh_sublist_LH_P2_0_3_3, _lh_sublist_LH_P2_1_3_3) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_3_3, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_1_0)), _lh_sublist_LH_P2_1_3_3))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_7_8 = (sublist_d1_d0_d0 _lh_sublist_LH_C_1_1_0) in
                (match _lh_matchIdent_7_8 with
                  | `LH_P2(_lh_sublist_LH_P2_0_3_4, _lh_sublist_LH_P2_1_3_4) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_3_4, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_1_0)), _lh_sublist_LH_P2_1_3_4))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_7_9 = (sublist_d1_d0_d0 _lh_sublist_LH_C_1_1_0) in
            (match _lh_matchIdent_7_9 with
              | `LH_P2(_lh_sublist_LH_P2_0_3_5, _lh_sublist_LH_P2_1_3_5) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_3_5, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_1_0)), _lh_sublist_LH_P2_1_3_5))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist_d2_d0_d0 _lh_sublist_arg1_4 =
  (match _lh_sublist_arg1_4 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`Nil)))
    | `LH_C(_lh_sublist_LH_C_0_8, _lh_sublist_LH_C_1_8) -> 
      (match _lh_sublist_LH_C_0_8 with
        | `LH_C(_lh_sublist_LH_C_0_9, _lh_sublist_LH_C_1_9) -> 
          (match _lh_sublist_LH_C_0_9 with
            | '(' -> 
              (match _lh_sublist_LH_C_1_9 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_5_9 = (sublist_d2_d0_d0 _lh_sublist_LH_C_1_8) in
                    (match _lh_matchIdent_5_9 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_4, _lh_sublist_LH_P2_1_2_4) -> 
                        (let rec _lh_matchIdent_6_0 = (sublist_d2_d0_d0 _lh_sublist_LH_P2_0_2_4) in
                          (match _lh_matchIdent_6_0 with
                            | `LH_P2(_lh_sublist_LH_P2_0_2_5, _lh_sublist_LH_P2_1_2_5) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_2_5, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_2_4, _lh_sublist_LH_P2_1_2_5))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_6_1 = (sublist_d2_d0_d0 _lh_sublist_LH_C_1_8) in
                    (match _lh_matchIdent_6_1 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_6, _lh_sublist_LH_P2_1_2_6) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2_6, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_8)), _lh_sublist_LH_P2_1_2_6))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_9 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_8, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_6_2 = (sublist_d2_d0_d0 _lh_sublist_LH_C_1_8) in
                    (match _lh_matchIdent_6_2 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_7, _lh_sublist_LH_P2_1_2_7) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2_7, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_8)), _lh_sublist_LH_P2_1_2_7))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_6_3 = (sublist_d2_d0_d0 _lh_sublist_LH_C_1_8) in
                (match _lh_matchIdent_6_3 with
                  | `LH_P2(_lh_sublist_LH_P2_0_2_8, _lh_sublist_LH_P2_1_2_8) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_2_8, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_8)), _lh_sublist_LH_P2_1_2_8))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_6_4 = (sublist_d2_d0_d0 _lh_sublist_LH_C_1_8) in
            (match _lh_matchIdent_6_4 with
              | `LH_P2(_lh_sublist_LH_P2_0_2_9, _lh_sublist_LH_P2_1_2_9) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_2_9, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_8)), _lh_sublist_LH_P2_1_2_9))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec tv_d0_d0_d0 _lh_tv_arg1_3 =
  (match _lh_tv_arg1_3 with
    | `Atom(_lh_tv_Atom_0_3) -> 
      _lh_tv_Atom_0_3
    | _ -> 
      (failwith "error"));;
let rec tv_d1_d0_d0 _lh_tv_arg1_4 =
  (match _lh_tv_arg1_4 with
    | `Atom(_lh_tv_Atom_0_4) -> 
      _lh_tv_Atom_0_4
    | _ -> 
      (failwith "error"));;
let rec tv_d2_d0_d0 _lh_tv_arg1_5 =
  (match _lh_tv_arg1_5 with
    | `Atom(_lh_tv_Atom_0_5) -> 
      _lh_tv_Atom_0_5
    | _ -> 
      (failwith "error"));;
let rec addlemma_d0_d0_d0 _lh_addlemma_arg1_1 _lh_addlemma_arg2_1 =
  (match _lh_addlemma_arg1_1 with
    | `Nil -> 
      _lh_addlemma_arg2_1
    | `Atom(_lh_addlemma_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_addlemma_Cons_0_1) -> 
      (match _lh_addlemma_Cons_0_1 with
        | `LH_P2(_lh_addlemma_LH_P2_0_1, _lh_addlemma_LH_P2_1_1) -> 
          (let rec z_1 = (car_d0_d0_d0 _lh_addlemma_LH_P2_1_1) in
            (if (((tv_d0_d0_d0 _lh_addlemma_LH_P2_0_1) = (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_N)))))))))))) && (not (atom_d0_d0_d0 z_1))) then
              (addtoLUT_d0_d0_d0 (`LH_P3((tv_d1_d0_d0 (car_d1_d0_d0 z_1)), (`Cons((`LH_P2(_lh_addlemma_LH_P2_0_1, _lh_addlemma_LH_P2_1_1)))), _lh_addlemma_arg2_1)))
            else
              (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst_d0_d0_d0 _lh_applysubstlst_arg1_2 _lh_applysubstlst_arg2_2 =
  (match _lh_applysubstlst_arg2_2 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_2) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_2) -> 
      (match _lh_applysubstlst_Cons_0_2 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_2, _lh_applysubstlst_LH_P2_1_2) -> 
          (`Cons((`LH_P2(((applysubst_d0_d0_d0 _lh_applysubstlst_arg1_2) _lh_applysubstlst_LH_P2_0_2), ((applysubstlst_d0_d0_d0 _lh_applysubstlst_arg1_2) _lh_applysubstlst_LH_P2_1_2)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst_d1_d0_d0 _lh_applysubstlst_arg1_3 _lh_applysubstlst_arg2_3 =
  (match _lh_applysubstlst_arg2_3 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_3) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_3) -> 
      (match _lh_applysubstlst_Cons_0_3 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_3, _lh_applysubstlst_LH_P2_1_3) -> 
          (`Cons((`LH_P2(((applysubst_d1_d0_d0 _lh_applysubstlst_arg1_3) _lh_applysubstlst_LH_P2_0_3), ((applysubstlst_d1_d0_d0 _lh_applysubstlst_arg1_3) _lh_applysubstlst_LH_P2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst_d0_d0_d0 _lh_applysubst_arg1_2 _lh_applysubst_arg2_2 =
  (match _lh_applysubst_arg2_2 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_2) -> 
      (let rec _lh_matchIdent_5_2 = (assoc_d0_d0_d0 (`LH_P2((`Atom(_lh_applysubst_Atom_0_2)), _lh_applysubst_arg1_2))) in
        (match _lh_matchIdent_5_2 with
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
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_5, ((applysubstlst_d0_d0_d0 _lh_applysubst_arg1_2) _lh_applysubst_LH_P2_1_5)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst_d1_d0_d0 _lh_applysubst_arg1_3 _lh_applysubst_arg2_3 =
  (match _lh_applysubst_arg2_3 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_3) -> 
      (let rec _lh_matchIdent_8_0 = (assoc_d2_d0_d0 (`LH_P2((`Atom(_lh_applysubst_Atom_0_3)), _lh_applysubst_arg1_3))) in
        (match _lh_matchIdent_8_0 with
          | `Cons(_lh_applysubst_Cons_0_6) -> 
            (match _lh_applysubst_Cons_0_6 with
              | `LH_P2(_lh_applysubst_LH_P2_0_6, _lh_applysubst_LH_P2_1_6) -> 
                _lh_applysubst_LH_P2_1_6
              | _ -> 
                (`Atom(_lh_applysubst_Atom_0_3)))
          | _ -> 
            (`Atom(_lh_applysubst_Atom_0_3))))
    | `Cons(_lh_applysubst_Cons_0_7) -> 
      (match _lh_applysubst_Cons_0_7 with
        | `LH_P2(_lh_applysubst_LH_P2_0_7, _lh_applysubst_LH_P2_1_7) -> 
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_7, ((applysubstlst_d1_d0_d0 _lh_applysubst_arg1_3) _lh_applysubst_LH_P2_1_7)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and caddr_d0_d0_d0 _lh_caddr_arg1_3 =
  ((fun _lh_funcomp_x_1_0 -> 
    ((fun _lh_funcomp_x_1_1 -> 
      (car_d2_d0_d0 (cdr_d0_d0_d0 _lh_funcomp_x_1_1))) (cdr_d1_d0_d0 _lh_funcomp_x_1_0))) _lh_caddr_arg1_3)
and caddr_d1_d0_d0 _lh_caddr_arg1_4 =
  ((fun _lh_funcomp_x_1_2 -> 
    ((fun _lh_funcomp_x_1_3 -> 
      (car_d8_d0_d0 (cdr_d7_d0_d0 _lh_funcomp_x_1_3))) (cdr_d8_d0_d0 _lh_funcomp_x_1_2))) _lh_caddr_arg1_4)
and caddr_d2_d0_d0 _lh_caddr_arg1_5 =
  ((fun _lh_funcomp_x_1_4 -> 
    ((fun _lh_funcomp_x_1_5 -> 
      (car_d9_d0_d0 (cdr_d9_d0_d0 _lh_funcomp_x_1_5))) (cdr_d1_d0_d0_d0 _lh_funcomp_x_1_4))) _lh_caddr_arg1_5)
and cadr_d0_d0_d0 _lh_cadr_arg1_4 =
  ((fun _lh_funcomp_x_1_6 -> 
    (car_d3_d0_d0 (cdr_d2_d0_d0 _lh_funcomp_x_1_6))) _lh_cadr_arg1_4)
and cadr_d1_d0_d0 _lh_cadr_arg1_5 =
  ((fun _lh_funcomp_x_1_7 -> 
    (car_d1_d0_d0_d0 (cdr_d1_d1_d0_d0 _lh_funcomp_x_1_7))) _lh_cadr_arg1_5)
and cadr_d2_d0_d0 _lh_cadr_arg1_3 =
  ((fun _lh_funcomp_x_9 -> 
    (car_d1_d1_d0_d0 (cdr_d1_d2_d0_d0 _lh_funcomp_x_9))) _lh_cadr_arg1_3)
and falsep_d0_d0_d0 _lh_falsep_arg1_3 =
  (match _lh_falsep_arg1_3 with
    | `LH_P2(_lh_falsep_LH_P2_0_6, _lh_falsep_LH_P2_1_6) -> 
      (match _lh_falsep_LH_P2_0_6 with
        | `Nil -> 
          false
        | `Cons(_lh_falsep_Cons_0_3) -> 
          (match _lh_falsep_Cons_0_3 with
            | `LH_P2(_lh_falsep_LH_P2_0_7, _lh_falsep_LH_P2_1_7) -> 
              (match _lh_falsep_LH_P2_0_7 with
                | `Atom(_lh_falsep_Atom_0_3) -> 
                  (match _lh_falsep_Atom_0_3 with
                    | `LH_C(_lh_falsep_LH_C_0_3, _lh_falsep_LH_C_1_3) -> 
                      (match _lh_falsep_LH_C_0_3 with
                        | 'f' -> 
                          (match _lh_falsep_LH_C_1_3 with
                            | `LH_N -> 
                              (match _lh_falsep_LH_P2_1_7 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember_d0_d0_d0 (`LH_P2(_lh_falsep_LH_P2_0_6, _lh_falsep_LH_P2_1_6))))
                            | _ -> 
                              (lispmember_d0_d1_d0 (`LH_P2(_lh_falsep_LH_P2_0_6, _lh_falsep_LH_P2_1_6))))
                        | _ -> 
                          (lispmember_d0_d2_d0 (`LH_P2(_lh_falsep_LH_P2_0_6, _lh_falsep_LH_P2_1_6))))
                    | _ -> 
                      (lispmember_d0_d3_d0 (`LH_P2(_lh_falsep_LH_P2_0_6, _lh_falsep_LH_P2_1_6))))
                | _ -> 
                  (lispmember_d0_d4_d0 (`LH_P2(_lh_falsep_LH_P2_0_6, _lh_falsep_LH_P2_1_6))))
            | _ -> 
              (lispmember_d0_d5_d0 (`LH_P2(_lh_falsep_LH_P2_0_6, _lh_falsep_LH_P2_1_6))))
        | _ -> 
          (lispmember_d0_d6_d0 (`LH_P2(_lh_falsep_LH_P2_0_6, _lh_falsep_LH_P2_1_6))))
    | _ -> 
      (failwith "error"))
and falsep_d1_d0_d0 _lh_falsep_arg1_2 =
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
                                  (lispmember_d1_d0_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                            | _ -> 
                              (lispmember_d1_d1_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                        | _ -> 
                          (lispmember_d1_d2_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                    | _ -> 
                      (lispmember_d1_d3_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                | _ -> 
                  (lispmember_d1_d4_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
            | _ -> 
              (lispmember_d1_d5_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
        | _ -> 
          (lispmember_d1_d6_d0 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
    | _ -> 
      (failwith "error"))
and getToken_d0_d0_d0 _lh_getToken_arg1_3 =
  (match _lh_getToken_arg1_3 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_0_9 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_1_9 = (`LH_N) in
          (`LH_C(_lh_strToToken_LH_P2_0_9, (strToToken_d0_d0_d0 _lh_strToToken_LH_P2_1_9)))))
    | `LH_C(_lh_getToken_LH_C_0_3, _lh_getToken_LH_C_1_3) -> 
      (if (_lh_getToken_LH_C_0_3 = ' ') then
        (getToken_d0_d0_d0 _lh_getToken_LH_C_1_3)
      else
        (if ((_lh_getToken_LH_C_0_3 = '(') || (_lh_getToken_LH_C_0_3 = ')')) then
          (let rec _lh_strToToken_LH_P2_0_1_0 = (`LH_C(_lh_getToken_LH_C_0_3, (`LH_N))) in
            (let rec _lh_strToToken_LH_P2_1_1_0 = _lh_getToken_LH_C_1_3 in
              (`LH_C(_lh_strToToken_LH_P2_0_1_0, (strToToken_d0_d0_d0 _lh_strToToken_LH_P2_1_1_0)))))
        else
          (let rec _lh_matchIdent_4_9 = (restOfToken_d0_d0_d0 _lh_getToken_LH_C_1_3) in
            (match _lh_matchIdent_4_9 with
              | `LH_P2(_lh_getToken_LH_P2_0_3, _lh_getToken_LH_P2_1_3) -> 
                (let rec _lh_strToToken_LH_P2_0_1_1 = (`LH_C(_lh_getToken_LH_C_0_3, _lh_getToken_LH_P2_0_3)) in
                  (let rec _lh_strToToken_LH_P2_1_1_1 = _lh_getToken_LH_P2_1_3 in
                    (`LH_C(_lh_strToToken_LH_P2_0_1_1, (strToToken_d0_d0_d0 _lh_strToToken_LH_P2_1_1_1)))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken_d1_d0_d0 _lh_getToken_arg1_4 =
  (match _lh_getToken_arg1_4 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_0_1_2 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_1_1_2 = (`LH_N) in
          (`LH_C(_lh_strToToken_LH_P2_0_1_2, (strToToken_d1_d0_d0 _lh_strToToken_LH_P2_1_1_2)))))
    | `LH_C(_lh_getToken_LH_C_0_4, _lh_getToken_LH_C_1_4) -> 
      (if (_lh_getToken_LH_C_0_4 = ' ') then
        (getToken_d1_d0_d0 _lh_getToken_LH_C_1_4)
      else
        (if ((_lh_getToken_LH_C_0_4 = '(') || (_lh_getToken_LH_C_0_4 = ')')) then
          (let rec _lh_strToToken_LH_P2_0_1_3 = (`LH_C(_lh_getToken_LH_C_0_4, (`LH_N))) in
            (let rec _lh_strToToken_LH_P2_1_1_3 = _lh_getToken_LH_C_1_4 in
              (`LH_C(_lh_strToToken_LH_P2_0_1_3, (strToToken_d1_d0_d0 _lh_strToToken_LH_P2_1_1_3)))))
        else
          (let rec _lh_matchIdent_6_5 = (restOfToken_d1_d0_d0 _lh_getToken_LH_C_1_4) in
            (match _lh_matchIdent_6_5 with
              | `LH_P2(_lh_getToken_LH_P2_0_4, _lh_getToken_LH_P2_1_4) -> 
                (let rec _lh_strToToken_LH_P2_0_1_4 = (`LH_C(_lh_getToken_LH_C_0_4, _lh_getToken_LH_P2_0_4)) in
                  (let rec _lh_strToToken_LH_P2_1_1_4 = _lh_getToken_LH_P2_1_4 in
                    (`LH_C(_lh_strToToken_LH_P2_0_1_4, (strToToken_d1_d0_d0 _lh_strToToken_LH_P2_1_1_4)))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken_d2_d0_d0 _lh_getToken_arg1_5 =
  (match _lh_getToken_arg1_5 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_0_1_5 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_1_1_5 = (`LH_N) in
          (`LH_C(_lh_strToToken_LH_P2_0_1_5, (strToToken_d2_d0_d0 _lh_strToToken_LH_P2_1_1_5)))))
    | `LH_C(_lh_getToken_LH_C_0_5, _lh_getToken_LH_C_1_5) -> 
      (if (_lh_getToken_LH_C_0_5 = ' ') then
        (getToken_d2_d0_d0 _lh_getToken_LH_C_1_5)
      else
        (if ((_lh_getToken_LH_C_0_5 = '(') || (_lh_getToken_LH_C_0_5 = ')')) then
          (let rec _lh_strToToken_LH_P2_0_1_6 = (`LH_C(_lh_getToken_LH_C_0_5, (`LH_N))) in
            (let rec _lh_strToToken_LH_P2_1_1_6 = _lh_getToken_LH_C_1_5 in
              (`LH_C(_lh_strToToken_LH_P2_0_1_6, (strToToken_d2_d0_d0 _lh_strToToken_LH_P2_1_1_6)))))
        else
          (let rec _lh_matchIdent_8_1 = (restOfToken_d2_d0_d0 _lh_getToken_LH_C_1_5) in
            (match _lh_matchIdent_8_1 with
              | `LH_P2(_lh_getToken_LH_P2_0_5, _lh_getToken_LH_P2_1_5) -> 
                (let rec _lh_strToToken_LH_P2_0_1_7 = (`LH_C(_lh_getToken_LH_C_0_5, _lh_getToken_LH_P2_0_5)) in
                  (let rec _lh_strToToken_LH_P2_1_1_7 = _lh_getToken_LH_P2_1_5 in
                    (`LH_C(_lh_strToToken_LH_P2_0_1_7, (strToToken_d2_d0_d0 _lh_strToToken_LH_P2_1_1_7)))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and lemmas_d0_d0_d0 _lh_lemmas_arg1_1 =
  ((addlemmalst_d0_d0_d0 (makelemmas_d0_d0_d0 (rules_d0_d0_d0 0))) (`Empty))
and makelemmas_d0_d0_d0 _lh_makelemmas_arg1_1 =
  (match _lh_makelemmas_arg1_1 with
    | `LH_N -> 
      (fun _lh_addlemmalst_arg2_3 -> 
        _lh_addlemmalst_arg2_3)
    | `LH_C(_lh_makelemmas_LH_C_0_1, _lh_makelemmas_LH_C_1_1) -> 
      (let rec _lh_addlemmalst_LH_C_0_1 = (mkLisplist_d0_d0_d0 (strToToken_d0_d0_d0 _lh_makelemmas_LH_C_0_1)) in
        (let rec _lh_addlemmalst_LH_C_1_1 = (makelemmas_d0_d0_d0 _lh_makelemmas_LH_C_1_1) in
          (fun _lh_addlemmalst_arg2_4 -> 
            ((addlemmalst_d0_d0_d1 _lh_addlemmalst_LH_C_1_1) ((addlemma_d0_d0_d0 _lh_addlemmalst_LH_C_0_1) _lh_addlemmalst_arg2_4)))))
    | _ -> 
      (failwith "error"))
and mkLisplist_d0_d0_d0 _lh_mkLisplist_arg1_5 =
  (match _lh_mkLisplist_arg1_5 with
    | `LH_C(_lh_mkLisplist_LH_C_0_1_0, _lh_mkLisplist_LH_C_1_1_0) -> 
      (match _lh_mkLisplist_LH_C_0_1_0 with
        | `LH_C(_lh_mkLisplist_LH_C_0_1_1, _lh_mkLisplist_LH_C_1_1_1) -> 
          (match _lh_mkLisplist_LH_C_0_1_1 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_1_1 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_7_0 = (sublist_d0_d0_d0 _lh_mkLisplist_LH_C_1_1_0) in
                    (match _lh_matchIdent_7_0 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_5, _lh_mkLisplist_LH_P2_1_5) -> 
                        (let rec _lh_matchIdent_7_1 = _lh_mkLisplist_LH_P2_0_5 in
                          (match _lh_matchIdent_7_1 with
                            | `LH_N -> 
                              _lh_mkLisplist_LH_P2_1_5
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
and mkLisplist_d1_d0_d0 _lh_mkLisplist_arg1_3 =
  (match _lh_mkLisplist_arg1_3 with
    | `LH_C(_lh_mkLisplist_LH_C_0_6, _lh_mkLisplist_LH_C_1_6) -> 
      (match _lh_mkLisplist_LH_C_0_6 with
        | `LH_C(_lh_mkLisplist_LH_C_0_7, _lh_mkLisplist_LH_C_1_7) -> 
          (match _lh_mkLisplist_LH_C_0_7 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_7 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_4_3 = (sublist_d1_d0_d0 _lh_mkLisplist_LH_C_1_6) in
                    (match _lh_matchIdent_4_3 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_3, _lh_mkLisplist_LH_P2_1_3) -> 
                        (let rec _lh_matchIdent_4_4 = _lh_mkLisplist_LH_P2_0_3 in
                          (match _lh_matchIdent_4_4 with
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
and mkLisplist_d2_d0_d0 _lh_mkLisplist_arg1_4 =
  (match _lh_mkLisplist_arg1_4 with
    | `LH_C(_lh_mkLisplist_LH_C_0_8, _lh_mkLisplist_LH_C_1_8) -> 
      (match _lh_mkLisplist_LH_C_0_8 with
        | `LH_C(_lh_mkLisplist_LH_C_0_9, _lh_mkLisplist_LH_C_1_9) -> 
          (match _lh_mkLisplist_LH_C_0_9 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_9 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_4_6 = (sublist_d2_d0_d0 _lh_mkLisplist_LH_C_1_8) in
                    (match _lh_matchIdent_4_6 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_4, _lh_mkLisplist_LH_P2_1_4) -> 
                        (let rec _lh_matchIdent_4_7 = _lh_mkLisplist_LH_P2_0_4 in
                          (match _lh_matchIdent_4_7 with
                            | `LH_N -> 
                              _lh_mkLisplist_LH_P2_1_4
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
and onewayunify1lst_d0_d0_d0 _lh_onewayunify1lst_arg1_1 _lh_onewayunify1lst_arg2_1 _lh_onewayunify1lst_arg3_1 =
  (match _lh_onewayunify1lst_arg1_1 with
    | `Nil -> 
      (`LH_P2(true, _lh_onewayunify1lst_arg3_1))
    | _ -> 
      (let rec _lh_matchIdent_5_0 = (((onewayunify1_d0_d0_d0 (car_d6_d0_d0 _lh_onewayunify1lst_arg1_1)) (car_d7_d0_d0 _lh_onewayunify1lst_arg2_1)) _lh_onewayunify1lst_arg3_1) in
        (match _lh_matchIdent_5_0 with
          | `LH_P2(_lh_onewayunify1lst_LH_P2_0_1, _lh_onewayunify1lst_LH_P2_1_1) -> 
            (if _lh_onewayunify1lst_LH_P2_0_1 then
              (((onewayunify1lst_d0_d0_d0 (cdr_d5_d0_d0 _lh_onewayunify1lst_arg1_1)) (cdr_d6_d0_d0 _lh_onewayunify1lst_arg2_1)) _lh_onewayunify1lst_LH_P2_1_1)
            else
              (`LH_P2(false, _lh_onewayunify1lst_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))))
and onewayunify1_d0_d0_d0 _lh_onewayunify1_arg1_1 _lh_onewayunify1_arg2_1 _lh_onewayunify1_arg3_1 =
  (if (atom_d1_d0_d0 _lh_onewayunify1_arg2_1) then
    (let rec _lh_matchIdent_8_3 = (assoc_d1_d0_d0 (`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg3_1))) in
      (match _lh_matchIdent_8_3 with
        | `Cons(_lh_onewayunify1_Cons_0_1) -> 
          (match _lh_onewayunify1_Cons_0_1 with
            | `LH_P2(_lh_onewayunify1_LH_P2_0_1, _lh_onewayunify1_LH_P2_1_1) -> 
              (`LH_P2((_lh_onewayunify1_arg1_1 = _lh_onewayunify1_LH_P2_1_1), _lh_onewayunify1_arg3_1))
            | _ -> 
              (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg1_1)))), _lh_onewayunify1_arg3_1)))))))
        | _ -> 
          (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg1_1)))), _lh_onewayunify1_arg3_1))))))))
  else
    (if (atom_d2_d0_d0 _lh_onewayunify1_arg1_1) then
      (`LH_P2(false, _lh_onewayunify1_arg3_1))
    else
      (if ((car_d4_d0_d0 _lh_onewayunify1_arg1_1) = (car_d5_d0_d0 _lh_onewayunify1_arg2_1)) then
        (((onewayunify1lst_d0_d0_d0 (cdr_d3_d0_d0 _lh_onewayunify1_arg1_1)) (cdr_d4_d0_d0 _lh_onewayunify1_arg2_1)) _lh_onewayunify1_arg3_1)
      else
        (`LH_P2(false, _lh_onewayunify1_arg3_1)))))
and onewayunify_d0_d0_d0 _lh_onewayunify_arg1_1 _lh_onewayunify_arg2_1 =
  (((onewayunify1_d0_d0_d0 _lh_onewayunify_arg1_1) _lh_onewayunify_arg2_1) (`Nil))
and rewriteargs_d0_d0_d0 _lh_rewriteargs_arg1_1 _lh_rewriteargs_arg2_1 =
  (match _lh_rewriteargs_arg1_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewriteargs_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_rewriteargs_Cons_0_1) -> 
      (match _lh_rewriteargs_Cons_0_1 with
        | `LH_P2(_lh_rewriteargs_LH_P2_0_1, _lh_rewriteargs_LH_P2_1_1) -> 
          (`Cons((`LH_P2(((rewrite_d0_d0_d0 _lh_rewriteargs_LH_P2_0_1) _lh_rewriteargs_arg2_1), ((rewriteargs_d0_d0_d0 _lh_rewriteargs_LH_P2_1_1) _lh_rewriteargs_arg2_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewritewithlemmas_d0_d0_d0 _lh_rewritewithlemmas_arg1_1 _lh_rewritewithlemmas_arg2_1 _lh_rewritewithlemmas_arg3_1 =
  (match _lh_rewritewithlemmas_arg2_1 with
    | `LH_N -> 
      _lh_rewritewithlemmas_arg1_1
    | `LH_C(_lh_rewritewithlemmas_LH_C_0_1, _lh_rewritewithlemmas_LH_C_1_1) -> 
      (let rec _lh_matchIdent_6_8 = ((onewayunify_d0_d0_d0 _lh_rewritewithlemmas_arg1_1) (cadr_d0_d0_d0 _lh_rewritewithlemmas_LH_C_0_1)) in
        (match _lh_matchIdent_6_8 with
          | `LH_P2(_lh_rewritewithlemmas_LH_P2_0_1, _lh_rewritewithlemmas_LH_P2_1_1) -> 
            (if _lh_rewritewithlemmas_LH_P2_0_1 then
              ((rewrite_d0_d0_d0 ((applysubst_d0_d0_d0 _lh_rewritewithlemmas_LH_P2_1_1) (caddr_d0_d0_d0 _lh_rewritewithlemmas_LH_C_0_1))) _lh_rewritewithlemmas_arg3_1)
            else
              (((rewritewithlemmas_d0_d0_d0 _lh_rewritewithlemmas_arg1_1) _lh_rewritewithlemmas_LH_C_1_1) _lh_rewritewithlemmas_arg3_1))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and rewrite_d0_d0_d0 _lh_rewrite_arg1_1 _lh_rewrite_arg2_1 =
  (match _lh_rewrite_arg1_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewrite_Atom_0_1) -> 
      (`Atom(_lh_rewrite_Atom_0_1))
    | `Cons(_lh_rewrite_Cons_0_1) -> 
      (match _lh_rewrite_Cons_0_1 with
        | `LH_P2(_lh_rewrite_LH_P2_0_1, _lh_rewrite_LH_P2_1_1) -> 
          (((rewritewithlemmas_d0_d0_d0 (`Cons((`LH_P2(_lh_rewrite_LH_P2_0_1, ((rewriteargs_d0_d0_d0 _lh_rewrite_LH_P2_1_1) _lh_rewrite_arg2_1)))))) (getLUT_d0_d0_d0 (`LH_P2((tv_d2_d0_d0 _lh_rewrite_LH_P2_0_1), _lh_rewrite_arg2_1)))) _lh_rewrite_arg2_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and statement_d0_d0_d0 _lh_statement_arg1_1 =
  (mkLisplist_d1_d0_d0 (strToToken_d1_d0_d0 (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and strToToken_d0_d0_d0 _lh_strToToken_arg1_4 =
  (match _lh_strToToken_arg1_4 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_7_3 = (getToken_d0_d0_d0 _lh_strToToken_arg1_4) in
        _lh_matchIdent_7_3))
and strToToken_d1_d0_d0 _lh_strToToken_arg1_5 =
  (match _lh_strToToken_arg1_5 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_8_2 = (getToken_d1_d0_d0 _lh_strToToken_arg1_5) in
        _lh_matchIdent_8_2))
and strToToken_d2_d0_d0 _lh_strToToken_arg1_3 =
  (match _lh_strToToken_arg1_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_6_6 = (getToken_d2_d0_d0 _lh_strToToken_arg1_3) in
        _lh_matchIdent_6_6))
and subterm_d0_d0_d0 _lh_subterm_arg1_1 =
  (let rec c_1 = ((mappend_d0_d0_d0 (let rec h_6 = 'c' in
    (let rec t_6 = (fun ys_8 -> 
      ys_8) in
      (fun ys_9 -> 
        (`LH_C(h_6, ((mappend_d0_d0_d1 t_6) ys_9))))))) (string_of_int _lh_subterm_arg1_1)) in
    (let rec str_1 = ((mappend_d1_d0_d0 ((mappend_d2_d0_d0 ((mappend_d3_d0_d0 ((mappend_d4_d0_d0 (`LH_C('(', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_1)) (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_1)) (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('[', (`LH_C(']', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('w', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (mkLisplist_d2_d0_d0 (strToToken_d2_d0_d0 str_1))))
and tautologyp_d0_d0_d0 _lh_tautologyp_arg1_1 =
  (match _lh_tautologyp_arg1_1 with
    | `LH_P3(_lh_tautologyp_LH_P3_0_1, _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1) -> 
      (match _lh_tautologyp_LH_P3_0_1 with
        | `Nil -> 
          false
        | `Atom(_lh_tautologyp_Atom_0_2) -> 
          (truep_d0_d0_d0 (`LH_P2((`Atom(_lh_tautologyp_Atom_0_2)), _lh_tautologyp_LH_P3_1_1)))
        | `Cons(_lh_tautologyp_Cons_0_1) -> 
          (match _lh_tautologyp_Cons_0_1 with
            | `LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1) -> 
              (if (truep_d1_d0_d0 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1)))), _lh_tautologyp_LH_P3_1_1))) then
                true
              else
                (if (falsep_d0_d0_d0 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1)))), _lh_tautologyp_LH_P3_2_1))) then
                  false
                else
                  (let rec _lh_matchIdent_6_7 = _lh_tautologyp_LH_P2_0_1 in
                    (match _lh_matchIdent_6_7 with
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
                                            (if (truep_d2_d0_d0 (`LH_P2((car_d1_d2_d0_d0 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1))) then
                                              (tautologyp_d0_d0_d0 (`LH_P3((cadr_d1_d0_d0 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1)))
                                            else
                                              (if (falsep_d1_d0_d0 (`LH_P2((car_d1_d3_d0_d0 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_2_1))) then
                                                (tautologyp_d0_d0_d0 (`LH_P3((caddr_d1_d0_d0 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1)))
                                              else
                                                ((tautologyp_d0_d0_d0 (`LH_P3((cadr_d2_d0_d0 _lh_tautologyp_LH_P2_1_1), (`Cons((`LH_P2((car_d1_d4_d0_d0 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1)))), _lh_tautologyp_LH_P3_2_1))) && (tautologyp_d0_d0_d0 (`LH_P3((caddr_d2_d0_d0 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, (`Cons((`LH_P2((car_d1_d5_d0_d0 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_2_1))))))))))
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
and tautp_d0_d0_d0 _lh_tautp_arg1_1 =
  (tautologyp_d0_d0_d0 (`LH_P3(((rewrite_d0_d0_d0 _lh_tautp_arg1_1) (lemmas_d0_d0_d0 0)), (`Nil), (`Nil))))
and testBoyer2_nofib_d0_d0_d0 _lh_testBoyer2_nofib_arg1_1 =
  (report_d0_d0_d0 (testresult_d0_d0_d0 _lh_testBoyer2_nofib_arg1_1))
and testresult_d0_d0_d0 _lh_testresult_arg1_1 =
  (tautp_d0_d0_d0 (teststatement_d0_d0_d0 _lh_testresult_arg1_1))
and teststatement_d0_d0_d0 _lh_teststatement_arg1_1 =
  ((applysubst_d1_d0_d0 (subterm_d0_d0_d0 _lh_teststatement_arg1_1)) (statement_d0_d0_d0 0))
and truep_d0_d0_d0 _lh_truep_arg1_5 =
  (match _lh_truep_arg1_5 with
    | `LH_P2(_lh_truep_LH_P2_0_1_0, _lh_truep_LH_P2_1_1_0) -> 
      (match _lh_truep_LH_P2_0_1_0 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_5) -> 
          (match _lh_truep_Cons_0_5 with
            | `LH_P2(_lh_truep_LH_P2_0_1_1, _lh_truep_LH_P2_1_1_1) -> 
              (match _lh_truep_LH_P2_0_1_1 with
                | `Atom(_lh_truep_Atom_0_5) -> 
                  (match _lh_truep_Atom_0_5 with
                    | `LH_C(_lh_truep_LH_C_0_5, _lh_truep_LH_C_1_5) -> 
                      (match _lh_truep_LH_C_0_5 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_5 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_1_1 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember_d2_d0_d0 (`LH_P2(_lh_truep_LH_P2_0_1_0, _lh_truep_LH_P2_1_1_0))))
                            | _ -> 
                              (lispmember_d2_d1_d0 (`LH_P2(_lh_truep_LH_P2_0_1_0, _lh_truep_LH_P2_1_1_0))))
                        | _ -> 
                          (lispmember_d2_d2_d0 (`LH_P2(_lh_truep_LH_P2_0_1_0, _lh_truep_LH_P2_1_1_0))))
                    | _ -> 
                      (lispmember_d2_d3_d0 (`LH_P2(_lh_truep_LH_P2_0_1_0, _lh_truep_LH_P2_1_1_0))))
                | _ -> 
                  (lispmember_d2_d4_d0 (`LH_P2(_lh_truep_LH_P2_0_1_0, _lh_truep_LH_P2_1_1_0))))
            | _ -> 
              (lispmember_d2_d5_d0 (`LH_P2(_lh_truep_LH_P2_0_1_0, _lh_truep_LH_P2_1_1_0))))
        | _ -> 
          (lispmember_d2_d6_d0 (`LH_P2(_lh_truep_LH_P2_0_1_0, _lh_truep_LH_P2_1_1_0))))
    | _ -> 
      (failwith "error"))
and truep_d1_d0_d0 _lh_truep_arg1_4 =
  (match _lh_truep_arg1_4 with
    | `LH_P2(_lh_truep_LH_P2_0_8, _lh_truep_LH_P2_1_8) -> 
      (match _lh_truep_LH_P2_0_8 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_4) -> 
          (match _lh_truep_Cons_0_4 with
            | `LH_P2(_lh_truep_LH_P2_0_9, _lh_truep_LH_P2_1_9) -> 
              (match _lh_truep_LH_P2_0_9 with
                | `Atom(_lh_truep_Atom_0_4) -> 
                  (match _lh_truep_Atom_0_4 with
                    | `LH_C(_lh_truep_LH_C_0_4, _lh_truep_LH_C_1_4) -> 
                      (match _lh_truep_LH_C_0_4 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_4 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_9 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember_d3_d0_d0 (`LH_P2(_lh_truep_LH_P2_0_8, _lh_truep_LH_P2_1_8))))
                            | _ -> 
                              (lispmember_d3_d1_d0 (`LH_P2(_lh_truep_LH_P2_0_8, _lh_truep_LH_P2_1_8))))
                        | _ -> 
                          (lispmember_d3_d2_d0 (`LH_P2(_lh_truep_LH_P2_0_8, _lh_truep_LH_P2_1_8))))
                    | _ -> 
                      (lispmember_d3_d3_d0 (`LH_P2(_lh_truep_LH_P2_0_8, _lh_truep_LH_P2_1_8))))
                | _ -> 
                  (lispmember_d3_d4_d0 (`LH_P2(_lh_truep_LH_P2_0_8, _lh_truep_LH_P2_1_8))))
            | _ -> 
              (lispmember_d3_d5_d0 (`LH_P2(_lh_truep_LH_P2_0_8, _lh_truep_LH_P2_1_8))))
        | _ -> 
          (lispmember_d3_d6_d0 (`LH_P2(_lh_truep_LH_P2_0_8, _lh_truep_LH_P2_1_8))))
    | _ -> 
      (failwith "error"))
and truep_d2_d0_d0 _lh_truep_arg1_3 =
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
                                  (lispmember_d4_d0_d0 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                            | _ -> 
                              (lispmember_d4_d1_d0 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                        | _ -> 
                          (lispmember_d4_d2_d0 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                    | _ -> 
                      (lispmember_d4_d3_d0 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                | _ -> 
                  (lispmember_d4_d4_d0 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
            | _ -> 
              (lispmember_d4_d5_d0 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
        | _ -> 
          (lispmember_d4_d6_d0 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
    | _ -> 
      (failwith "error"));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Boyer2_nofib" (fun () -> ignore ((testBoyer2_nofib_d0 3)));
  Bench.Test.create ~name:"lumberhack_Boyer2_nofib" (fun () -> ignore ((testBoyer2_nofib_d0_d0 3)));
  Bench.Test.create ~name:"lumberhack_pop_out_Boyer2_nofib" (fun () -> ignore ((testBoyer2_nofib_d0_d0_d0 3)));
])
