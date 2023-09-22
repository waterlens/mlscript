(*
touch ./AnotherQueenNineBuiltInType.mli && ocamlc ./AnotherQueenNineBuiltInType.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./AnotherQueenNineBuiltInType.ml -o "./AnotherQueenNineBuiltInType.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./AnotherQueenNineBuiltInType.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec and_d0 _lh_and_arg1_1 =
  (match _lh_and_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_and_LH_C_0_1, _lh_and_LH_C_1_1) -> 
      (if _lh_and_LH_C_0_1 then
        (and_d0 _lh_and_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec append_d0 _lh_append_arg1_1 _lh_append_arg2_1 =
  (match _lh_append_arg1_1 with
    | `LH_N -> 
      _lh_append_arg2_1
    | `LH_C(_lh_append_LH_C_0_1, _lh_append_LH_C_1_1) -> 
      (`LH_C(_lh_append_LH_C_0_1, ((append_d0 _lh_append_LH_C_1_1) _lh_append_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo_d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo_d1 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo_d1 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec length_d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length_d0 t_2_2))
    | `LH_N -> 
      0);;
let rec length_d1 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (1 + (length_d1 t_2_3))
    | `LH_N -> 
      0);;
let rec zip_d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_9 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C((`LH_P2(hx_8, hy_8)), ((zip_d0 tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec queens_d0 _lh_queens_arg1_1 =
  (match _lh_queens_arg1_1 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
              (match _lh_listcomp_fun_para_4 with
                | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                  (if ((safe_d0 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_ls_h_4) then
                    (`LH_C(((append_d0 _lh_listcomp_fun_ls_h_3) (`LH_C(_lh_listcomp_fun_ls_h_4, (`LH_N)))), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
                  else
                    (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))
                | `LH_N -> 
                  (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))) in
              (_lh_listcomp_fun_4 ((enumFromTo_d0 1) 9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 (queens_d0 (_lh_queens_arg1_1 - 1)))))
and safe_d0 _lh_safe_arg1_1 _lh_safe_arg2_1 =
  (let rec m_1 = ((length_d1 _lh_safe_arg1_1) + 1) in
    (and_d0 (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
      (match _lh_listcomp_fun_para_5 with
        | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
          (match _lh_listcomp_fun_ls_h_5 with
            | `LH_P2(_lh_safe_LH_P2_0_1, _lh_safe_LH_P2_1_1) -> 
              (`LH_C((((_lh_safe_LH_P2_1_1 <> _lh_safe_arg2_1) && ((_lh_safe_LH_P2_0_1 + _lh_safe_LH_P2_1_1) <> (m_1 + _lh_safe_arg2_1))) && ((_lh_safe_LH_P2_0_1 - _lh_safe_LH_P2_1_1) <> (m_1 - _lh_safe_arg2_1))), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
            | _ -> 
              (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_5 ((zip_d0 ((enumFromTo_d1 1) (m_1 - 1))) _lh_safe_arg1_1)))))
and testAnotherQueenNineBuiltInType_d0 _lh_testAnotherQueenNineBuiltInType_arg1_1 =
  (length_d0 (queens_d0 _lh_testAnotherQueenNineBuiltInType_arg1_1));;

(* lumberhack *)
let rec and_d0_d0 _lh_and_arg1_0 =
  (_lh_and_arg1_0 99);;
let rec append_d0_d0 _lh_append_arg1_0 _lh_append_arg2_0 =
  (match _lh_append_arg1_0 with
    | `LH_N -> 
      _lh_append_arg2_0
    | `LH_C(_lh_append_LH_C_0_0, _lh_append_LH_C_1_0) -> 
      (`LH_C(_lh_append_LH_C_0_0, ((append_d0_d0 _lh_append_LH_C_1_0) _lh_append_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec length_d0_d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_d0_d0 t_0))
    | `LH_N -> 
      0);;
let rec length_d1_d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_d1_d0 t_1))
    | `LH_N -> 
      0);;
let rec zip_d0_d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_d0_d0 (a_0 + 1)) b_0) in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
          (if ((safe_d0_d0 _lh_listcomp_fun_ls_h_1) _lh_listcomp_fun_ls_h_0) then
            (`LH_C(((append_d0_d0 _lh_listcomp_fun_ls_h_1) (`LH_C(_lh_listcomp_fun_ls_h_0, (`LH_N)))), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          else
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)))
and enumFromTo_d1_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec hx_0 = a_1 in
      (let rec tx_0 = ((enumFromTo_d1_d0 (a_1 + 1)) b_1) in
        (fun ys_1 -> 
          (match ys_1 with
            | `LH_C(hy_0, ty_0) -> 
              (let rec _lh_listcomp_fun_ls_h_4 = (let rec _lh_safe_LH_P2_0_0 = hx_0 in
                (let rec _lh_safe_LH_P2_1_0 = hy_0 in
                  (fun _lh_listcomp_fun_ls_t_4 _lh_listcomp_fun_7 _lh_safe_arg2_1 m_1 -> 
                    (let rec _lh_and_LH_C_0_0 = (((_lh_safe_LH_P2_1_0 <> _lh_safe_arg2_1) && ((_lh_safe_LH_P2_0_0 + _lh_safe_LH_P2_1_0) <> (m_1 + _lh_safe_arg2_1))) && ((_lh_safe_LH_P2_0_0 - _lh_safe_LH_P2_1_0) <> (m_1 - _lh_safe_arg2_1))) in
                      (let rec _lh_and_LH_C_1_0 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_4) in
                        (fun _lh_dummy_0 -> 
                          (if _lh_and_LH_C_0_0 then
                            (and_d0_d0 _lh_and_LH_C_1_0)
                          else
                            false))))))) in
                (let rec _lh_listcomp_fun_ls_t_5 = ((zip_d0_d0 tx_0) ty_0) in
                  (fun _lh_listcomp_fun_8 _lh_safe_arg2_2 m_2 -> 
                    ((((_lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_8) _lh_safe_arg2_2) m_2))))
            | `LH_N -> 
              (fun _lh_listcomp_fun_9 _lh_safe_arg2_3 m_3 _lh_dummy_1 -> 
                true)))))
  else
    (fun ys_2 _lh_listcomp_fun_1_0 _lh_safe_arg2_4 m_4 _lh_dummy_2 -> 
      true))
and queens_d0_d0 _lh_queens_arg1_0 =
  (match _lh_queens_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
              ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_5) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_4)) in
              (_lh_listcomp_fun_5 ((enumFromTo_d0_d0 1) 9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4 (queens_d0_d0 (_lh_queens_arg1_0 - 1)))))
and safe_d0_d0 _lh_safe_arg1_0 _lh_safe_arg2_0 =
  (let rec m_0 = ((length_d1_d0 _lh_safe_arg1_0) + 1) in
    (and_d0_d0 (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_2 -> 
      (((_lh_listcomp_fun_para_2 _lh_listcomp_fun_6) _lh_safe_arg2_0) m_0)) in
      (_lh_listcomp_fun_6 ((zip_d0_d0 ((enumFromTo_d1_d0 1) (m_0 - 1))) _lh_safe_arg1_0)))))
and testAnotherQueenNineBuiltInType_d0_d0 _lh_testAnotherQueenNineBuiltInType_arg1_0 =
  (length_d0_d0 (queens_d0_d0 _lh_testAnotherQueenNineBuiltInType_arg1_0));;

(* lumberhack_pop_out *)
let rec and_d0_d0_d0 _lh_and_arg1_1 =
  (_lh_and_arg1_1 99);;
let rec and_d0_d0_d1 _lh_and_arg1_2 =
  (_lh_and_arg1_2 99);;
let rec append_d0_d0_d0 _lh_append_arg1_1 _lh_append_arg2_1 =
  (match _lh_append_arg1_1 with
    | `LH_N -> 
      _lh_append_arg2_1
    | `LH_C(_lh_append_LH_C_0_1, _lh_append_LH_C_1_1) -> 
      (`LH_C(_lh_append_LH_C_0_1, ((append_d0_d0_d0 _lh_append_LH_C_1_1) _lh_append_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec length_d0_d0_d0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_d0_d0_d0 t_2))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length_d1_d0_d0 t_3))
    | `LH_N -> 
      0);;
let rec zip_d0_d0_d0 xs_2 ys_6 =
  (xs_2 ys_6);;
let rec zip_d0_d0_d1 xs_1 ys_5 =
  (xs_1 ys_5);;
let rec enumFromTo_d0_d0_d0 a_3 b_3 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_h_6 = a_3 in
      (let rec _lh_listcomp_fun_ls_t_8 = ((enumFromTo_d0_d0_d0 (a_3 + 1)) b_3) in
        (if ((safe_d0_d0_d0 _lh_popOutId_0_0) _lh_listcomp_fun_ls_h_6) then
          (`LH_C(((append_d0_d0_d0 _lh_popOutId_0_0) (`LH_C(_lh_listcomp_fun_ls_h_6, (`LH_N)))), (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_8)))
        else
          (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_8))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and enumFromTo_d1_d0_d0 a_2 b_2 _lh_popOutId_0_2 _lh_popOutId_1_2 _lh_popOutId_2_2 _lh_popOutId_3_1 =
  (if (a_2 <= b_2) then
    (let rec hx_1 = a_2 in
      (let rec tx_1 = ((enumFromTo_d1_d0_d0 (a_2 + 1)) b_2) in
        (match _lh_popOutId_0_2 with
          | `LH_C(hy_1, ty_1) -> 
            (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_safe_LH_P2_0_1 = hx_1 in
              (let rec _lh_safe_LH_P2_1_1 = hy_1 in
                (fun _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_1_1 _lh_safe_arg2_5 m_5 -> 
                  (let rec _lh_and_LH_C_0_1 = (((_lh_safe_LH_P2_1_1 <> _lh_safe_arg2_5) && ((_lh_safe_LH_P2_0_1 + _lh_safe_LH_P2_1_1) <> (m_5 + _lh_safe_arg2_5))) && ((_lh_safe_LH_P2_0_1 - _lh_safe_LH_P2_1_1) <> (m_5 - _lh_safe_arg2_5))) in
                    (let rec _lh_and_LH_C_1_1 = (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_6) in
                      (fun _lh_dummy_3 -> 
                        (if _lh_and_LH_C_0_1 then
                          (and_d0_d0_d1 _lh_and_LH_C_1_1)
                        else
                          false))))))) in
              (let rec _lh_listcomp_fun_ls_t_7 = ((zip_d0_d0_d0 tx_1) ty_1) in
                ((((_lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_t_7) _lh_popOutId_1_2) _lh_popOutId_2_2) _lh_popOutId_3_1)))
          | `LH_N -> 
            (fun _lh_dummy_4 -> 
              true))))
  else
    (fun _lh_dummy_5 -> 
      true))
and queens_d0_d0_d0 _lh_queens_arg1_1 =
  (match _lh_queens_arg1_1 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_4 -> 
        (match _lh_listcomp_fun_para_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_1) -> 
            (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_5 -> 
              ((((_lh_listcomp_fun_para_5 _lh_listcomp_fun_ls_h_9) _lh_listcomp_fun_2_1) _lh_listcomp_fun_ls_t_1_1) _lh_listcomp_fun_2_0)) in
              (_lh_listcomp_fun_2_1 ((enumFromTo_d0_d0_d0 1) 9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_0 (queens_d0_d0_d0 (_lh_queens_arg1_1 - 1)))))
and safe_d0_d0_d0 _lh_safe_arg1_1 _lh_safe_arg2_9 =
  (let rec m_9 = ((length_d1_d0_d0 _lh_safe_arg1_1) + 1) in
    (and_d0_d0_d0 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_3 -> 
      (((_lh_listcomp_fun_para_3 _lh_listcomp_fun_1_5) _lh_safe_arg2_9) m_9)) in
      (_lh_listcomp_fun_1_5 ((zip_d0_d0_d1 ((enumFromTo_d1_d0_d0 1) (m_9 - 1))) _lh_safe_arg1_1)))))
and testAnotherQueenNineBuiltInType_d0_d0_d0 _lh_testAnotherQueenNineBuiltInType_arg1_1 =
  (length_d0_d0_d0 (queens_d0_d0_d0 _lh_testAnotherQueenNineBuiltInType_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_AnotherQueenNineBuiltInType" (fun () -> ignore ((testAnotherQueenNineBuiltInType_d0 9)));
  Bench.Test.create ~name:"lumberhack_AnotherQueenNineBuiltInType" (fun () -> ignore ((testAnotherQueenNineBuiltInType_d0_d0 9)));
  Bench.Test.create ~name:"lumberhack_pop_out_AnotherQueenNineBuiltInType" (fun () -> ignore ((testAnotherQueenNineBuiltInType_d0_d0_d0 9)));
])
