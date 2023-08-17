(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Ansi_nofib.ml -o "./Ansi_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Ansi_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec cls_d0 =
  (`LH_C('L', (`LH_N)));;
let rec copy_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy_d1 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy_d1 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec end_d0 _lh_end_arg1_1 =
  (`LH_N);;
let rec foldr_d0 f_1_4 i_3 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_5_5, t_5_7) -> 
      ((f_1_4 h_5_5) (((foldr_d0 f_1_4) i_3) t_5_7))
    | `LH_N -> 
      i_3);;
let rec length_d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_4_0, t_4_2) -> 
      (1 + (length_d0 t_4_2))
    | `LH_N -> 
      0);;
let rec length_d1 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_3, t_2_5) -> 
      (1 + (length_d1 t_2_5))
    | `LH_N -> 
      0);;
let rec mappend_d0 xs_3_9 ys_3_9 =
  (match xs_3_9 with
    | `LH_C(h_5_7, t_5_9) -> 
      (`LH_C(h_5_7, ((mappend_d0 t_5_9) ys_3_9)))
    | `LH_N -> 
      ys_3_9);;
let rec mappend_d1 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend_d1 t_4_3) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend_d1_d0 xs_3_7 ys_3_7 =
  (match xs_3_7 with
    | `LH_C(h_5_4, t_5_6) -> 
      (`LH_C(h_5_4, ((mappend_d1_d0 t_5_6) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec mappend_d1_d1 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend_d1_d1 t_2_8) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_d1_d2 xs_5_0 ys_5_0 =
  (match xs_5_0 with
    | `LH_C(h_6_9, t_7_1) -> 
      (`LH_C(h_6_9, ((mappend_d1_d2 t_7_1) ys_5_0)))
    | `LH_N -> 
      ys_5_0);;
let rec mappend_d1_d3 xs_4_6 ys_4_6 =
  (match xs_4_6 with
    | `LH_C(h_6_5, t_6_7) -> 
      (`LH_C(h_6_5, ((mappend_d1_d3 t_6_7) ys_4_6)))
    | `LH_N -> 
      ys_4_6);;
let rec mappend_d1_d4 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend_d1_d4 t_4_1) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend_d1_d5 xs_3_6 ys_3_6 =
  (match xs_3_6 with
    | `LH_C(h_5_3, t_5_5) -> 
      (`LH_C(h_5_3, ((mappend_d1_d5 t_5_5) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec mappend_d1_d6 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend_d1_d6 t_4_0) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend_d1_d7 xs_3_5 ys_3_5 =
  (match xs_3_5 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C(h_5_1, ((mappend_d1_d7 t_5_3) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend_d1_d8 xs_3_2 ys_3_2 =
  (match xs_3_2 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend_d1_d8 t_5_0) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend_d1_d9 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend_d1_d9 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_d2 xs_4_5 ys_4_5 =
  (match xs_4_5 with
    | `LH_C(h_6_4, t_6_6) -> 
      (`LH_C(h_6_4, ((mappend_d2 t_6_6) ys_4_5)))
    | `LH_N -> 
      ys_4_5);;
let rec mappend_d2_d0 xs_4_1 ys_4_1 =
  (match xs_4_1 with
    | `LH_C(h_5_9, t_6_1) -> 
      (`LH_C(h_5_9, ((mappend_d2_d0 t_6_1) ys_4_1)))
    | `LH_N -> 
      ys_4_1);;
let rec mappend_d2_d1 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend_d2_d1 t_3_9) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend_d2_d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend_d2_d2 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d2_d3 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend_d2_d3 t_2_4) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d2_d4 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_4_6, t_4_8) -> 
      (`LH_C(h_4_6, ((mappend_d2_d4 t_4_8) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend_d2_d5 xs_4_8 ys_4_8 =
  (match xs_4_8 with
    | `LH_C(h_6_7, t_6_9) -> 
      (`LH_C(h_6_7, ((mappend_d2_d5 t_6_9) ys_4_8)))
    | `LH_N -> 
      ys_4_8);;
let rec mappend_d2_d6 xs_3_3 ys_3_3 =
  (match xs_3_3 with
    | `LH_C(h_4_9, t_5_1) -> 
      (`LH_C(h_4_9, ((mappend_d2_d6 t_5_1) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend_d2_d7 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C(h_3_5, ((mappend_d2_d7 t_3_7) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend_d2_d8 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend_d2_d8 t_2_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d2_d9 xs_3_4 ys_3_4 =
  (match xs_3_4 with
    | `LH_C(h_5_0, t_5_2) -> 
      (`LH_C(h_5_0, ((mappend_d2_d9 t_5_2) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend_d3 xs_5_1 ys_5_1 =
  (match xs_5_1 with
    | `LH_C(h_7_0, t_7_2) -> 
      (`LH_C(h_7_0, ((mappend_d3 t_7_2) ys_5_1)))
    | `LH_N -> 
      ys_5_1);;
let rec mappend_d3_d0 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend_d3_d0 t_4_7) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend_d3_d1 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend_d3_d1 t_3_1) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend_d3_d2 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_4_2, t_4_4) -> 
      (`LH_C(h_4_2, ((mappend_d3_d2 t_4_4) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend_d3_d3 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C(h_3_6, ((mappend_d3_d3 t_3_8) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend_d3_d4 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend_d3_d4 t_3_3) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend_d3_d5 xs_4_2 ys_4_2 =
  (match xs_4_2 with
    | `LH_C(h_6_1, t_6_3) -> 
      (`LH_C(h_6_1, ((mappend_d3_d5 t_6_3) ys_4_2)))
    | `LH_N -> 
      ys_4_2);;
let rec mappend_d3_d6 xs_4_7 ys_4_7 =
  (match xs_4_7 with
    | `LH_C(h_6_6, t_6_8) -> 
      (`LH_C(h_6_6, ((mappend_d3_d6 t_6_8) ys_4_7)))
    | `LH_N -> 
      ys_4_7);;
let rec mappend_d3_d7 xs_4_4 ys_4_4 =
  (match xs_4_4 with
    | `LH_C(h_6_3, t_6_5) -> 
      (`LH_C(h_6_3, ((mappend_d3_d7 t_6_5) ys_4_4)))
    | `LH_N -> 
      ys_4_4);;
let rec mappend_d3_d8 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend_d3_d8 t_3_2) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend_d3_d9 xs_5_2 ys_5_2 =
  (match xs_5_2 with
    | `LH_C(h_7_1, t_7_3) -> 
      (`LH_C(h_7_1, ((mappend_d3_d9 t_7_3) ys_5_2)))
    | `LH_N -> 
      ys_5_2);;
let rec mappend_d4 xs_4_9 ys_4_9 =
  (match xs_4_9 with
    | `LH_C(h_6_8, t_7_0) -> 
      (`LH_C(h_6_8, ((mappend_d4 t_7_0) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend_d4_d0 xs_4_3 ys_4_3 =
  (match xs_4_3 with
    | `LH_C(h_6_2, t_6_4) -> 
      (`LH_C(h_6_2, ((mappend_d4_d0 t_6_4) ys_4_3)))
    | `LH_N -> 
      ys_4_3);;
let rec mappend_d4_d1 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_3_3, t_3_5) -> 
      (`LH_C(h_3_3, ((mappend_d4_d1 t_3_5) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_d4_d2 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend_d4_d2 t_2_9) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend_d4_d3 xs_3_8 ys_3_8 =
  (match xs_3_8 with
    | `LH_C(h_5_6, t_5_8) -> 
      (`LH_C(h_5_6, ((mappend_d4_d3 t_5_8) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend_d4_d4 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend_d4_d4 t_3_0) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend_d5 xs_4_0 ys_4_0 =
  (match xs_4_0 with
    | `LH_C(h_5_8, t_6_0) -> 
      (`LH_C(h_5_8, ((mappend_d5 t_6_0) ys_4_0)))
    | `LH_N -> 
      ys_4_0);;
let rec mappend_d6 xs_3_1 ys_3_1 =
  (match xs_3_1 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C(h_4_7, ((mappend_d6 t_4_9) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend_d7 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend_d7 t_3_4) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend_d8 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend_d8 t_2_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_d9 xs_5_3 ys_5_3 =
  (match xs_5_3 with
    | `LH_C(h_7_2, t_7_4) -> 
      (`LH_C(h_7_2, ((mappend_d9 t_7_4) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec readChar_d0 _lh_readChar_arg1_1 _lh_readChar_arg2_1 _lh_readChar_arg3_1 =
  (match _lh_readChar_arg3_1 with
    | `LH_N -> 
      (_lh_readChar_arg1_1 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1, _lh_readChar_LH_C_1_1) -> 
      ((_lh_readChar_arg2_1 _lh_readChar_LH_C_0_1) _lh_readChar_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec readChar_d1 _lh_readChar_arg1_2 _lh_readChar_arg2_2 _lh_readChar_arg3_2 =
  (match _lh_readChar_arg3_2 with
    | `LH_N -> 
      (_lh_readChar_arg1_2 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_2, _lh_readChar_LH_C_1_2) -> 
      ((_lh_readChar_arg2_2 _lh_readChar_LH_C_0_2) _lh_readChar_LH_C_1_2)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2 _lh_readChar_arg1_3 _lh_readChar_arg2_3 _lh_readChar_arg3_3 =
  (match _lh_readChar_arg3_3 with
    | `LH_N -> 
      (_lh_readChar_arg1_3 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_3, _lh_readChar_LH_C_1_3) -> 
      ((_lh_readChar_arg2_3 _lh_readChar_LH_C_0_3) _lh_readChar_LH_C_1_3)
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_d0 ls_2_4 a_5 =
  (match ls_2_4 with
    | `LH_C(h_4_3, t_4_5) -> 
      ((reverse_helper_d0 t_4_5) (`LH_C(h_4_3, a_5)))
    | `LH_N -> 
      a_5);;
let rec reverse_helper_d1 ls_2_6 a_6 =
  (match ls_2_6 with
    | `LH_C(h_5_2, t_5_4) -> 
      ((reverse_helper_d1 t_5_4) (`LH_C(h_5_2, a_6)))
    | `LH_N -> 
      a_6);;
let rec tail_d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_4_4, t_4_6) -> 
      t_4_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_3_4, t_3_6) -> 
      t_3_6
    | `LH_N -> 
      (failwith "error"));;
let rec writeChar_d0 _lh_writeChar_arg1_3 _lh_writeChar_arg2_3 _lh_writeChar_arg3_3 =
  (`LH_C(_lh_writeChar_arg1_3, (_lh_writeChar_arg2_3 _lh_writeChar_arg3_3)));;
let rec writeChar_d1 _lh_writeChar_arg1_1 _lh_writeChar_arg2_1 _lh_writeChar_arg3_1 =
  (`LH_C(_lh_writeChar_arg1_1, (_lh_writeChar_arg2_1 _lh_writeChar_arg3_1)));;
let rec writeChar_d2 _lh_writeChar_arg1_4 _lh_writeChar_arg2_4 _lh_writeChar_arg3_4 =
  (`LH_C(_lh_writeChar_arg1_4, (_lh_writeChar_arg2_4 _lh_writeChar_arg3_4)));;
let rec writeChar_d3 _lh_writeChar_arg1_2 _lh_writeChar_arg2_2 _lh_writeChar_arg3_2 =
  (`LH_C(_lh_writeChar_arg1_2, (_lh_writeChar_arg2_2 _lh_writeChar_arg3_2)));;
let rec at_d0 _lh_at_arg1_6 _lh_at_arg2_6 =
  (match _lh_at_arg1_6 with
    | `LH_P2(_lh_at_LH_P2_0_6, _lh_at_LH_P2_1_6) -> 
      ((mappend_d2 ((goto_d0 _lh_at_LH_P2_0_6) _lh_at_LH_P2_1_6)) _lh_at_arg2_6)
    | _ -> 
      (failwith "error"))
and at_d1 _lh_at_arg1_1 _lh_at_arg2_1 =
  (match _lh_at_arg1_1 with
    | `LH_P2(_lh_at_LH_P2_0_1, _lh_at_LH_P2_1_1) -> 
      ((mappend_d5 ((goto_d1 _lh_at_LH_P2_0_1) _lh_at_LH_P2_1_1)) _lh_at_arg2_1)
    | _ -> 
      (failwith "error"))
and at_d2 _lh_at_arg1_2 _lh_at_arg2_2 =
  (match _lh_at_arg1_2 with
    | `LH_P2(_lh_at_LH_P2_0_2, _lh_at_LH_P2_1_2) -> 
      ((mappend_d8 ((goto_d2 _lh_at_LH_P2_0_2) _lh_at_LH_P2_1_2)) _lh_at_arg2_2)
    | _ -> 
      (failwith "error"))
and at_d3 _lh_at_arg1_4 _lh_at_arg2_4 =
  (match _lh_at_arg1_4 with
    | `LH_P2(_lh_at_LH_P2_0_4, _lh_at_LH_P2_1_4) -> 
      ((mappend_d1_d1 ((goto_d3 _lh_at_LH_P2_0_4) _lh_at_LH_P2_1_4)) _lh_at_arg2_4)
    | _ -> 
      (failwith "error"))
and at_d4 _lh_at_arg1_3 _lh_at_arg2_3 =
  (match _lh_at_arg1_3 with
    | `LH_P2(_lh_at_LH_P2_0_3, _lh_at_LH_P2_1_3) -> 
      ((mappend_d1_d4 ((goto_d4 _lh_at_LH_P2_0_3) _lh_at_LH_P2_1_3)) _lh_at_arg2_3)
    | _ -> 
      (failwith "error"))
and at_d5 _lh_at_arg1_5 _lh_at_arg2_5 =
  (match _lh_at_arg1_5 with
    | `LH_P2(_lh_at_LH_P2_0_5, _lh_at_LH_P2_1_5) -> 
      ((mappend_d1_d7 ((goto_d5 _lh_at_LH_P2_0_5) _lh_at_LH_P2_1_5)) _lh_at_arg2_5)
    | _ -> 
      (failwith "error"))
and concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_6_0, t_6_2) -> 
      ((mappend_d4_d3 h_6_0) (concat_d0 t_6_2))
    | `LH_N -> 
      (`LH_N))
and delete_d0 _lh_delete_arg1_1 _lh_delete_arg2_1 _lh_delete_arg3_1 _lh_delete_arg4_1 =
  (if (_lh_delete_arg1_1 > 0) then
    ((writeString_d1 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0 (_lh_delete_arg1_1 - 1)) (tail_d0 _lh_delete_arg2_1)) _lh_delete_arg3_1) _lh_delete_arg4_1))
  else
    (ringBell_d0 ((((loop_d0 0) (`LH_N)) _lh_delete_arg3_1) _lh_delete_arg4_1)))
and delete_d1 _lh_delete_arg1_2 _lh_delete_arg2_2 _lh_delete_arg3_2 _lh_delete_arg4_2 =
  (if (_lh_delete_arg1_2 > 0) then
    ((writeString_d2 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0 (_lh_delete_arg1_2 - 1)) (tail_d1 _lh_delete_arg2_2)) _lh_delete_arg3_2) _lh_delete_arg4_2))
  else
    (ringBell_d1 ((((loop_d0 0) (`LH_N)) _lh_delete_arg3_2) _lh_delete_arg4_2)))
and goto_d0 _lh_goto_arg1_8 _lh_goto_arg2_8 =
  (`LH_C('E', (`LH_C('[', ((mappend_d0 (string_of_int _lh_goto_arg2_8)) ((mappend_d1 (`LH_C(';', (string_of_int _lh_goto_arg1_8)))) (`LH_C('H', (`LH_N)))))))))
and goto_d1 _lh_goto_arg1_7 _lh_goto_arg2_7 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3 (string_of_int _lh_goto_arg2_7)) ((mappend_d4 (`LH_C(';', (string_of_int _lh_goto_arg1_7)))) (`LH_C('H', (`LH_N)))))))))
and goto_d1_d0 _lh_goto_arg1_9 _lh_goto_arg2_9 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d8 (string_of_int _lh_goto_arg2_9)) ((mappend_d3_d9 (`LH_C(';', (string_of_int _lh_goto_arg1_9)))) (`LH_C('H', (`LH_N)))))))))
and goto_d2 _lh_goto_arg1_3 _lh_goto_arg2_3 =
  (`LH_C('E', (`LH_C('[', ((mappend_d6 (string_of_int _lh_goto_arg2_3)) ((mappend_d7 (`LH_C(';', (string_of_int _lh_goto_arg1_3)))) (`LH_C('H', (`LH_N)))))))))
and goto_d3 _lh_goto_arg1_1 _lh_goto_arg2_1 =
  (`LH_C('E', (`LH_C('[', ((mappend_d9 (string_of_int _lh_goto_arg2_1)) ((mappend_d1_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1)))) (`LH_C('H', (`LH_N)))))))))
and goto_d4 _lh_goto_arg1_6 _lh_goto_arg2_6 =
  (`LH_C('E', (`LH_C('[', ((mappend_d1_d2 (string_of_int _lh_goto_arg2_6)) ((mappend_d1_d3 (`LH_C(';', (string_of_int _lh_goto_arg1_6)))) (`LH_C('H', (`LH_N)))))))))
and goto_d5 _lh_goto_arg1_1_0 _lh_goto_arg2_1_0 =
  (`LH_C('E', (`LH_C('[', ((mappend_d1_d5 (string_of_int _lh_goto_arg2_1_0)) ((mappend_d1_d6 (`LH_C(';', (string_of_int _lh_goto_arg1_1_0)))) (`LH_C('H', (`LH_N)))))))))
and goto_d6 _lh_goto_arg1_2 _lh_goto_arg2_2 =
  (`LH_C('E', (`LH_C('[', ((mappend_d2_d2 (string_of_int _lh_goto_arg2_2)) ((mappend_d2_d3 (`LH_C(';', (string_of_int _lh_goto_arg1_2)))) (`LH_C('H', (`LH_N)))))))))
and goto_d7 _lh_goto_arg1_5 _lh_goto_arg2_5 =
  (`LH_C('E', (`LH_C('[', ((mappend_d2_d7 (string_of_int _lh_goto_arg2_5)) ((mappend_d2_d8 (`LH_C(';', (string_of_int _lh_goto_arg1_5)))) (`LH_C('H', (`LH_N)))))))))
and goto_d8 _lh_goto_arg1_1_1 _lh_goto_arg2_1_1 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d0 (string_of_int _lh_goto_arg2_1_1)) ((mappend_d3_d1 (`LH_C(';', (string_of_int _lh_goto_arg1_1_1)))) (`LH_C('H', (`LH_N)))))))))
and goto_d9 _lh_goto_arg1_4 _lh_goto_arg2_4 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d4 (string_of_int _lh_goto_arg2_4)) ((mappend_d3_d5 (`LH_C(';', (string_of_int _lh_goto_arg1_4)))) (`LH_C('H', (`LH_N)))))))))
and highlight_d0 _lh_highlight_arg1_1 =
  ((mappend_d1_d8 ((mappend_d1_d9 (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('7', (`LH_C('m', (`LH_N)))))))))))))) _lh_highlight_arg1_1)) (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('0', (`LH_C('m', (`LH_N))))))))))))))
and loop_d0 _lh_loop_arg1_1 _lh_loop_arg2_1 _lh_loop_arg3_1 _lh_loop_arg4_1 =
  ((readChar_d2 ((return_d0 _lh_loop_arg2_1) _lh_loop_arg4_1)) (fun c_3 -> 
    (let rec _lh_matchIdent_1 = c_3 in
      (match _lh_matchIdent_1 with
        | 'B' -> 
          ((((delete_d0 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)
        | 'D' -> 
          ((((delete_d1 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)
        | '`' -> 
          ((return_d1 _lh_loop_arg2_1) _lh_loop_arg4_1)
        | _ -> 
          (if (_lh_loop_arg1_1 < _lh_loop_arg3_1) then
            ((writeChar_d3 _lh_matchIdent_1) ((((loop_d0 (_lh_loop_arg1_1 + 1)) (`LH_C(_lh_matchIdent_1, _lh_loop_arg2_1))) _lh_loop_arg3_1) _lh_loop_arg4_1))
          else
            (ringBell_d2 ((((loop_d0 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)))))))
and moveTo_d0 _lh_moveTo_arg1_2 =
  (match _lh_moveTo_arg1_2 with
    | `LH_P2(_lh_moveTo_LH_P2_0_2, _lh_moveTo_LH_P2_1_2) -> 
      (writeString_d0 ((goto_d6 _lh_moveTo_LH_P2_0_2) _lh_moveTo_LH_P2_1_2))
    | _ -> 
      (failwith "error"))
and moveTo_d1 _lh_moveTo_arg1_1 =
  (match _lh_moveTo_arg1_1 with
    | `LH_P2(_lh_moveTo_LH_P2_0_1, _lh_moveTo_LH_P2_1_1) -> 
      (writeString_d3 ((goto_d7 _lh_moveTo_LH_P2_0_1) _lh_moveTo_LH_P2_1_1))
    | _ -> 
      (failwith "error"))
and pressAnyKey_d0 _lh_pressAnyKey_arg1_1 =
  ((readChar_d0 _lh_pressAnyKey_arg1_1) (fun c_4 -> 
    _lh_pressAnyKey_arg1_1))
and pressAnyKey_d1 _lh_pressAnyKey_arg1_2 =
  ((readChar_d1 _lh_pressAnyKey_arg1_2) (fun c_5 -> 
    _lh_pressAnyKey_arg1_2))
and program_d0 _lh_program_arg1_1 =
  ((writes_d0 (`LH_C(cls_d0, (`LH_C(((at_d2 (`LH_P2(17, 5))) (highlight_d0 (`LH_C('D', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at_d1 (`LH_P2(48, 5))) (`LH_C('V', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('1', (`LH_C('.', (`LH_C('0', (`LH_N)))))))))))))))))))))))), (`LH_C(((at_d0 (`LH_P2(17, 7))) (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at_d5 (`LH_P2(17, 8))) (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C('-', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at_d4 (`LH_P2(17, 9))) (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('H', (`LH_C('u', (`LH_C('g', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('s', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at_d3 (`LH_P2(17, 11))) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('k', (`LH_C('e', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))) (pressAnyKey_d0 ((((promptReadAt_d0 (`LH_P2(17, 15))) 18) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))) (fun name_1 -> 
    (let rec reply_1 = ((mappend_d2_d0 ((mappend_d2_d1 (`LH_C('H', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C('o', (`LH_C(' ', (`LH_N)))))))))))))) name_1)) (`LH_C('!', (`LH_N)))) in
      (((writeAt_d2 (`LH_P2((40 - ((length_d0 reply_1) / 2)), 18))) reply_1) ((moveTo_d0 (`LH_P2(1, 23))) ((writeString_d7 (`LH_C('I', (`LH_C('m', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_C('`', (`LH_N)))))))))))))))))))))))))))))) (pressAnyKey_d1 end_d0)))))))))
and promptReadAt_d0 _lh_promptReadAt_arg1_1 _lh_promptReadAt_arg2_1 _lh_promptReadAt_arg3_1 _lh_promptReadAt_arg4_1 =
  (match _lh_promptReadAt_arg1_1 with
    | `LH_P2(_lh_promptReadAt_LH_P2_0_1, _lh_promptReadAt_LH_P2_1_1) -> 
      (((writeAt_d1 (`LH_P2(_lh_promptReadAt_LH_P2_0_1, _lh_promptReadAt_LH_P2_1_1))) _lh_promptReadAt_arg3_1) (((readAt_d0 (`LH_P2((_lh_promptReadAt_LH_P2_0_1 + (length_d1 _lh_promptReadAt_arg3_1)), _lh_promptReadAt_LH_P2_1_1))) _lh_promptReadAt_arg2_1) _lh_promptReadAt_arg4_1))
    | _ -> 
      (failwith "error"))
and readAt_d0 _lh_readAt_arg1_1 _lh_readAt_arg2_1 _lh_readAt_arg3_1 =
  (match _lh_readAt_arg1_1 with
    | `LH_P2(_lh_readAt_LH_P2_0_1, _lh_readAt_LH_P2_1_1) -> 
      (((writeAt_d0 (`LH_P2(_lh_readAt_LH_P2_0_1, _lh_readAt_LH_P2_1_1))) ((copy_d1 _lh_readAt_arg2_1) '_')) ((moveTo_d1 (`LH_P2(_lh_readAt_LH_P2_0_1, _lh_readAt_LH_P2_1_1))) ((((loop_d0 0) (`LH_N)) _lh_readAt_arg2_1) _lh_readAt_arg3_1)))
    | _ -> 
      (failwith "error"))
and return_d0 _lh_return_arg1_2 _lh_return_arg2_2 =
  (_lh_return_arg2_2 (reverse_d0 _lh_return_arg1_2))
and return_d1 _lh_return_arg1_1 _lh_return_arg2_1 =
  (_lh_return_arg2_1 (reverse_d1 _lh_return_arg1_1))
and reverse_d0 ls_1_9 =
  ((reverse_helper_d0 ls_1_9) (`LH_N))
and reverse_d1 ls_2_1 =
  ((reverse_helper_d1 ls_2_1) (`LH_N))
and ringBell_d0 _lh_ringBell_arg1_1 _lh_ringBell_arg2_1 =
  (((writeChar_d0 'B') _lh_ringBell_arg1_1) _lh_ringBell_arg2_1)
and ringBell_d1 _lh_ringBell_arg1_2 _lh_ringBell_arg2_2 =
  (((writeChar_d1 'B') _lh_ringBell_arg1_2) _lh_ringBell_arg2_2)
and ringBell_d2 _lh_ringBell_arg1_3 _lh_ringBell_arg2_3 =
  (((writeChar_d2 'B') _lh_ringBell_arg1_3) _lh_ringBell_arg2_3)
and testAnsi_nofib_d0 _lh_testAnsi_nofib_arg1_1 =
  ((((foldr_d0 (fun f_1_3 g_1 _lh_funcomp_x_1 -> 
    (f_1_3 (g_1 _lh_funcomp_x_1)))) (fun x_3 -> 
    x_3)) ((copy_d0 _lh_testAnsi_nofib_arg1_1) (program_d0 0))) (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))))))))))))))))
and writeAt_d0 _lh_writeAt_arg1_1 _lh_writeAt_arg2_1 =
  (match _lh_writeAt_arg1_1 with
    | `LH_P2(_lh_writeAt_LH_P2_0_1, _lh_writeAt_LH_P2_1_1) -> 
      (writeString_d4 ((mappend_d3_d2 ((goto_d8 _lh_writeAt_LH_P2_0_1) _lh_writeAt_LH_P2_1_1)) _lh_writeAt_arg2_1))
    | _ -> 
      (failwith "error"))
and writeAt_d1 _lh_writeAt_arg1_2 _lh_writeAt_arg2_2 =
  (match _lh_writeAt_arg1_2 with
    | `LH_P2(_lh_writeAt_LH_P2_0_2, _lh_writeAt_LH_P2_1_2) -> 
      (writeString_d5 ((mappend_d3_d6 ((goto_d9 _lh_writeAt_LH_P2_0_2) _lh_writeAt_LH_P2_1_2)) _lh_writeAt_arg2_2))
    | _ -> 
      (failwith "error"))
and writeAt_d2 _lh_writeAt_arg1_3 _lh_writeAt_arg2_3 =
  (match _lh_writeAt_arg1_3 with
    | `LH_P2(_lh_writeAt_LH_P2_0_3, _lh_writeAt_LH_P2_1_3) -> 
      (writeString_d6 ((mappend_d4_d0 ((goto_d1_d0 _lh_writeAt_LH_P2_0_3) _lh_writeAt_LH_P2_1_3)) _lh_writeAt_arg2_3))
    | _ -> 
      (failwith "error"))
and writeString_d0 _lh_writeString_arg1_7 _lh_writeString_arg2_7 _lh_writeString_arg3_7 =
  ((mappend_d2_d4 _lh_writeString_arg1_7) (_lh_writeString_arg2_7 _lh_writeString_arg3_7))
and writeString_d1 _lh_writeString_arg1_1 _lh_writeString_arg2_1 _lh_writeString_arg3_1 =
  ((mappend_d2_d5 _lh_writeString_arg1_1) (_lh_writeString_arg2_1 _lh_writeString_arg3_1))
and writeString_d2 _lh_writeString_arg1_2 _lh_writeString_arg2_2 _lh_writeString_arg3_2 =
  ((mappend_d2_d6 _lh_writeString_arg1_2) (_lh_writeString_arg2_2 _lh_writeString_arg3_2))
and writeString_d3 _lh_writeString_arg1_5 _lh_writeString_arg2_5 _lh_writeString_arg3_5 =
  ((mappend_d2_d9 _lh_writeString_arg1_5) (_lh_writeString_arg2_5 _lh_writeString_arg3_5))
and writeString_d4 _lh_writeString_arg1_3 _lh_writeString_arg2_3 _lh_writeString_arg3_3 =
  ((mappend_d3_d3 _lh_writeString_arg1_3) (_lh_writeString_arg2_3 _lh_writeString_arg3_3))
and writeString_d5 _lh_writeString_arg1_8 _lh_writeString_arg2_8 _lh_writeString_arg3_8 =
  ((mappend_d3_d7 _lh_writeString_arg1_8) (_lh_writeString_arg2_8 _lh_writeString_arg3_8))
and writeString_d6 _lh_writeString_arg1_6 _lh_writeString_arg2_6 _lh_writeString_arg3_6 =
  ((mappend_d4_d1 _lh_writeString_arg1_6) (_lh_writeString_arg2_6 _lh_writeString_arg3_6))
and writeString_d7 _lh_writeString_arg1_4 _lh_writeString_arg2_4 _lh_writeString_arg3_4 =
  ((mappend_d4_d2 _lh_writeString_arg1_4) (_lh_writeString_arg2_4 _lh_writeString_arg3_4))
and writeString_d8 _lh_writeString_arg1_9 _lh_writeString_arg2_9 _lh_writeString_arg3_9 =
  ((mappend_d4_d4 _lh_writeString_arg1_9) (_lh_writeString_arg2_9 _lh_writeString_arg3_9))
and writes_d0 _lh_writes_arg1_1 =
  (writeString_d8 (concat_d0 _lh_writes_arg1_1));;

(* lumberhack *)
let rec at_d0_d0_d0 _lh_at_arg1_4 _lh_at_arg2_1_0 =
  (_lh_at_arg1_4 _lh_at_arg2_1_0);;
let rec at_d1_d0_d0 _lh_at_arg1_0 _lh_at_arg2_0 =
  (_lh_at_arg1_0 _lh_at_arg2_0);;
let rec at_d2_d0_d0 _lh_at_arg1_3 _lh_at_arg2_9 =
  (_lh_at_arg1_3 _lh_at_arg2_9);;
let rec at_d3_d0_d0 _lh_at_arg1_2 _lh_at_arg2_8 =
  (_lh_at_arg1_2 _lh_at_arg2_8);;
let rec at_d4_d0_d0 _lh_at_arg1_1 _lh_at_arg2_1 =
  (_lh_at_arg1_1 _lh_at_arg2_1);;
let rec at_d5_d0_d0 _lh_at_arg1_5 _lh_at_arg2_1_1 =
  (_lh_at_arg1_5 _lh_at_arg2_1_1);;
let rec concat_d0_d0_d0 lss_2 =
  lss_2;;
let rec concat_d0_d0_d1 lss_3 =
  lss_3;;
let rec concat_d0_d0_d2 lss_7 =
  lss_7;;
let rec concat_d0_d0_d3 lss_1 =
  lss_1;;
let rec concat_d0_d0_d4 lss_0 =
  lss_0;;
let rec concat_d0_d0_d5 lss_6 =
  lss_6;;
let rec concat_d0_d0_d6 lss_4 =
  lss_4;;
let rec concat_d0_d0_d7 lss_5 =
  lss_5;;
let rec end_d0_d0_d0 _lh_end_arg1_0 =
  (`LH_N);;
let rec foldr_d0_d0_d0 f_4 i_3 ls_4_1 =
  ((ls_4_1 f_4) i_3);;
let rec foldr_d0_d0_d1 f_0 i_0 ls_1_3 =
  ((ls_1_3 f_0) i_0);;
let rec length_d0_d0_d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_d0_d0_d0 t_2))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d0 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_1_1_3, t_1_1_3) -> 
      (1 + (length_d1_d0_d0 t_1_1_3))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0_d0 xs_8_2 ys_1_2_1 =
  (match xs_8_2 with
    | `LH_C(h_1_1_4, t_1_1_4) -> 
      (`LH_C(h_1_1_4, ((mappend_d0_d0_d0 t_1_1_4) ys_1_2_1)))
    | `LH_N -> 
      ys_1_2_1);;
let rec mappend_d1_d0_d0 xs_1_9 ys_2_9 =
  (match xs_1_9 with
    | `LH_C(h_2_7, t_2_7) -> 
      (`LH_C(h_2_7, ((mappend_d1_d0_d0 t_2_7) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend_d1_d0_d0_d0 xs_3_0 ys_4_9 =
  (match xs_3_0 with
    | `LH_C(h_4_3, t_4_3) -> 
      (`LH_C(h_4_3, ((mappend_d1_d0_d0_d0 t_4_3) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend_d1_d1_d0_d0 xs_3 ys_5 =
  (match xs_3 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_d1_d1_d0_d0 t_6) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_d1_d2_d0_d0 xs_1_6 ys_2_6 =
  (match xs_1_6 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C(h_2_6, ((mappend_d1_d2_d0_d0 t_2_6) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend_d1_d3_d0_d0 xs_4_5 ys_7_0 =
  (match xs_4_5 with
    | `LH_C(h_6_8, t_6_8) -> 
      (`LH_C(h_6_8, ((mappend_d1_d3_d0_d0 t_6_8) ys_7_0)))
    | `LH_N -> 
      ys_7_0);;
let rec mappend_d1_d4_d0_d0 xs_1_2 ys_2_1 =
  (match xs_1_2 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C(h_2_1, ((mappend_d1_d4_d0_d0 t_2_1) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_d1_d5_d0_d0 xs_2_6 ys_3_8 =
  (match xs_2_6 with
    | `LH_C(h_3_3, t_3_3) -> 
      (`LH_C(h_3_3, ((mappend_d1_d5_d0_d0 t_3_3) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend_d1_d6_d0_d0 xs_6_8 ys_1_0_4 =
  (match xs_6_8 with
    | `LH_C(h_9_8, t_9_8) -> 
      (`LH_C(h_9_8, ((mappend_d1_d6_d0_d0 t_9_8) ys_1_0_4)))
    | `LH_N -> 
      ys_1_0_4);;
let rec mappend_d1_d7_d0_d0 xs_5_7 ys_9_1 =
  (match xs_5_7 with
    | `LH_C(h_8_9, t_8_9) -> 
      (`LH_C(h_8_9, ((mappend_d1_d7_d0_d0 t_8_9) ys_9_1)))
    | `LH_N -> 
      ys_9_1);;
let rec mappend_d1_d8_d0_d0 xs_8_3 ys_1_2_3 =
  (match xs_8_3 with
    | `LH_C(h_1_1_5, t_1_1_5) -> 
      (`LH_C(h_1_1_5, ((mappend_d1_d8_d0_d0 t_1_1_5) ys_1_2_3)))
    | `LH_N -> 
      ys_1_2_3);;
let rec mappend_d1_d9_d0_d0 xs_2_1 ys_3_2 =
  (match xs_2_1 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C(h_2_8, ((mappend_d1_d9_d0_d0 t_2_8) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend_d2_d0_d0 xs_4_0 ys_6_3 =
  (match xs_4_0 with
    | `LH_C(h_6_0, t_6_0) -> 
      (`LH_C(h_6_0, ((mappend_d2_d0_d0 t_6_0) ys_6_3)))
    | `LH_N -> 
      ys_6_3);;
let rec mappend_d2_d0_d0_d0 xs_3_8 ys_5_9 =
  (xs_3_8 ys_5_9);;
let rec mappend_d2_d0_d0_d1 xs_3_2 ys_5_2 =
  (xs_3_2 ys_5_2);;
let rec mappend_d2_d0_d0_d1_d0 xs_5_1 ys_8_1 =
  (xs_5_1 ys_8_1);;
let rec mappend_d2_d0_d0_d1_d1 xs_7_1 ys_1_0_8 =
  (xs_7_1 ys_1_0_8);;
let rec mappend_d2_d0_d0_d1_d2 xs_7_6 ys_1_1_4 =
  (xs_7_6 ys_1_1_4);;
let rec mappend_d2_d0_d0_d1_d3 xs_1_7 ys_2_7 =
  (xs_1_7 ys_2_7);;
let rec mappend_d2_d0_d0_d1_d4 xs_9 ys_1_6 =
  (xs_9 ys_1_6);;
let rec mappend_d2_d0_d0_d1_d5 xs_7_7 ys_1_1_5 =
  (xs_7_7 ys_1_1_5);;
let rec mappend_d2_d0_d0_d2 xs_7_4 ys_1_1_1 =
  (xs_7_4 ys_1_1_1);;
let rec mappend_d2_d0_d0_d3 xs_4_7 ys_7_7 =
  (xs_4_7 ys_7_7);;
let rec mappend_d2_d0_d0_d4 xs_3_4 ys_5_5 =
  (xs_3_4 ys_5_5);;
let rec mappend_d2_d0_d0_d5 xs_6 ys_1_2 =
  (xs_6 ys_1_2);;
let rec mappend_d2_d0_d0_d6 xs_3_6 ys_5_7 =
  (xs_3_6 ys_5_7);;
let rec mappend_d2_d0_d0_d7 xs_2_4 ys_3_5 =
  (xs_2_4 ys_3_5);;
let rec mappend_d2_d0_d0_d8 xs_1 ys_2 =
  (xs_1 ys_2);;
let rec mappend_d2_d0_d0_d9 xs_2_3 ys_3_4 =
  (xs_2_3 ys_3_4);;
let rec mappend_d2_d2_d0_d0 xs_4_3 ys_6_6 =
  (match xs_4_3 with
    | `LH_C(h_6_3, t_6_3) -> 
      (`LH_C(h_6_3, ((mappend_d2_d2_d0_d0 t_6_3) ys_6_6)))
    | `LH_N -> 
      ys_6_6);;
let rec mappend_d2_d3_d0_d0 xs_5_4 ys_8_6 =
  (match xs_5_4 with
    | `LH_C(h_8_2, t_8_2) -> 
      (`LH_C(h_8_2, ((mappend_d2_d3_d0_d0 t_8_2) ys_8_6)))
    | `LH_N -> 
      ys_8_6);;
let rec mappend_d2_d4_d0_d0 xs_4_8 ys_7_8 =
  (match xs_4_8 with
    | `LH_C(h_7_5, t_7_5) -> 
      (`LH_C(h_7_5, ((mappend_d2_d4_d0_d0 t_7_5) ys_7_8)))
    | `LH_N -> 
      ys_7_8);;
let rec mappend_d2_d5_d0_d0 xs_7_2 ys_1_0_9 =
  (match xs_7_2 with
    | `LH_C(h_1_0_3, t_1_0_3) -> 
      (`LH_C(h_1_0_3, ((mappend_d2_d5_d0_d0 t_1_0_3) ys_1_0_9)))
    | `LH_N -> 
      ys_1_0_9);;
let rec mappend_d2_d5_d0_d1 xs_6_3 ys_9_8 =
  (match xs_6_3 with
    | `LH_C(h_9_2, t_9_2) -> 
      (`LH_C(h_9_2, ((mappend_d2_d5_d0_d1 t_9_2) ys_9_8)))
    | `LH_N -> 
      ys_9_8);;
let rec mappend_d2_d5_d0_d2 xs_7_0 ys_1_0_7 =
  (match xs_7_0 with
    | `LH_C(h_1_0_2, t_1_0_2) -> 
      (`LH_C(h_1_0_2, ((mappend_d2_d5_d0_d2 t_1_0_2) ys_1_0_7)))
    | `LH_N -> 
      ys_1_0_7);;
let rec mappend_d2_d5_d0_d3 xs_2_7 ys_4_0 =
  (match xs_2_7 with
    | `LH_C(h_3_4, t_3_4) -> 
      (`LH_C(h_3_4, ((mappend_d2_d5_d0_d3 t_3_4) ys_4_0)))
    | `LH_N -> 
      ys_4_0);;
let rec mappend_d2_d5_d0_d4 xs_5_6 ys_8_9 =
  (match xs_5_6 with
    | `LH_C(h_8_6, t_8_6) -> 
      (`LH_C(h_8_6, ((mappend_d2_d5_d0_d4 t_8_6) ys_8_9)))
    | `LH_N -> 
      ys_8_9);;
let rec mappend_d2_d5_d0_d5 xs_1_4 ys_2_4 =
  (match xs_1_4 with
    | `LH_C(h_2_5, t_2_5) -> 
      (`LH_C(h_2_5, ((mappend_d2_d5_d0_d5 t_2_5) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend_d2_d5_d0_d6 xs_3_1 ys_5_1 =
  (match xs_3_1 with
    | `LH_C(h_4_6, t_4_6) -> 
      (`LH_C(h_4_6, ((mappend_d2_d5_d0_d6 t_4_6) ys_5_1)))
    | `LH_N -> 
      ys_5_1);;
let rec mappend_d2_d6_d0_d0 xs_4_9 ys_7_9 =
  (match xs_4_9 with
    | `LH_C(h_7_6, t_7_6) -> 
      (`LH_C(h_7_6, ((mappend_d2_d6_d0_d0 t_7_6) ys_7_9)))
    | `LH_N -> 
      ys_7_9);;
let rec mappend_d2_d6_d0_d1 xs_4_2 ys_6_5 =
  (match xs_4_2 with
    | `LH_C(h_6_2, t_6_2) -> 
      (`LH_C(h_6_2, ((mappend_d2_d6_d0_d1 t_6_2) ys_6_5)))
    | `LH_N -> 
      ys_6_5);;
let rec mappend_d2_d6_d0_d2 xs_6_6 ys_1_0_1 =
  (match xs_6_6 with
    | `LH_C(h_9_5, t_9_5) -> 
      (`LH_C(h_9_5, ((mappend_d2_d6_d0_d2 t_9_5) ys_1_0_1)))
    | `LH_N -> 
      ys_1_0_1);;
let rec mappend_d2_d6_d0_d3 xs_4_4 ys_6_8 =
  (match xs_4_4 with
    | `LH_C(h_6_7, t_6_7) -> 
      (`LH_C(h_6_7, ((mappend_d2_d6_d0_d3 t_6_7) ys_6_8)))
    | `LH_N -> 
      ys_6_8);;
let rec mappend_d2_d6_d0_d4 xs_6_4 ys_9_9 =
  (match xs_6_4 with
    | `LH_C(h_9_3, t_9_3) -> 
      (`LH_C(h_9_3, ((mappend_d2_d6_d0_d4 t_9_3) ys_9_9)))
    | `LH_N -> 
      ys_9_9);;
let rec mappend_d2_d7_d0_d0 xs_7 ys_1_3 =
  (match xs_7 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend_d2_d7_d0_d0 t_1_2) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d2_d8_d0_d0 xs_3_7 ys_5_8 =
  (match xs_3_7 with
    | `LH_C(h_5_6, t_5_6) -> 
      (`LH_C(h_5_6, ((mappend_d2_d8_d0_d0 t_5_6) ys_5_8)))
    | `LH_N -> 
      ys_5_8);;
let rec mappend_d2_d9_d0_d0 xs_1_3 ys_2_2 =
  (match xs_1_3 with
    | `LH_C(h_2_2, t_2_2) -> 
      (`LH_C(h_2_2, ((mappend_d2_d9_d0_d0 t_2_2) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend_d3_d0_d0 xs_1_0 ys_1_8 =
  (match xs_1_0 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C(h_1_7, ((mappend_d3_d0_d0 t_1_7) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend_d3_d0_d0_d0 xs_7_5 ys_1_1_2 =
  (match xs_7_5 with
    | `LH_C(h_1_0_5, t_1_0_5) -> 
      (`LH_C(h_1_0_5, ((mappend_d3_d0_d0_d0 t_1_0_5) ys_1_1_2)))
    | `LH_N -> 
      ys_1_1_2);;
let rec mappend_d3_d1_d0_d0 xs_6_9 ys_1_0_5 =
  (match xs_6_9 with
    | `LH_C(h_9_9, t_9_9) -> 
      (`LH_C(h_9_9, ((mappend_d3_d1_d0_d0 t_9_9) ys_1_0_5)))
    | `LH_N -> 
      ys_1_0_5);;
let rec mappend_d3_d3_d0_d0 xs_2_8 ys_4_1 =
  (xs_2_8 ys_4_1);;
let rec mappend_d3_d3_d0_d1 xs_3_5 ys_5_6 =
  (xs_3_5 ys_5_6);;
let rec mappend_d3_d3_d0_d2 xs_7_8 ys_1_1_7 =
  (xs_7_8 ys_1_1_7);;
let rec mappend_d3_d4_d0_d0 xs_8_0 ys_1_1_9 =
  (match xs_8_0 with
    | `LH_C(h_1_1_2, t_1_1_2) -> 
      (`LH_C(h_1_1_2, ((mappend_d3_d4_d0_d0 t_1_1_2) ys_1_1_9)))
    | `LH_N -> 
      ys_1_1_9);;
let rec mappend_d3_d5_d0_d0 xs_5_5 ys_8_7 =
  (match xs_5_5 with
    | `LH_C(h_8_3, t_8_3) -> 
      (`LH_C(h_8_3, ((mappend_d3_d5_d0_d0 t_8_3) ys_8_7)))
    | `LH_N -> 
      ys_8_7);;
let rec mappend_d3_d6_d0_d0 xs_3_3 ys_5_3 =
  (match xs_3_3 with
    | `LH_C(h_4_7, t_4_7) -> 
      (`LH_C(h_4_7, ((mappend_d3_d6_d0_d0 t_4_7) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec mappend_d3_d7_d0_d0 xs_2_2 ys_3_3 =
  (match xs_2_2 with
    | `LH_C(h_2_9, t_2_9) -> 
      (`LH_C(h_2_9, ((mappend_d3_d7_d0_d0 t_2_9) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend_d3_d8_d0_d0 xs_5_8 ys_9_2 =
  (match xs_5_8 with
    | `LH_C(h_9_0, t_9_0) -> 
      (`LH_C(h_9_0, ((mappend_d3_d8_d0_d0 t_9_0) ys_9_2)))
    | `LH_N -> 
      ys_9_2);;
let rec mappend_d3_d9_d0_d0 xs_2 ys_3 =
  (match xs_2 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_d3_d9_d0_d0 t_3) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_d4_d0_d0 xs_2_9 ys_4_2 =
  (match xs_2_9 with
    | `LH_C(h_3_5, t_3_5) -> 
      (`LH_C(h_3_5, ((mappend_d4_d0_d0 t_3_5) ys_4_2)))
    | `LH_N -> 
      ys_4_2);;
let rec mappend_d4_d0_d0_d0 xs_6_0 ys_9_5 =
  (match xs_6_0 with
    | `LH_C(h_9_1, t_9_1) -> 
      (`LH_C(h_9_1, ((mappend_d4_d0_d0_d0 t_9_1) ys_9_5)))
    | `LH_N -> 
      ys_9_5);;
let rec mappend_d4_d1_d0_d0 xs_4 ys_6 =
  (match xs_4 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_d4_d1_d0_d0 t_7) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec mappend_d4_d2_d0_d0 xs_2_5 ys_3_6 =
  (match xs_2_5 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C(h_3_0, ((mappend_d4_d2_d0_d0 t_3_0) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec mappend_d4_d3_d0_d6 xs_3_9 ys_6_0 =
  (xs_3_9 ys_6_0);;
let rec mappend_d4_d4_d0_d0 xs_6_1 ys_9_6 =
  (xs_6_1 ys_9_6);;
let rec mappend_d4_d4_d0_d1 xs_1_8 ys_2_8 =
  (xs_1_8 ys_2_8);;
let rec mappend_d4_d4_d0_d2 xs_7_9 ys_1_1_8 =
  (xs_7_9 ys_1_1_8);;
let rec mappend_d4_d4_d0_d3 xs_6_2 ys_9_7 =
  (xs_6_2 ys_9_7);;
let rec mappend_d4_d4_d0_d4 xs_8_1 ys_1_2_0 =
  (xs_8_1 ys_1_2_0);;
let rec mappend_d4_d4_d0_d5 xs_5_9 ys_9_3 =
  (xs_5_9 ys_9_3);;
let rec mappend_d4_d4_d0_d6 xs_1_5 ys_2_5 =
  (xs_1_5 ys_2_5);;
let rec mappend_d4_d4_d0_d7 xs_2_0 ys_3_1 =
  (xs_2_0 ys_3_1);;
let rec mappend_d5_d0_d0 xs_7_3 ys_1_1_0 =
  (match xs_7_3 with
    | `LH_C(h_1_0_4, t_1_0_4) -> 
      (`LH_C(h_1_0_4, ((mappend_d5_d0_d0 t_1_0_4) ys_1_1_0)))
    | `LH_N -> 
      ys_1_1_0);;
let rec mappend_d6_d0_d0 xs_4_1 ys_6_4 =
  (match xs_4_1 with
    | `LH_C(h_6_1, t_6_1) -> 
      (`LH_C(h_6_1, ((mappend_d6_d0_d0 t_6_1) ys_6_4)))
    | `LH_N -> 
      ys_6_4);;
let rec mappend_d7_d0_d0 xs_6_7 ys_1_0_3 =
  (match xs_6_7 with
    | `LH_C(h_9_6, t_9_6) -> 
      (`LH_C(h_9_6, ((mappend_d7_d0_d0 t_9_6) ys_1_0_3)))
    | `LH_N -> 
      ys_1_0_3);;
let rec mappend_d8_d0_d0 xs_6_5 ys_1_0_0 =
  (match xs_6_5 with
    | `LH_C(h_9_4, t_9_4) -> 
      (`LH_C(h_9_4, ((mappend_d8_d0_d0 t_9_4) ys_1_0_0)))
    | `LH_N -> 
      ys_1_0_0);;
let rec mappend_d9_d0_d0 xs_5_0 ys_8_0 =
  (match xs_5_0 with
    | `LH_C(h_7_7, t_7_7) -> 
      (`LH_C(h_7_7, ((mappend_d9_d0_d0 t_7_7) ys_8_0)))
    | `LH_N -> 
      ys_8_0);;
let rec moveTo_d0_d0_d0 _lh_moveTo_arg1_0 =
  _lh_moveTo_arg1_0;;
let rec moveTo_d1_d0_d0 _lh_moveTo_arg1_1 =
  _lh_moveTo_arg1_1;;
let rec promptReadAt_d0_d0_d0 _lh_promptReadAt_arg1_0 _lh_promptReadAt_arg2_1 _lh_promptReadAt_arg3_1 _lh_promptReadAt_arg4_1 =
  (((_lh_promptReadAt_arg1_0 _lh_promptReadAt_arg2_1) _lh_promptReadAt_arg3_1) _lh_promptReadAt_arg4_1);;
let rec readAt_d0_d0_d0 _lh_readAt_arg1_0 _lh_readAt_arg2_0 _lh_readAt_arg3_0 =
  ((_lh_readAt_arg1_0 _lh_readAt_arg2_0) _lh_readAt_arg3_0);;
let rec readChar_d0_d0_d0 _lh_readChar_arg1_5 _lh_readChar_arg2_5 _lh_readChar_arg3_5 =
  (match _lh_readChar_arg3_5 with
    | `LH_N -> 
      (_lh_readChar_arg1_5 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_5, _lh_readChar_LH_C_1_5) -> 
      ((_lh_readChar_arg2_5 _lh_readChar_LH_C_0_5) _lh_readChar_LH_C_1_5)
    | _ -> 
      (failwith "error"));;
let rec readChar_d1_d0_d0 _lh_readChar_arg1_3 _lh_readChar_arg2_3 _lh_readChar_arg3_3 =
  (match _lh_readChar_arg3_3 with
    | `LH_N -> 
      (_lh_readChar_arg1_3 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_3, _lh_readChar_LH_C_1_3) -> 
      ((_lh_readChar_arg2_3 _lh_readChar_LH_C_0_3) _lh_readChar_LH_C_1_3)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d0 _lh_readChar_arg1_4 _lh_readChar_arg2_4 _lh_readChar_arg3_4 =
  (match _lh_readChar_arg3_4 with
    | `LH_N -> 
      (_lh_readChar_arg1_4 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_4, _lh_readChar_LH_C_1_4) -> 
      ((_lh_readChar_arg2_4 _lh_readChar_LH_C_0_4) _lh_readChar_LH_C_1_4)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d1 _lh_readChar_arg1_6 _lh_readChar_arg2_6 _lh_readChar_arg3_6 =
  (match _lh_readChar_arg3_6 with
    | `LH_N -> 
      (_lh_readChar_arg1_6 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_6, _lh_readChar_LH_C_1_6) -> 
      ((_lh_readChar_arg2_6 _lh_readChar_LH_C_0_6) _lh_readChar_LH_C_1_6)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d2 _lh_readChar_arg1_2 _lh_readChar_arg2_2 _lh_readChar_arg3_2 =
  (match _lh_readChar_arg3_2 with
    | `LH_N -> 
      (_lh_readChar_arg1_2 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_2, _lh_readChar_LH_C_1_2) -> 
      ((_lh_readChar_arg2_2 _lh_readChar_LH_C_0_2) _lh_readChar_LH_C_1_2)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d3 _lh_readChar_arg1_1 _lh_readChar_arg2_1 _lh_readChar_arg3_1 =
  (match _lh_readChar_arg3_1 with
    | `LH_N -> 
      (_lh_readChar_arg1_1 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1, _lh_readChar_LH_C_1_1) -> 
      ((_lh_readChar_arg2_1 _lh_readChar_LH_C_0_1) _lh_readChar_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d4 _lh_readChar_arg1_0 _lh_readChar_arg2_0 _lh_readChar_arg3_0 =
  (match _lh_readChar_arg3_0 with
    | `LH_N -> 
      (_lh_readChar_arg1_0 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_0, _lh_readChar_LH_C_1_0) -> 
      ((_lh_readChar_arg2_0 _lh_readChar_LH_C_0_0) _lh_readChar_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d5 _lh_readChar_arg1_8 _lh_readChar_arg2_8 _lh_readChar_arg3_8 =
  (match _lh_readChar_arg3_8 with
    | `LH_N -> 
      (_lh_readChar_arg1_8 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_8, _lh_readChar_LH_C_1_8) -> 
      ((_lh_readChar_arg2_8 _lh_readChar_LH_C_0_8) _lh_readChar_LH_C_1_8)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d6 _lh_readChar_arg1_7 _lh_readChar_arg2_7 _lh_readChar_arg3_7 =
  (match _lh_readChar_arg3_7 with
    | `LH_N -> 
      (_lh_readChar_arg1_7 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_7, _lh_readChar_LH_C_1_7) -> 
      ((_lh_readChar_arg2_7 _lh_readChar_LH_C_0_7) _lh_readChar_LH_C_1_7)
    | _ -> 
      (failwith "error"));;
let rec tail_d0_d0_d0 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_7_4, t_7_4) -> 
      t_7_4
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_0, t_1_0) -> 
      t_1_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d2 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_1_1_1, t_1_1_1) -> 
      t_1_1_1
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d3 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_4_0, t_4_0) -> 
      t_4_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d4 ls_8 =
  (match ls_8 with
    | `LH_C(h_2_0, t_2_0) -> 
      t_2_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d5 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_8_7, t_8_7) -> 
      t_8_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d6 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_5_7, t_5_7) -> 
      t_5_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d0 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_8_8, t_8_8) -> 
      t_8_8
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d1 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_1_1_0, t_1_1_0) -> 
      t_1_1_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d2 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_6_6, t_6_6) -> 
      t_6_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d3 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_9_7, t_9_7) -> 
      t_9_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d4 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_1, t_1_1) -> 
      t_1_1
    | `LH_N -> 
      (failwith "error"));;
let rec writeAt_d0_d0_d0 _lh_writeAt_arg1_0 _lh_writeAt_arg2_0 =
  (_lh_writeAt_arg1_0 _lh_writeAt_arg2_0);;
let rec writeAt_d1_d0_d0 _lh_writeAt_arg1_1 _lh_writeAt_arg2_4 =
  (_lh_writeAt_arg1_1 _lh_writeAt_arg2_4);;
let rec writeAt_d2_d0_d0 _lh_writeAt_arg1_2 _lh_writeAt_arg2_5 =
  (_lh_writeAt_arg1_2 _lh_writeAt_arg2_5);;
let rec writeChar_d0_d0_d0 _lh_writeChar_arg1_2_4 _lh_writeChar_arg2_2_4 _lh_writeChar_arg3_2_4 =
  (`LH_C(_lh_writeChar_arg1_2_4, (_lh_writeChar_arg2_2_4 _lh_writeChar_arg3_2_4)));;
let rec writeChar_d0_d0_d1 _lh_writeChar_arg1_1_1 _lh_writeChar_arg2_1_1 _lh_writeChar_arg3_1_1 =
  (`LH_C(_lh_writeChar_arg1_1_1, (_lh_writeChar_arg2_1_1 _lh_writeChar_arg3_1_1)));;
let rec writeChar_d0_d0_d2 _lh_writeChar_arg1_1_5 _lh_writeChar_arg2_1_5 _lh_writeChar_arg3_1_5 =
  (`LH_C(_lh_writeChar_arg1_1_5, (_lh_writeChar_arg2_1_5 _lh_writeChar_arg3_1_5)));;
let rec writeChar_d0_d0_d3 _lh_writeChar_arg1_1_2 _lh_writeChar_arg2_1_2 _lh_writeChar_arg3_1_2 =
  (`LH_C(_lh_writeChar_arg1_1_2, (_lh_writeChar_arg2_1_2 _lh_writeChar_arg3_1_2)));;
let rec writeChar_d0_d0_d4 _lh_writeChar_arg1_1_7 _lh_writeChar_arg2_1_7 _lh_writeChar_arg3_1_7 =
  (`LH_C(_lh_writeChar_arg1_1_7, (_lh_writeChar_arg2_1_7 _lh_writeChar_arg3_1_7)));;
let rec writeChar_d0_d0_d5 _lh_writeChar_arg1_4 _lh_writeChar_arg2_4 _lh_writeChar_arg3_4 =
  (`LH_C(_lh_writeChar_arg1_4, (_lh_writeChar_arg2_4 _lh_writeChar_arg3_4)));;
let rec writeChar_d0_d0_d6 _lh_writeChar_arg1_1_8 _lh_writeChar_arg2_1_8 _lh_writeChar_arg3_1_8 =
  (`LH_C(_lh_writeChar_arg1_1_8, (_lh_writeChar_arg2_1_8 _lh_writeChar_arg3_1_8)));;
let rec writeChar_d1_d0_d0 _lh_writeChar_arg1_9 _lh_writeChar_arg2_9 _lh_writeChar_arg3_9 =
  (`LH_C(_lh_writeChar_arg1_9, (_lh_writeChar_arg2_9 _lh_writeChar_arg3_9)));;
let rec writeChar_d1_d0_d1 _lh_writeChar_arg1_2_3 _lh_writeChar_arg2_2_3 _lh_writeChar_arg3_2_3 =
  (`LH_C(_lh_writeChar_arg1_2_3, (_lh_writeChar_arg2_2_3 _lh_writeChar_arg3_2_3)));;
let rec writeChar_d1_d0_d2 _lh_writeChar_arg1_2 _lh_writeChar_arg2_2 _lh_writeChar_arg3_2 =
  (`LH_C(_lh_writeChar_arg1_2, (_lh_writeChar_arg2_2 _lh_writeChar_arg3_2)));;
let rec writeChar_d1_d0_d3 _lh_writeChar_arg1_6 _lh_writeChar_arg2_6 _lh_writeChar_arg3_6 =
  (`LH_C(_lh_writeChar_arg1_6, (_lh_writeChar_arg2_6 _lh_writeChar_arg3_6)));;
let rec writeChar_d1_d0_d4 _lh_writeChar_arg1_0 _lh_writeChar_arg2_0 _lh_writeChar_arg3_0 =
  (`LH_C(_lh_writeChar_arg1_0, (_lh_writeChar_arg2_0 _lh_writeChar_arg3_0)));;
let rec writeChar_d2_d0_d0 _lh_writeChar_arg1_1 _lh_writeChar_arg2_1 _lh_writeChar_arg3_1 =
  (`LH_C(_lh_writeChar_arg1_1, (_lh_writeChar_arg2_1 _lh_writeChar_arg3_1)));;
let rec writeChar_d2_d0_d1 _lh_writeChar_arg1_2_5 _lh_writeChar_arg2_2_5 _lh_writeChar_arg3_2_5 =
  (`LH_C(_lh_writeChar_arg1_2_5, (_lh_writeChar_arg2_2_5 _lh_writeChar_arg3_2_5)));;
let rec writeChar_d2_d0_d2 _lh_writeChar_arg1_1_6 _lh_writeChar_arg2_1_6 _lh_writeChar_arg3_1_6 =
  (`LH_C(_lh_writeChar_arg1_1_6, (_lh_writeChar_arg2_1_6 _lh_writeChar_arg3_1_6)));;
let rec writeChar_d2_d0_d3 _lh_writeChar_arg1_5 _lh_writeChar_arg2_5 _lh_writeChar_arg3_5 =
  (`LH_C(_lh_writeChar_arg1_5, (_lh_writeChar_arg2_5 _lh_writeChar_arg3_5)));;
let rec writeChar_d2_d0_d4 _lh_writeChar_arg1_2_0 _lh_writeChar_arg2_2_0 _lh_writeChar_arg3_2_0 =
  (`LH_C(_lh_writeChar_arg1_2_0, (_lh_writeChar_arg2_2_0 _lh_writeChar_arg3_2_0)));;
let rec writeChar_d2_d0_d5 _lh_writeChar_arg1_2_1 _lh_writeChar_arg2_2_1 _lh_writeChar_arg3_2_1 =
  (`LH_C(_lh_writeChar_arg1_2_1, (_lh_writeChar_arg2_2_1 _lh_writeChar_arg3_2_1)));;
let rec writeChar_d2_d0_d6 _lh_writeChar_arg1_1_0 _lh_writeChar_arg2_1_0 _lh_writeChar_arg3_1_0 =
  (`LH_C(_lh_writeChar_arg1_1_0, (_lh_writeChar_arg2_1_0 _lh_writeChar_arg3_1_0)));;
let rec writeChar_d3_d0_d0 _lh_writeChar_arg1_8 _lh_writeChar_arg2_8 _lh_writeChar_arg3_8 =
  (`LH_C(_lh_writeChar_arg1_8, (_lh_writeChar_arg2_8 _lh_writeChar_arg3_8)));;
let rec writeChar_d3_d0_d1 _lh_writeChar_arg1_1_9 _lh_writeChar_arg2_1_9 _lh_writeChar_arg3_1_9 =
  (`LH_C(_lh_writeChar_arg1_1_9, (_lh_writeChar_arg2_1_9 _lh_writeChar_arg3_1_9)));;
let rec writeChar_d3_d0_d2 _lh_writeChar_arg1_1_3 _lh_writeChar_arg2_1_3 _lh_writeChar_arg3_1_3 =
  (`LH_C(_lh_writeChar_arg1_1_3, (_lh_writeChar_arg2_1_3 _lh_writeChar_arg3_1_3)));;
let rec writeChar_d3_d0_d3 _lh_writeChar_arg1_1_4 _lh_writeChar_arg2_1_4 _lh_writeChar_arg3_1_4 =
  (`LH_C(_lh_writeChar_arg1_1_4, (_lh_writeChar_arg2_1_4 _lh_writeChar_arg3_1_4)));;
let rec writeChar_d3_d0_d4 _lh_writeChar_arg1_3 _lh_writeChar_arg2_3 _lh_writeChar_arg3_3 =
  (`LH_C(_lh_writeChar_arg1_3, (_lh_writeChar_arg2_3 _lh_writeChar_arg3_3)));;
let rec writeChar_d3_d0_d5 _lh_writeChar_arg1_2_2 _lh_writeChar_arg2_2_2 _lh_writeChar_arg3_2_2 =
  (`LH_C(_lh_writeChar_arg1_2_2, (_lh_writeChar_arg2_2_2 _lh_writeChar_arg3_2_2)));;
let rec writeChar_d3_d0_d6 _lh_writeChar_arg1_7 _lh_writeChar_arg2_7 _lh_writeChar_arg3_7 =
  (`LH_C(_lh_writeChar_arg1_7, (_lh_writeChar_arg2_7 _lh_writeChar_arg3_7)));;
let rec cls_d0_d0_d0 =
  (let rec h_3_6 = 'L' in
    (let rec t_3_6 = (fun ys_4_3 -> 
      ys_4_3) in
      (fun ys_4_4 -> 
        (let rec h_3_7 = h_3_6 in
          (let rec t_3_7 = ((mappend_d4_d3_d0_d6 t_3_6) ys_4_4) in
            (fun ys_4_5 -> 
              (`LH_C(h_3_7, ((mappend_d4_d4_d0_d6 t_3_7) ys_4_5)))))))))
and copy_d0_d0_d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (let rec h_4_8 = _lh_copy_arg2_0 in
      (let rec t_4_8 = ((copy_d0_d0_d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
        (fun f_1 i_1 -> 
          ((f_1 h_4_8) (((foldr_d0_d0_d0 f_1) i_1) t_4_8)))))
  else
    (fun f_2 i_2 -> 
      i_2))
and copy_d1_d0_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (let rec h_7_1 = _lh_copy_arg2_1 in
      (let rec t_7_1 = ((copy_d1_d0_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1) in
        (fun ys_7_3 -> 
          (`LH_C(h_7_1, ((mappend_d3_d3_d0_d0 t_7_1) ys_7_3))))))
  else
    (fun ys_7_4 -> 
      ys_7_4))
and delete_d0_d0_d0 _lh_delete_arg1_3 _lh_delete_arg2_3 _lh_delete_arg3_3 _lh_delete_arg4_3 =
  (if (_lh_delete_arg1_3 > 0) then
    ((writeString_d1_d0_d2 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d1 (_lh_delete_arg1_3 - 1)) (tail_d0_d0_d2 _lh_delete_arg2_3)) _lh_delete_arg3_3) _lh_delete_arg4_3))
  else
    (ringBell_d0_d0_d2 ((((loop_d0_d0_d2 0) (`LH_N)) _lh_delete_arg3_3) _lh_delete_arg4_3)))
and delete_d0_d0_d1 _lh_delete_arg1_2 _lh_delete_arg2_2 _lh_delete_arg3_2 _lh_delete_arg4_2 =
  (if (_lh_delete_arg1_2 > 0) then
    ((writeString_d1_d0_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d1 (_lh_delete_arg1_2 - 1)) (tail_d0_d0_d0 _lh_delete_arg2_2)) _lh_delete_arg3_2) _lh_delete_arg4_2))
  else
    (ringBell_d0_d0_d0 ((((loop_d0_d0_d1 0) (`LH_N)) _lh_delete_arg3_2) _lh_delete_arg4_2)))
and delete_d0_d0_d2 _lh_delete_arg1_7 _lh_delete_arg2_7 _lh_delete_arg3_7 _lh_delete_arg4_7 =
  (if (_lh_delete_arg1_7 > 0) then
    ((writeString_d1_d0_d1 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d2 (_lh_delete_arg1_7 - 1)) (tail_d0_d0_d1 _lh_delete_arg2_7)) _lh_delete_arg3_7) _lh_delete_arg4_7))
  else
    (ringBell_d0_d0_d1 ((((loop_d0_d0_d2 0) (`LH_N)) _lh_delete_arg3_7) _lh_delete_arg4_7)))
and delete_d0_d0_d3 _lh_delete_arg1_4 _lh_delete_arg2_4 _lh_delete_arg3_4 _lh_delete_arg4_4 =
  (if (_lh_delete_arg1_4 > 0) then
    ((writeString_d1_d0_d3 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d3 (_lh_delete_arg1_4 - 1)) (tail_d0_d0_d3 _lh_delete_arg2_4)) _lh_delete_arg3_4) _lh_delete_arg4_4))
  else
    (ringBell_d0_d0_d3 ((((loop_d0_d0_d3 0) (`LH_N)) _lh_delete_arg3_4) _lh_delete_arg4_4)))
and delete_d0_d0_d4 _lh_delete_arg1_1_1 _lh_delete_arg2_1_1 _lh_delete_arg3_1_1 _lh_delete_arg4_1_1 =
  (if (_lh_delete_arg1_1_1 > 0) then
    ((writeString_d1_d0_d4 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d4 (_lh_delete_arg1_1_1 - 1)) (tail_d0_d0_d4 _lh_delete_arg2_1_1)) _lh_delete_arg3_1_1) _lh_delete_arg4_1_1))
  else
    (ringBell_d0_d0_d4 ((((loop_d0_d0_d4 0) (`LH_N)) _lh_delete_arg3_1_1) _lh_delete_arg4_1_1)))
and delete_d0_d0_d5 _lh_delete_arg1_5 _lh_delete_arg2_5 _lh_delete_arg3_5 _lh_delete_arg4_5 =
  (if (_lh_delete_arg1_5 > 0) then
    ((writeString_d1_d0_d5 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d5 (_lh_delete_arg1_5 - 1)) (tail_d0_d0_d5 _lh_delete_arg2_5)) _lh_delete_arg3_5) _lh_delete_arg4_5))
  else
    (ringBell_d0_d0_d5 ((((loop_d0_d0_d5 0) (`LH_N)) _lh_delete_arg3_5) _lh_delete_arg4_5)))
and delete_d0_d0_d6 _lh_delete_arg1_0 _lh_delete_arg2_0 _lh_delete_arg3_0 _lh_delete_arg4_0 =
  (if (_lh_delete_arg1_0 > 0) then
    ((writeString_d1_d0_d6 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d6 (_lh_delete_arg1_0 - 1)) (tail_d0_d0_d6 _lh_delete_arg2_0)) _lh_delete_arg3_0) _lh_delete_arg4_0))
  else
    (ringBell_d0_d0_d6 ((((loop_d0_d0_d6 0) (`LH_N)) _lh_delete_arg3_0) _lh_delete_arg4_0)))
and delete_d1_d0_d0 _lh_delete_arg1_9 _lh_delete_arg2_9 _lh_delete_arg3_9 _lh_delete_arg4_9 =
  (if (_lh_delete_arg1_9 > 0) then
    ((writeString_d2_d0_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d1 (_lh_delete_arg1_9 - 1)) (tail_d1_d0_d0 _lh_delete_arg2_9)) _lh_delete_arg3_9) _lh_delete_arg4_9))
  else
    (ringBell_d1_d0_d0 ((((loop_d0_d0_d1 0) (`LH_N)) _lh_delete_arg3_9) _lh_delete_arg4_9)))
and delete_d1_d0_d1 _lh_delete_arg1_8 _lh_delete_arg2_8 _lh_delete_arg3_8 _lh_delete_arg4_8 =
  (if (_lh_delete_arg1_8 > 0) then
    ((writeString_d2_d0_d1 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d2 (_lh_delete_arg1_8 - 1)) (tail_d1_d0_d1 _lh_delete_arg2_8)) _lh_delete_arg3_8) _lh_delete_arg4_8))
  else
    (ringBell_d1_d0_d1 ((((loop_d0_d0_d2 0) (`LH_N)) _lh_delete_arg3_8) _lh_delete_arg4_8)))
and delete_d1_d0_d2 _lh_delete_arg1_1_0 _lh_delete_arg2_1_0 _lh_delete_arg3_1_0 _lh_delete_arg4_1_0 =
  (if (_lh_delete_arg1_1_0 > 0) then
    ((writeString_d2_d0_d2 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d3 (_lh_delete_arg1_1_0 - 1)) (tail_d1_d0_d2 _lh_delete_arg2_1_0)) _lh_delete_arg3_1_0) _lh_delete_arg4_1_0))
  else
    (ringBell_d1_d0_d2 ((((loop_d0_d0_d4 0) (`LH_N)) _lh_delete_arg3_1_0) _lh_delete_arg4_1_0)))
and delete_d1_d0_d3 _lh_delete_arg1_6 _lh_delete_arg2_6 _lh_delete_arg3_6 _lh_delete_arg4_6 =
  (if (_lh_delete_arg1_6 > 0) then
    ((writeString_d2_d0_d3 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d5 (_lh_delete_arg1_6 - 1)) (tail_d1_d0_d3 _lh_delete_arg2_6)) _lh_delete_arg3_6) _lh_delete_arg4_6))
  else
    (ringBell_d1_d0_d3 ((((loop_d0_d0_d5 0) (`LH_N)) _lh_delete_arg3_6) _lh_delete_arg4_6)))
and delete_d1_d0_d4 _lh_delete_arg1_1 _lh_delete_arg2_1 _lh_delete_arg3_1 _lh_delete_arg4_1 =
  (if (_lh_delete_arg1_1 > 0) then
    ((writeString_d2_d0_d4 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d6 (_lh_delete_arg1_1 - 1)) (tail_d1_d0_d4 _lh_delete_arg2_1)) _lh_delete_arg3_1) _lh_delete_arg4_1))
  else
    (ringBell_d1_d0_d4 ((((loop_d0_d0_d6 0) (`LH_N)) _lh_delete_arg3_1) _lh_delete_arg4_1)))
and goto_d0_d0_d0 _lh_goto_arg1_2 _lh_goto_arg2_2 =
  (`LH_C('E', (`LH_C('[', ((mappend_d0_d0_d0 (string_of_int _lh_goto_arg2_2)) ((mappend_d1_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_2)))) (`LH_C('H', (`LH_N)))))))))
and goto_d1_d0_d0 _lh_goto_arg1_6 _lh_goto_arg2_6 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d0_d0 (string_of_int _lh_goto_arg2_6)) ((mappend_d4_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_6)))) (`LH_C('H', (`LH_N)))))))))
and goto_d1_d0_d0_d0 _lh_goto_arg1_3 _lh_goto_arg2_3 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d8_d0_d0 (string_of_int _lh_goto_arg2_3)) ((mappend_d3_d9_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_3)))) (`LH_C('H', (`LH_N)))))))))
and goto_d2_d0_d0 _lh_goto_arg1_9 _lh_goto_arg2_9 =
  (`LH_C('E', (`LH_C('[', ((mappend_d6_d0_d0 (string_of_int _lh_goto_arg2_9)) ((mappend_d7_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_9)))) (`LH_C('H', (`LH_N)))))))))
and goto_d3_d0_d0 _lh_goto_arg1_0 _lh_goto_arg2_0 =
  (`LH_C('E', (`LH_C('[', ((mappend_d9_d0_d0 (string_of_int _lh_goto_arg2_0)) ((mappend_d1_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_0)))) (`LH_C('H', (`LH_N)))))))))
and goto_d4_d0_d0 _lh_goto_arg1_5 _lh_goto_arg2_5 =
  (`LH_C('E', (`LH_C('[', ((mappend_d1_d2_d0_d0 (string_of_int _lh_goto_arg2_5)) ((mappend_d1_d3_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_5)))) (`LH_C('H', (`LH_N)))))))))
and goto_d5_d0_d0 _lh_goto_arg1_7 _lh_goto_arg2_7 =
  (`LH_C('E', (`LH_C('[', ((mappend_d1_d5_d0_d0 (string_of_int _lh_goto_arg2_7)) ((mappend_d1_d6_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_7)))) (`LH_C('H', (`LH_N)))))))))
and goto_d6_d0_d0 _lh_goto_arg1_1_0 _lh_goto_arg2_1_0 =
  (`LH_C('E', (`LH_C('[', ((mappend_d2_d2_d0_d0 (string_of_int _lh_goto_arg2_1_0)) ((mappend_d2_d3_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_0)))) (`LH_C('H', (`LH_N)))))))))
and goto_d7_d0_d0 _lh_goto_arg1_8 _lh_goto_arg2_8 =
  (`LH_C('E', (`LH_C('[', ((mappend_d2_d7_d0_d0 (string_of_int _lh_goto_arg2_8)) ((mappend_d2_d8_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_8)))) (`LH_C('H', (`LH_N)))))))))
and goto_d8_d0_d0 _lh_goto_arg1_4 _lh_goto_arg2_4 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d0_d0_d0 (string_of_int _lh_goto_arg2_4)) ((mappend_d3_d1_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_4)))) (`LH_C('H', (`LH_N)))))))))
and goto_d9_d0_d0 _lh_goto_arg1_1 _lh_goto_arg2_1 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d4_d0_d0 (string_of_int _lh_goto_arg2_1)) ((mappend_d3_d5_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1)))) (`LH_C('H', (`LH_N)))))))))
and highlight_d0_d0_d0 _lh_highlight_arg1_0 =
  ((mappend_d1_d8_d0_d0 ((mappend_d1_d9_d0_d0 (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('7', (`LH_C('m', (`LH_N)))))))))))))) _lh_highlight_arg1_0)) (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('0', (`LH_C('m', (`LH_N))))))))))))))
and loop_d0_d0_d0 _lh_loop_arg1_1 _lh_loop_arg2_1 _lh_loop_arg3_1 _lh_loop_arg4_1 =
  ((readChar_d2_d0_d6 ((return_d0_d0_d6 _lh_loop_arg2_1) _lh_loop_arg4_1)) (fun c_2 -> 
    (let rec _lh_matchIdent_1 = c_2 in
      (match _lh_matchIdent_1 with
        | 'B' -> 
          ((((delete_d0_d0_d0 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)
        | 'D' -> 
          ((((delete_d1_d0_d2 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)
        | '`' -> 
          ((return_d1_d0_d6 _lh_loop_arg2_1) _lh_loop_arg4_1)
        | _ -> 
          (if (_lh_loop_arg1_1 < _lh_loop_arg3_1) then
            ((writeChar_d3_d0_d6 _lh_matchIdent_1) ((((loop_d0_d0_d5 (_lh_loop_arg1_1 + 1)) (`LH_C(_lh_matchIdent_1, _lh_loop_arg2_1))) _lh_loop_arg3_1) _lh_loop_arg4_1))
          else
            (ringBell_d2_d0_d6 ((((loop_d0_d0_d6 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)))))))
and loop_d0_d0_d1 _lh_loop_arg1_4 _lh_loop_arg2_4 _lh_loop_arg3_4 _lh_loop_arg4_4 =
  ((readChar_d2_d0_d0 ((return_d0_d0_d0 _lh_loop_arg2_4) _lh_loop_arg4_4)) (fun c_6 -> 
    (let rec _lh_matchIdent_4 = c_6 in
      (match _lh_matchIdent_4 with
        | 'B' -> 
          ((((delete_d0_d0_d1 _lh_loop_arg1_4) _lh_loop_arg2_4) _lh_loop_arg3_4) _lh_loop_arg4_4)
        | 'D' -> 
          ((((delete_d1_d0_d0 _lh_loop_arg1_4) _lh_loop_arg2_4) _lh_loop_arg3_4) _lh_loop_arg4_4)
        | '`' -> 
          ((return_d1_d0_d0 _lh_loop_arg2_4) _lh_loop_arg4_4)
        | _ -> 
          (if (_lh_loop_arg1_4 < _lh_loop_arg3_4) then
            ((writeChar_d3_d0_d0 _lh_matchIdent_4) ((((loop_d0_d0_d1 (_lh_loop_arg1_4 + 1)) (`LH_C(_lh_matchIdent_4, _lh_loop_arg2_4))) _lh_loop_arg3_4) _lh_loop_arg4_4))
          else
            (ringBell_d2_d0_d0 ((((loop_d0_d0_d1 _lh_loop_arg1_4) _lh_loop_arg2_4) _lh_loop_arg3_4) _lh_loop_arg4_4)))))))
and loop_d0_d0_d2 _lh_loop_arg1_6 _lh_loop_arg2_6 _lh_loop_arg3_6 _lh_loop_arg4_6 =
  ((readChar_d2_d0_d1 ((return_d0_d0_d1 _lh_loop_arg2_6) _lh_loop_arg4_6)) (fun c_8 -> 
    (let rec _lh_matchIdent_6 = c_8 in
      (match _lh_matchIdent_6 with
        | 'B' -> 
          ((((delete_d0_d0_d2 _lh_loop_arg1_6) _lh_loop_arg2_6) _lh_loop_arg3_6) _lh_loop_arg4_6)
        | 'D' -> 
          ((((delete_d1_d0_d1 _lh_loop_arg1_6) _lh_loop_arg2_6) _lh_loop_arg3_6) _lh_loop_arg4_6)
        | '`' -> 
          ((return_d1_d0_d1 _lh_loop_arg2_6) _lh_loop_arg4_6)
        | _ -> 
          (if (_lh_loop_arg1_6 < _lh_loop_arg3_6) then
            ((writeChar_d3_d0_d1 _lh_matchIdent_6) ((((loop_d0_d0_d2 (_lh_loop_arg1_6 + 1)) (`LH_C(_lh_matchIdent_6, _lh_loop_arg2_6))) _lh_loop_arg3_6) _lh_loop_arg4_6))
          else
            (ringBell_d2_d0_d1 ((((loop_d0_d0_d2 _lh_loop_arg1_6) _lh_loop_arg2_6) _lh_loop_arg3_6) _lh_loop_arg4_6)))))))
and loop_d0_d0_d3 _lh_loop_arg1_0 _lh_loop_arg2_0 _lh_loop_arg3_0 _lh_loop_arg4_0 =
  ((readChar_d2_d0_d2 ((return_d0_d0_d2 _lh_loop_arg2_0) _lh_loop_arg4_0)) (fun c_1 -> 
    (let rec _lh_matchIdent_0 = c_1 in
      (match _lh_matchIdent_0 with
        | 'B' -> 
          ((((delete_d0_d0_d3 _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)
        | 'D' -> 
          ((((delete_d1_d0_d2 _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)
        | '`' -> 
          ((return_d1_d0_d2 _lh_loop_arg2_0) _lh_loop_arg4_0)
        | _ -> 
          (if (_lh_loop_arg1_0 < _lh_loop_arg3_0) then
            ((writeChar_d3_d0_d2 _lh_matchIdent_0) ((((loop_d0_d0_d3 (_lh_loop_arg1_0 + 1)) (`LH_C(_lh_matchIdent_0, _lh_loop_arg2_0))) _lh_loop_arg3_0) _lh_loop_arg4_0))
          else
            (ringBell_d2_d0_d2 ((((loop_d0_d0_d3 _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)))))))
and loop_d0_d0_d4 _lh_loop_arg1_3 _lh_loop_arg2_3 _lh_loop_arg3_3 _lh_loop_arg4_3 =
  ((readChar_d2_d0_d3 ((return_d0_d0_d3 _lh_loop_arg2_3) _lh_loop_arg4_3)) (fun c_4 -> 
    (let rec _lh_matchIdent_3 = c_4 in
      (match _lh_matchIdent_3 with
        | 'B' -> 
          ((((delete_d0_d0_d4 _lh_loop_arg1_3) _lh_loop_arg2_3) _lh_loop_arg3_3) _lh_loop_arg4_3)
        | 'D' -> 
          ((((delete_d1_d0_d2 _lh_loop_arg1_3) _lh_loop_arg2_3) _lh_loop_arg3_3) _lh_loop_arg4_3)
        | '`' -> 
          ((return_d1_d0_d3 _lh_loop_arg2_3) _lh_loop_arg4_3)
        | _ -> 
          (if (_lh_loop_arg1_3 < _lh_loop_arg3_3) then
            ((writeChar_d3_d0_d3 _lh_matchIdent_3) ((((loop_d0_d0_d4 (_lh_loop_arg1_3 + 1)) (`LH_C(_lh_matchIdent_3, _lh_loop_arg2_3))) _lh_loop_arg3_3) _lh_loop_arg4_3))
          else
            (ringBell_d2_d0_d3 ((((loop_d0_d0_d4 _lh_loop_arg1_3) _lh_loop_arg2_3) _lh_loop_arg3_3) _lh_loop_arg4_3)))))))
and loop_d0_d0_d5 _lh_loop_arg1_2 _lh_loop_arg2_2 _lh_loop_arg3_2 _lh_loop_arg4_2 =
  ((readChar_d2_d0_d4 ((return_d0_d0_d4 _lh_loop_arg2_2) _lh_loop_arg4_2)) (fun c_3 -> 
    (let rec _lh_matchIdent_2 = c_3 in
      (match _lh_matchIdent_2 with
        | 'B' -> 
          ((((delete_d0_d0_d5 _lh_loop_arg1_2) _lh_loop_arg2_2) _lh_loop_arg3_2) _lh_loop_arg4_2)
        | 'D' -> 
          ((((delete_d1_d0_d3 _lh_loop_arg1_2) _lh_loop_arg2_2) _lh_loop_arg3_2) _lh_loop_arg4_2)
        | '`' -> 
          ((return_d1_d0_d4 _lh_loop_arg2_2) _lh_loop_arg4_2)
        | _ -> 
          (if (_lh_loop_arg1_2 < _lh_loop_arg3_2) then
            ((writeChar_d3_d0_d4 _lh_matchIdent_2) ((((loop_d0_d0_d5 (_lh_loop_arg1_2 + 1)) (`LH_C(_lh_matchIdent_2, _lh_loop_arg2_2))) _lh_loop_arg3_2) _lh_loop_arg4_2))
          else
            (ringBell_d2_d0_d4 ((((loop_d0_d0_d5 _lh_loop_arg1_2) _lh_loop_arg2_2) _lh_loop_arg3_2) _lh_loop_arg4_2)))))))
and loop_d0_d0_d6 _lh_loop_arg1_5 _lh_loop_arg2_5 _lh_loop_arg3_5 _lh_loop_arg4_5 =
  ((readChar_d2_d0_d5 ((return_d0_d0_d5 _lh_loop_arg2_5) _lh_loop_arg4_5)) (fun c_7 -> 
    (let rec _lh_matchIdent_5 = c_7 in
      (match _lh_matchIdent_5 with
        | 'B' -> 
          ((((delete_d0_d0_d6 _lh_loop_arg1_5) _lh_loop_arg2_5) _lh_loop_arg3_5) _lh_loop_arg4_5)
        | 'D' -> 
          ((((delete_d1_d0_d4 _lh_loop_arg1_5) _lh_loop_arg2_5) _lh_loop_arg3_5) _lh_loop_arg4_5)
        | '`' -> 
          ((return_d1_d0_d5 _lh_loop_arg2_5) _lh_loop_arg4_5)
        | _ -> 
          (if (_lh_loop_arg1_5 < _lh_loop_arg3_5) then
            ((writeChar_d3_d0_d5 _lh_matchIdent_5) ((((loop_d0_d0_d6 (_lh_loop_arg1_5 + 1)) (`LH_C(_lh_matchIdent_5, _lh_loop_arg2_5))) _lh_loop_arg3_5) _lh_loop_arg4_5))
          else
            (ringBell_d2_d0_d5 ((((loop_d0_d0_d6 _lh_loop_arg1_5) _lh_loop_arg2_5) _lh_loop_arg3_5) _lh_loop_arg4_5)))))))
and mappend_d2_d1_d0_d0 xs_1_1 ys_1_9 =
  (match xs_1_1 with
    | `LH_C(h_1_8, t_1_8) -> 
      (let rec h_1_9 = h_1_8 in
        (let rec t_1_9 = ((mappend_d2_d1_d0_d0 t_1_8) ys_1_9) in
          (fun ys_2_0 -> 
            (`LH_C(h_1_9, ((mappend_d2_d0_d0_d1_d5 t_1_9) ys_2_0))))))
    | `LH_N -> 
      ys_1_9)
and mappend_d3_d2_d0_d0 xs_8 ys_1_4 =
  (match xs_8 with
    | `LH_C(h_1_3, t_1_3) -> 
      (let rec h_1_4 = h_1_3 in
        (let rec t_1_4 = ((mappend_d3_d2_d0_d0 t_1_3) ys_1_4) in
          (fun ys_1_5 -> 
            (`LH_C(h_1_4, ((mappend_d3_d3_d0_d1 t_1_4) ys_1_5))))))
    | `LH_N -> 
      ys_1_4)
and mappend_d4_d3_d0_d0 xs_5 ys_7 =
  (match xs_5 with
    | `LH_C(h_8, t_8) -> 
      (let rec h_9 = h_8 in
        (let rec t_9 = ((mappend_d4_d3_d0_d0 t_8) ys_7) in
          (fun ys_8 -> 
            (`LH_C(h_9, ((mappend_d4_d4_d0_d0 t_9) ys_8))))))
    | `LH_N -> 
      ys_7)
and mappend_d4_d3_d0_d1 xs_5_2 ys_8_2 =
  (match xs_5_2 with
    | `LH_C(h_7_8, t_7_8) -> 
      (let rec h_7_9 = h_7_8 in
        (let rec t_7_9 = ((mappend_d4_d3_d0_d1 t_7_8) ys_8_2) in
          (fun ys_8_3 -> 
            (`LH_C(h_7_9, ((mappend_d4_d4_d0_d1 t_7_9) ys_8_3))))))
    | `LH_N -> 
      ys_8_2)
and mappend_d4_d3_d0_d2 xs_5_3 ys_8_4 =
  (match xs_5_3 with
    | `LH_C(h_8_0, t_8_0) -> 
      (let rec h_8_1 = h_8_0 in
        (let rec t_8_1 = ((mappend_d4_d3_d0_d2 t_8_0) ys_8_4) in
          (fun ys_8_5 -> 
            (`LH_C(h_8_1, ((mappend_d4_d4_d0_d2 t_8_1) ys_8_5))))))
    | `LH_N -> 
      ys_8_4)
and mappend_d4_d3_d0_d3 xs_4_6 ys_7_1 =
  (match xs_4_6 with
    | `LH_C(h_6_9, t_6_9) -> 
      (let rec h_7_0 = h_6_9 in
        (let rec t_7_0 = ((mappend_d4_d3_d0_d3 t_6_9) ys_7_1) in
          (fun ys_7_2 -> 
            (`LH_C(h_7_0, ((mappend_d4_d4_d0_d3 t_7_0) ys_7_2))))))
    | `LH_N -> 
      ys_7_1)
and mappend_d4_d3_d0_d4 xs_8_4 ys_1_2_5 =
  (match xs_8_4 with
    | `LH_C(h_1_1_6, t_1_1_6) -> 
      (let rec h_1_1_7 = h_1_1_6 in
        (let rec t_1_1_7 = ((mappend_d4_d3_d0_d4 t_1_1_6) ys_1_2_5) in
          (fun ys_1_2_6 -> 
            (`LH_C(h_1_1_7, ((mappend_d4_d4_d0_d4 t_1_1_7) ys_1_2_6))))))
    | `LH_N -> 
      ys_1_2_5)
and mappend_d4_d3_d0_d5 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (let rec h_1 = h_0 in
        (let rec t_1 = ((mappend_d4_d3_d0_d5 t_0) ys_0) in
          (fun ys_1 -> 
            (`LH_C(h_1, ((mappend_d4_d4_d0_d5 t_1) ys_1))))))
    | `LH_N -> 
      ys_0)
and pressAnyKey_d0_d0_d0 _lh_pressAnyKey_arg1_0 =
  ((readChar_d0_d0_d0 _lh_pressAnyKey_arg1_0) (fun c_0 -> 
    _lh_pressAnyKey_arg1_0))
and pressAnyKey_d1_d0_d0 _lh_pressAnyKey_arg1_1 =
  ((readChar_d1_d0_d0 _lh_pressAnyKey_arg1_1) (fun c_5 -> 
    _lh_pressAnyKey_arg1_1))
and program_d0_d0_d0 _lh_program_arg1_0 =
  ((writes_d0_d0_d0 (let rec h_4_9 = cls_d0_d0_d0 in
    (let rec t_4_9 = (let rec h_5_0 = ((at_d2_d0_d0 (let rec _lh_at_LH_P2_0_0 = 17 in
      (let rec _lh_at_LH_P2_1_0 = 5 in
        (fun _lh_at_arg2_2 -> 
          ((mappend_d8_d0_d0 ((goto_d2_d0_d0 _lh_at_LH_P2_0_0) _lh_at_LH_P2_1_0)) _lh_at_arg2_2))))) (highlight_d0_d0_d0 (`LH_C('D', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))) in
      (let rec t_5_0 = (let rec h_5_1 = ((at_d1_d0_d0 (let rec _lh_at_LH_P2_0_1 = 48 in
        (let rec _lh_at_LH_P2_1_1 = 5 in
          (fun _lh_at_arg2_3 -> 
            ((mappend_d5_d0_d0 ((goto_d1_d0_d0 _lh_at_LH_P2_0_1) _lh_at_LH_P2_1_1)) _lh_at_arg2_3))))) (`LH_C('V', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('1', (`LH_C('.', (`LH_C('0', (`LH_N)))))))))))))))))))))))) in
        (let rec t_5_1 = (let rec h_5_2 = ((at_d0_d0_d0 (let rec _lh_at_LH_P2_0_2 = 17 in
          (let rec _lh_at_LH_P2_1_2 = 7 in
            (fun _lh_at_arg2_4 -> 
              ((mappend_d2_d0_d0 ((goto_d0_d0_d0 _lh_at_LH_P2_0_2) _lh_at_LH_P2_1_2)) _lh_at_arg2_4))))) (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
          (let rec t_5_2 = (let rec h_5_3 = ((at_d5_d0_d0 (let rec _lh_at_LH_P2_0_3 = 17 in
            (let rec _lh_at_LH_P2_1_3 = 8 in
              (fun _lh_at_arg2_5 -> 
                ((mappend_d1_d7_d0_d0 ((goto_d5_d0_d0 _lh_at_LH_P2_0_3) _lh_at_LH_P2_1_3)) _lh_at_arg2_5))))) (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C('-', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
            (let rec t_5_3 = (let rec h_5_4 = ((at_d4_d0_d0 (let rec _lh_at_LH_P2_0_4 = 17 in
              (let rec _lh_at_LH_P2_1_4 = 9 in
                (fun _lh_at_arg2_6 -> 
                  ((mappend_d1_d4_d0_d0 ((goto_d4_d0_d0 _lh_at_LH_P2_0_4) _lh_at_LH_P2_1_4)) _lh_at_arg2_6))))) (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('H', (`LH_C('u', (`LH_C('g', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('s', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
              (let rec t_5_4 = (let rec h_5_5 = ((at_d3_d0_d0 (let rec _lh_at_LH_P2_0_5 = 17 in
                (let rec _lh_at_LH_P2_1_5 = 11 in
                  (fun _lh_at_arg2_7 -> 
                    ((mappend_d1_d1_d0_d0 ((goto_d3_d0_d0 _lh_at_LH_P2_0_5) _lh_at_LH_P2_1_5)) _lh_at_arg2_7))))) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('k', (`LH_C('e', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
                (let rec t_5_5 = (fun ys_5_4 -> 
                  ys_5_4) in
                  ((mappend_d4_d3_d0_d0 h_5_5) (concat_d0_d0_d0 t_5_5)))) in
                ((mappend_d4_d3_d0_d1 h_5_4) (concat_d0_d0_d1 t_5_4)))) in
              ((mappend_d4_d3_d0_d2 h_5_3) (concat_d0_d0_d2 t_5_3)))) in
            ((mappend_d4_d3_d0_d3 h_5_2) (concat_d0_d0_d3 t_5_2)))) in
          ((mappend_d4_d3_d0_d4 h_5_1) (concat_d0_d0_d4 t_5_1)))) in
        ((mappend_d4_d3_d0_d5 h_5_0) (concat_d0_d0_d5 t_5_0)))) in
      ((mappend_d4_d3_d0_d6 h_4_9) (concat_d0_d0_d6 t_4_9))))) (pressAnyKey_d0_d0_d0 ((((promptReadAt_d0_d0_d0 (let rec _lh_promptReadAt_LH_P2_0_0 = 17 in
    (let rec _lh_promptReadAt_LH_P2_1_0 = 15 in
      (fun _lh_promptReadAt_arg2_0 _lh_promptReadAt_arg3_0 _lh_promptReadAt_arg4_0 -> 
        (((writeAt_d1_d0_d0 (let rec _lh_writeAt_LH_P2_0_0 = _lh_promptReadAt_LH_P2_0_0 in
          (let rec _lh_writeAt_LH_P2_1_0 = _lh_promptReadAt_LH_P2_1_0 in
            (fun _lh_writeAt_arg2_1 -> 
              (writeString_d5_d0_d0 ((mappend_d3_d6_d0_d0 ((goto_d9_d0_d0 _lh_writeAt_LH_P2_0_0) _lh_writeAt_LH_P2_1_0)) _lh_writeAt_arg2_1)))))) _lh_promptReadAt_arg3_0) (((readAt_d0_d0_d0 (let rec _lh_readAt_LH_P2_0_0 = (_lh_promptReadAt_LH_P2_0_0 + (length_d1_d0_d0 _lh_promptReadAt_arg3_0)) in
          (let rec _lh_readAt_LH_P2_1_0 = _lh_promptReadAt_LH_P2_1_0 in
            (fun _lh_readAt_arg2_1 _lh_readAt_arg3_1 -> 
              (((writeAt_d0_d0_d0 (let rec _lh_writeAt_LH_P2_0_1 = _lh_readAt_LH_P2_0_0 in
                (let rec _lh_writeAt_LH_P2_1_1 = _lh_readAt_LH_P2_1_0 in
                  (fun _lh_writeAt_arg2_2 -> 
                    (writeString_d4_d0_d0 ((mappend_d3_d2_d0_d0 ((goto_d8_d0_d0 _lh_writeAt_LH_P2_0_1) _lh_writeAt_LH_P2_1_1)) _lh_writeAt_arg2_2)))))) ((copy_d1_d0_d0 _lh_readAt_arg2_1) '_')) ((moveTo_d1_d0_d0 (let rec _lh_moveTo_LH_P2_0_0 = _lh_readAt_LH_P2_0_0 in
                (let rec _lh_moveTo_LH_P2_1_0 = _lh_readAt_LH_P2_1_0 in
                  (writeString_d3_d0_d0 ((goto_d7_d0_d0 _lh_moveTo_LH_P2_0_0) _lh_moveTo_LH_P2_1_0))))) ((((loop_d0_d0_d0 0) (`LH_N)) _lh_readAt_arg2_1) _lh_readAt_arg3_1))))))) _lh_promptReadAt_arg2_0) _lh_promptReadAt_arg4_0)))))) 18) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))) (fun name_0 -> 
    (let rec reply_0 = ((mappend_d2_d0_d0_d1_d4 ((mappend_d2_d1_d0_d0 (`LH_C('H', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C('o', (`LH_C(' ', (`LH_N)))))))))))))) name_0)) (`LH_C('!', (`LH_N)))) in
      (((writeAt_d2_d0_d0 (let rec _lh_writeAt_LH_P2_0_2 = (40 - ((length_d0_d0_d0 reply_0) / 2)) in
        (let rec _lh_writeAt_LH_P2_1_2 = 18 in
          (fun _lh_writeAt_arg2_3 -> 
            (writeString_d6_d0_d0 ((mappend_d4_d0_d0_d0 ((goto_d1_d0_d0_d0 _lh_writeAt_LH_P2_0_2) _lh_writeAt_LH_P2_1_2)) _lh_writeAt_arg2_3)))))) reply_0) ((moveTo_d0_d0_d0 (let rec _lh_moveTo_LH_P2_0_1 = 1 in
        (let rec _lh_moveTo_LH_P2_1_1 = 23 in
          (writeString_d0_d0_d0 ((goto_d6_d0_d0 _lh_moveTo_LH_P2_0_1) _lh_moveTo_LH_P2_1_1))))) ((writeString_d7_d0_d0 (`LH_C('I', (`LH_C('m', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_C('`', (`LH_N)))))))))))))))))))))))))))))) (pressAnyKey_d1_d0_d0 end_d0_d0_d0)))))))))
and return_d0_d0_d0 _lh_return_arg1_1_3 _lh_return_arg2_1_3 =
  (_lh_return_arg2_1_3 (reverse_d0_d0_d0 _lh_return_arg1_1_3))
and return_d0_d0_d1 _lh_return_arg1_4 _lh_return_arg2_4 =
  (_lh_return_arg2_4 (reverse_d0_d0_d1 _lh_return_arg1_4))
and return_d0_d0_d2 _lh_return_arg1_6 _lh_return_arg2_6 =
  (_lh_return_arg2_6 (reverse_d0_d0_d2 _lh_return_arg1_6))
and return_d0_d0_d3 _lh_return_arg1_1_0 _lh_return_arg2_1_0 =
  (_lh_return_arg2_1_0 (reverse_d0_d0_d3 _lh_return_arg1_1_0))
and return_d0_d0_d4 _lh_return_arg1_2 _lh_return_arg2_2 =
  (_lh_return_arg2_2 (reverse_d0_d0_d4 _lh_return_arg1_2))
and return_d0_d0_d5 _lh_return_arg1_1_2 _lh_return_arg2_1_2 =
  (_lh_return_arg2_1_2 (reverse_d0_d0_d5 _lh_return_arg1_1_2))
and return_d0_d0_d6 _lh_return_arg1_8 _lh_return_arg2_8 =
  (_lh_return_arg2_8 (reverse_d0_d0_d6 _lh_return_arg1_8))
and return_d1_d0_d0 _lh_return_arg1_0 _lh_return_arg2_0 =
  (_lh_return_arg2_0 (reverse_d1_d0_d0 _lh_return_arg1_0))
and return_d1_d0_d1 _lh_return_arg1_3 _lh_return_arg2_3 =
  (_lh_return_arg2_3 (reverse_d1_d0_d1 _lh_return_arg1_3))
and return_d1_d0_d2 _lh_return_arg1_1_1 _lh_return_arg2_1_1 =
  (_lh_return_arg2_1_1 (reverse_d1_d0_d2 _lh_return_arg1_1_1))
and return_d1_d0_d3 _lh_return_arg1_1 _lh_return_arg2_1 =
  (_lh_return_arg2_1 (reverse_d1_d0_d3 _lh_return_arg1_1))
and return_d1_d0_d4 _lh_return_arg1_7 _lh_return_arg2_7 =
  (_lh_return_arg2_7 (reverse_d1_d0_d4 _lh_return_arg1_7))
and return_d1_d0_d5 _lh_return_arg1_9 _lh_return_arg2_9 =
  (_lh_return_arg2_9 (reverse_d1_d0_d5 _lh_return_arg1_9))
and return_d1_d0_d6 _lh_return_arg1_5 _lh_return_arg2_5 =
  (_lh_return_arg2_5 (reverse_d1_d0_d6 _lh_return_arg1_5))
and reverse_helper_d0_d0_d0 ls_1_8 a_6 =
  (match ls_1_8 with
    | `LH_C(h_4_4, t_4_4) -> 
      ((reverse_helper_d0_d0_d0 t_4_4) (let rec h_4_5 = h_4_4 in
        (let rec t_4_5 = a_6 in
          (fun ys_5_0 -> 
            (`LH_C(h_4_5, ((mappend_d2_d0_d0_d0 t_4_5) ys_5_0)))))))
    | `LH_N -> 
      a_6)
and reverse_helper_d0_d0_d1 ls_2_2 a_8 =
  (match ls_2_2 with
    | `LH_C(h_6_4, t_6_4) -> 
      ((reverse_helper_d0_d0_d1 t_6_4) (let rec h_6_5 = h_6_4 in
        (let rec t_6_5 = a_8 in
          (fun ys_6_7 -> 
            (`LH_C(h_6_5, ((mappend_d2_d0_d0_d2 t_6_5) ys_6_7)))))))
    | `LH_N -> 
      a_8)
and reverse_helper_d0_d0_d2 ls_1_1 a_3 =
  (match ls_1_1 with
    | `LH_C(h_3_1, t_3_1) -> 
      ((reverse_helper_d0_d0_d2 t_3_1) (let rec h_3_2 = h_3_1 in
        (let rec t_3_2 = a_3 in
          (fun ys_3_7 -> 
            (`LH_C(h_3_2, ((mappend_d2_d0_d0_d4 t_3_2) ys_3_7)))))))
    | `LH_N -> 
      a_3)
and reverse_helper_d0_d0_d3 ls_3_7 a_1_3 =
  (match ls_3_7 with
    | `LH_C(h_1_0_8, t_1_0_8) -> 
      ((reverse_helper_d0_d0_d3 t_1_0_8) (let rec h_1_0_9 = h_1_0_8 in
        (let rec t_1_0_9 = a_1_3 in
          (fun ys_1_1_6 -> 
            (`LH_C(h_1_0_9, ((mappend_d2_d0_d0_d6 t_1_0_9) ys_1_1_6)))))))
    | `LH_N -> 
      a_1_3)
and reverse_helper_d0_d0_d4 ls_3_6 a_1_2 =
  (match ls_3_6 with
    | `LH_C(h_1_0_6, t_1_0_6) -> 
      ((reverse_helper_d0_d0_d4 t_1_0_6) (let rec h_1_0_7 = h_1_0_6 in
        (let rec t_1_0_7 = a_1_2 in
          (fun ys_1_1_3 -> 
            (`LH_C(h_1_0_7, ((mappend_d2_d0_d0_d8 t_1_0_7) ys_1_1_3)))))))
    | `LH_N -> 
      a_1_2)
and reverse_helper_d0_d0_d5 ls_3_5 a_1_1 =
  (match ls_3_5 with
    | `LH_C(h_1_0_0, t_1_0_0) -> 
      ((reverse_helper_d0_d0_d5 t_1_0_0) (let rec h_1_0_1 = h_1_0_0 in
        (let rec t_1_0_1 = a_1_1 in
          (fun ys_1_0_6 -> 
            (`LH_C(h_1_0_1, ((mappend_d2_d0_d0_d1_d0 t_1_0_1) ys_1_0_6)))))))
    | `LH_N -> 
      a_1_1)
and reverse_helper_d0_d0_d6 ls_1_4 a_4 =
  (match ls_1_4 with
    | `LH_C(h_3_8, t_3_8) -> 
      ((reverse_helper_d0_d0_d6 t_3_8) (let rec h_3_9 = h_3_8 in
        (let rec t_3_9 = a_4 in
          (fun ys_4_6 -> 
            (`LH_C(h_3_9, ((mappend_d2_d0_d0_d1_d2 t_3_9) ys_4_6)))))))
    | `LH_N -> 
      a_4)
and reverse_helper_d1_d0_d0 ls_1_7 a_5 =
  (match ls_1_7 with
    | `LH_C(h_4_1, t_4_1) -> 
      ((reverse_helper_d1_d0_d0 t_4_1) (let rec h_4_2 = h_4_1 in
        (let rec t_4_2 = a_5 in
          (fun ys_4_8 -> 
            (`LH_C(h_4_2, ((mappend_d2_d0_d0_d1 t_4_2) ys_4_8)))))))
    | `LH_N -> 
      a_5)
and reverse_helper_d1_d0_d1 ls_1 a_0 =
  (match ls_1 with
    | `LH_C(h_4, t_4) -> 
      ((reverse_helper_d1_d0_d1 t_4) (let rec h_5 = h_4 in
        (let rec t_5 = a_0 in
          (fun ys_4 -> 
            (`LH_C(h_5, ((mappend_d2_d0_d0_d3 t_5) ys_4)))))))
    | `LH_N -> 
      a_0)
and reverse_helper_d1_d0_d2 ls_9 a_2 =
  (match ls_9 with
    | `LH_C(h_2_3, t_2_3) -> 
      ((reverse_helper_d1_d0_d2 t_2_3) (let rec h_2_4 = h_2_3 in
        (let rec t_2_4 = a_2 in
          (fun ys_2_3 -> 
            (`LH_C(h_2_4, ((mappend_d2_d0_d0_d5 t_2_4) ys_2_3)))))))
    | `LH_N -> 
      a_2)
and reverse_helper_d1_d0_d3 ls_2_5 a_9 =
  (match ls_2_5 with
    | `LH_C(h_7_2, t_7_2) -> 
      ((reverse_helper_d1_d0_d3 t_7_2) (let rec h_7_3 = h_7_2 in
        (let rec t_7_3 = a_9 in
          (fun ys_7_5 -> 
            (`LH_C(h_7_3, ((mappend_d2_d0_d0_d7 t_7_3) ys_7_5)))))))
    | `LH_N -> 
      a_9)
and reverse_helper_d1_d0_d4 ls_2_0 a_7 =
  (match ls_2_0 with
    | `LH_C(h_5_8, t_5_8) -> 
      ((reverse_helper_d1_d0_d4 t_5_8) (let rec h_5_9 = h_5_8 in
        (let rec t_5_9 = a_7 in
          (fun ys_6_1 -> 
            (`LH_C(h_5_9, ((mappend_d2_d0_d0_d9 t_5_9) ys_6_1)))))))
    | `LH_N -> 
      a_7)
and reverse_helper_d1_d0_d5 ls_2_8 a_1_0 =
  (match ls_2_8 with
    | `LH_C(h_8_4, t_8_4) -> 
      ((reverse_helper_d1_d0_d5 t_8_4) (let rec h_8_5 = h_8_4 in
        (let rec t_8_5 = a_1_0 in
          (fun ys_8_8 -> 
            (`LH_C(h_8_5, ((mappend_d2_d0_d0_d1_d1 t_8_5) ys_8_8)))))))
    | `LH_N -> 
      a_1_0)
and reverse_helper_d1_d0_d6 ls_7 a_1 =
  (match ls_7 with
    | `LH_C(h_1_5, t_1_5) -> 
      ((reverse_helper_d1_d0_d6 t_1_5) (let rec h_1_6 = h_1_5 in
        (let rec t_1_6 = a_1 in
          (fun ys_1_7 -> 
            (`LH_C(h_1_6, ((mappend_d2_d0_d0_d1_d3 t_1_6) ys_1_7)))))))
    | `LH_N -> 
      a_1)
and reverse_d0_d0_d0 ls_3_2 =
  ((reverse_helper_d0_d0_d0 ls_3_2) (fun ys_9_4 -> 
    ys_9_4))
and reverse_d0_d0_d1 ls_2 =
  ((reverse_helper_d0_d0_d1 ls_2) (fun ys_9 -> 
    ys_9))
and reverse_d0_d0_d2 ls_1_2 =
  ((reverse_helper_d0_d0_d2 ls_1_2) (fun ys_3_9 -> 
    ys_3_9))
and reverse_d0_d0_d3 ls_3 =
  ((reverse_helper_d0_d0_d3 ls_3) (fun ys_1_0 -> 
    ys_1_0))
and reverse_d0_d0_d4 ls_2_1 =
  ((reverse_helper_d0_d0_d4 ls_2_1) (fun ys_6_2 -> 
    ys_6_2))
and reverse_d0_d0_d5 ls_3_0 =
  ((reverse_helper_d0_d0_d5 ls_3_0) (fun ys_9_0 -> 
    ys_9_0))
and reverse_d0_d0_d6 ls_2_4 =
  ((reverse_helper_d0_d0_d6 ls_2_4) (fun ys_6_9 -> 
    ys_6_9))
and reverse_d1_d0_d0 ls_4 =
  ((reverse_helper_d1_d0_d0 ls_4) (fun ys_1_1 -> 
    ys_1_1))
and reverse_d1_d0_d1 ls_2_6 =
  ((reverse_helper_d1_d0_d1 ls_2_6) (fun ys_7_6 -> 
    ys_7_6))
and reverse_d1_d0_d2 ls_4_2 =
  ((reverse_helper_d1_d0_d2 ls_4_2) (fun ys_1_2_2 -> 
    ys_1_2_2))
and reverse_d1_d0_d3 ls_1_6 =
  ((reverse_helper_d1_d0_d3 ls_1_6) (fun ys_4_7 -> 
    ys_4_7))
and reverse_d1_d0_d4 ls_3_3 =
  ((reverse_helper_d1_d0_d4 ls_3_3) (fun ys_1_0_2 -> 
    ys_1_0_2))
and reverse_d1_d0_d5 ls_1_0 =
  ((reverse_helper_d1_d0_d5 ls_1_0) (fun ys_3_0 -> 
    ys_3_0))
and reverse_d1_d0_d6 ls_4_3 =
  ((reverse_helper_d1_d0_d6 ls_4_3) (fun ys_1_2_4 -> 
    ys_1_2_4))
and ringBell_d0_d0_d0 _lh_ringBell_arg1_9 _lh_ringBell_arg2_9 =
  (((writeChar_d0_d0_d0 'B') _lh_ringBell_arg1_9) _lh_ringBell_arg2_9)
and ringBell_d0_d0_d1 _lh_ringBell_arg1_1_4 _lh_ringBell_arg2_1_4 =
  (((writeChar_d0_d0_d1 'B') _lh_ringBell_arg1_1_4) _lh_ringBell_arg2_1_4)
and ringBell_d0_d0_d2 _lh_ringBell_arg1_1_5 _lh_ringBell_arg2_1_5 =
  (((writeChar_d0_d0_d2 'B') _lh_ringBell_arg1_1_5) _lh_ringBell_arg2_1_5)
and ringBell_d0_d0_d3 _lh_ringBell_arg1_3 _lh_ringBell_arg2_3 =
  (((writeChar_d0_d0_d3 'B') _lh_ringBell_arg1_3) _lh_ringBell_arg2_3)
and ringBell_d0_d0_d4 _lh_ringBell_arg1_7 _lh_ringBell_arg2_7 =
  (((writeChar_d0_d0_d4 'B') _lh_ringBell_arg1_7) _lh_ringBell_arg2_7)
and ringBell_d0_d0_d5 _lh_ringBell_arg1_1_3 _lh_ringBell_arg2_1_3 =
  (((writeChar_d0_d0_d5 'B') _lh_ringBell_arg1_1_3) _lh_ringBell_arg2_1_3)
and ringBell_d0_d0_d6 _lh_ringBell_arg1_4 _lh_ringBell_arg2_4 =
  (((writeChar_d0_d0_d6 'B') _lh_ringBell_arg1_4) _lh_ringBell_arg2_4)
and ringBell_d1_d0_d0 _lh_ringBell_arg1_2 _lh_ringBell_arg2_2 =
  (((writeChar_d1_d0_d0 'B') _lh_ringBell_arg1_2) _lh_ringBell_arg2_2)
and ringBell_d1_d0_d1 _lh_ringBell_arg1_1 _lh_ringBell_arg2_1 =
  (((writeChar_d1_d0_d1 'B') _lh_ringBell_arg1_1) _lh_ringBell_arg2_1)
and ringBell_d1_d0_d2 _lh_ringBell_arg1_5 _lh_ringBell_arg2_5 =
  (((writeChar_d1_d0_d2 'B') _lh_ringBell_arg1_5) _lh_ringBell_arg2_5)
and ringBell_d1_d0_d3 _lh_ringBell_arg1_1_8 _lh_ringBell_arg2_1_8 =
  (((writeChar_d1_d0_d3 'B') _lh_ringBell_arg1_1_8) _lh_ringBell_arg2_1_8)
and ringBell_d1_d0_d4 _lh_ringBell_arg1_1_0 _lh_ringBell_arg2_1_0 =
  (((writeChar_d1_d0_d4 'B') _lh_ringBell_arg1_1_0) _lh_ringBell_arg2_1_0)
and ringBell_d2_d0_d0 _lh_ringBell_arg1_6 _lh_ringBell_arg2_6 =
  (((writeChar_d2_d0_d0 'B') _lh_ringBell_arg1_6) _lh_ringBell_arg2_6)
and ringBell_d2_d0_d1 _lh_ringBell_arg1_1_7 _lh_ringBell_arg2_1_7 =
  (((writeChar_d2_d0_d1 'B') _lh_ringBell_arg1_1_7) _lh_ringBell_arg2_1_7)
and ringBell_d2_d0_d2 _lh_ringBell_arg1_1_2 _lh_ringBell_arg2_1_2 =
  (((writeChar_d2_d0_d2 'B') _lh_ringBell_arg1_1_2) _lh_ringBell_arg2_1_2)
and ringBell_d2_d0_d3 _lh_ringBell_arg1_1_1 _lh_ringBell_arg2_1_1 =
  (((writeChar_d2_d0_d3 'B') _lh_ringBell_arg1_1_1) _lh_ringBell_arg2_1_1)
and ringBell_d2_d0_d4 _lh_ringBell_arg1_0 _lh_ringBell_arg2_0 =
  (((writeChar_d2_d0_d4 'B') _lh_ringBell_arg1_0) _lh_ringBell_arg2_0)
and ringBell_d2_d0_d5 _lh_ringBell_arg1_1_6 _lh_ringBell_arg2_1_6 =
  (((writeChar_d2_d0_d5 'B') _lh_ringBell_arg1_1_6) _lh_ringBell_arg2_1_6)
and ringBell_d2_d0_d6 _lh_ringBell_arg1_8 _lh_ringBell_arg2_8 =
  (((writeChar_d2_d0_d6 'B') _lh_ringBell_arg1_8) _lh_ringBell_arg2_8)
and testAnsi_nofib_d0_d0_d0 _lh_testAnsi_nofib_arg1_0 =
  ((((foldr_d0_d0_d1 (fun f_3 g_0 _lh_funcomp_x_0 -> 
    (f_3 (g_0 _lh_funcomp_x_0)))) (fun x_0 -> 
    x_0)) ((copy_d0_d0_d0 _lh_testAnsi_nofib_arg1_0) (program_d0_d0_d0 0))) (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))))))))))))))))
and writeString_d0_d0_d0 _lh_writeString_arg1_4 _lh_writeString_arg2_4 _lh_writeString_arg3_4 =
  ((mappend_d2_d4_d0_d0 _lh_writeString_arg1_4) (_lh_writeString_arg2_4 _lh_writeString_arg3_4))
and writeString_d1_d0_d0 _lh_writeString_arg1_1_7 _lh_writeString_arg2_1_7 _lh_writeString_arg3_1_7 =
  ((mappend_d2_d5_d0_d0 _lh_writeString_arg1_1_7) (_lh_writeString_arg2_1_7 _lh_writeString_arg3_1_7))
and writeString_d1_d0_d1 _lh_writeString_arg1_1_2 _lh_writeString_arg2_1_2 _lh_writeString_arg3_1_2 =
  ((mappend_d2_d5_d0_d1 _lh_writeString_arg1_1_2) (_lh_writeString_arg2_1_2 _lh_writeString_arg3_1_2))
and writeString_d1_d0_d2 _lh_writeString_arg1_1_0 _lh_writeString_arg2_1_0 _lh_writeString_arg3_1_0 =
  ((mappend_d2_d5_d0_d2 _lh_writeString_arg1_1_0) (_lh_writeString_arg2_1_0 _lh_writeString_arg3_1_0))
and writeString_d1_d0_d3 _lh_writeString_arg1_0 _lh_writeString_arg2_0 _lh_writeString_arg3_0 =
  ((mappend_d2_d5_d0_d3 _lh_writeString_arg1_0) (_lh_writeString_arg2_0 _lh_writeString_arg3_0))
and writeString_d1_d0_d4 _lh_writeString_arg1_9 _lh_writeString_arg2_9 _lh_writeString_arg3_9 =
  ((mappend_d2_d5_d0_d4 _lh_writeString_arg1_9) (_lh_writeString_arg2_9 _lh_writeString_arg3_9))
and writeString_d1_d0_d5 _lh_writeString_arg1_8 _lh_writeString_arg2_8 _lh_writeString_arg3_8 =
  ((mappend_d2_d5_d0_d5 _lh_writeString_arg1_8) (_lh_writeString_arg2_8 _lh_writeString_arg3_8))
and writeString_d1_d0_d6 _lh_writeString_arg1_1_4 _lh_writeString_arg2_1_4 _lh_writeString_arg3_1_4 =
  ((mappend_d2_d5_d0_d6 _lh_writeString_arg1_1_4) (_lh_writeString_arg2_1_4 _lh_writeString_arg3_1_4))
and writeString_d2_d0_d0 _lh_writeString_arg1_1_8 _lh_writeString_arg2_1_8 _lh_writeString_arg3_1_8 =
  ((mappend_d2_d6_d0_d0 _lh_writeString_arg1_1_8) (_lh_writeString_arg2_1_8 _lh_writeString_arg3_1_8))
and writeString_d2_d0_d1 _lh_writeString_arg1_2 _lh_writeString_arg2_2 _lh_writeString_arg3_2 =
  ((mappend_d2_d6_d0_d1 _lh_writeString_arg1_2) (_lh_writeString_arg2_2 _lh_writeString_arg3_2))
and writeString_d2_d0_d2 _lh_writeString_arg1_3 _lh_writeString_arg2_3 _lh_writeString_arg3_3 =
  ((mappend_d2_d6_d0_d2 _lh_writeString_arg1_3) (_lh_writeString_arg2_3 _lh_writeString_arg3_3))
and writeString_d2_d0_d3 _lh_writeString_arg1_1_6 _lh_writeString_arg2_1_6 _lh_writeString_arg3_1_6 =
  ((mappend_d2_d6_d0_d3 _lh_writeString_arg1_1_6) (_lh_writeString_arg2_1_6 _lh_writeString_arg3_1_6))
and writeString_d2_d0_d4 _lh_writeString_arg1_6 _lh_writeString_arg2_6 _lh_writeString_arg3_6 =
  ((mappend_d2_d6_d0_d4 _lh_writeString_arg1_6) (_lh_writeString_arg2_6 _lh_writeString_arg3_6))
and writeString_d3_d0_d0 _lh_writeString_arg1_7 _lh_writeString_arg2_7 _lh_writeString_arg3_7 =
  ((mappend_d2_d9_d0_d0 _lh_writeString_arg1_7) (_lh_writeString_arg2_7 _lh_writeString_arg3_7))
and writeString_d4_d0_d0 _lh_writeString_arg1_1 _lh_writeString_arg2_1 _lh_writeString_arg3_1 =
  ((mappend_d3_d3_d0_d2 _lh_writeString_arg1_1) (_lh_writeString_arg2_1 _lh_writeString_arg3_1))
and writeString_d5_d0_d0 _lh_writeString_arg1_1_3 _lh_writeString_arg2_1_3 _lh_writeString_arg3_1_3 =
  ((mappend_d3_d7_d0_d0 _lh_writeString_arg1_1_3) (_lh_writeString_arg2_1_3 _lh_writeString_arg3_1_3))
and writeString_d6_d0_d0 _lh_writeString_arg1_1_1 _lh_writeString_arg2_1_1 _lh_writeString_arg3_1_1 =
  ((mappend_d4_d1_d0_d0 _lh_writeString_arg1_1_1) (_lh_writeString_arg2_1_1 _lh_writeString_arg3_1_1))
and writeString_d7_d0_d0 _lh_writeString_arg1_1_5 _lh_writeString_arg2_1_5 _lh_writeString_arg3_1_5 =
  ((mappend_d4_d2_d0_d0 _lh_writeString_arg1_1_5) (_lh_writeString_arg2_1_5 _lh_writeString_arg3_1_5))
and writeString_d8_d0_d0 _lh_writeString_arg1_5 _lh_writeString_arg2_5 _lh_writeString_arg3_5 =
  ((mappend_d4_d4_d0_d7 _lh_writeString_arg1_5) (_lh_writeString_arg2_5 _lh_writeString_arg3_5))
and writes_d0_d0_d0 _lh_writes_arg1_0 =
  (writeString_d8_d0_d0 (concat_d0_d0_d7 _lh_writes_arg1_0));;

(* lumberhack_pop_out *)
let rec at_d0_d0_d0_d0 _lh_at_arg1_1_0 _lh_at_arg2_2_2 =
  (_lh_at_arg1_1_0 _lh_at_arg2_2_2);;
let rec at_d1_d0_d0_d0 _lh_at_arg1_9 _lh_at_arg2_2_1 =
  (_lh_at_arg1_9 _lh_at_arg2_2_1);;
let rec at_d2_d0_d0_d0 _lh_at_arg1_7 _lh_at_arg2_1_9 =
  (_lh_at_arg1_7 _lh_at_arg2_1_9);;
let rec at_d3_d0_d0_d0 _lh_at_arg1_6 _lh_at_arg2_1_8 =
  (_lh_at_arg1_6 _lh_at_arg2_1_8);;
let rec at_d4_d0_d0_d0 _lh_at_arg1_1_1 _lh_at_arg2_2_3 =
  (_lh_at_arg1_1_1 _lh_at_arg2_2_3);;
let rec at_d5_d0_d0_d0 _lh_at_arg1_8 _lh_at_arg2_2_0 =
  (_lh_at_arg1_8 _lh_at_arg2_2_0);;
let rec concat_d0_d0_d0_d0 lss_8 =
  lss_8;;
let rec concat_d0_d0_d1_d0 lss_1_4 =
  lss_1_4;;
let rec concat_d0_d0_d2_d0 lss_1_3 =
  lss_1_3;;
let rec concat_d0_d0_d3_d0 lss_9 =
  lss_9;;
let rec concat_d0_d0_d4_d0 lss_1_2 =
  lss_1_2;;
let rec concat_d0_d0_d5_d0 lss_1_1 =
  lss_1_1;;
let rec concat_d0_d0_d6_d0 lss_1_0 =
  lss_1_0;;
let rec concat_d0_d0_d7_d0 lss_1_5 =
  lss_1_5;;
let rec end_d0_d0_d0_d0 _lh_end_arg1_1 =
  (`LH_N);;
let rec foldr_d0_d0_d0_d0 f_6 i_4 ls_5_2 =
  ((ls_5_2 f_6) i_4);;
let rec foldr_d0_d0_d1_d0 f_9 i_7 ls_8_7 =
  ((ls_8_7 f_9) i_7);;
let rec length_d0_d0_d0_d0 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_1_5_3, t_1_5_3) -> 
      (1 + (length_d0_d0_d0_d0 t_1_5_3))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d0_d0 ls_7_1 =
  (match ls_7_1 with
    | `LH_C(h_1_9_1, t_1_9_1) -> 
      (1 + (length_d1_d0_d0_d0 t_1_9_1))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0_d0_d0 xs_1_0_1 ys_1_5_3 =
  (match xs_1_0_1 with
    | `LH_C(h_1_4_6, t_1_4_6) -> 
      (`LH_C(h_1_4_6, ((mappend_d0_d0_d0_d0 t_1_4_6) ys_1_5_3)))
    | `LH_N -> 
      ys_1_5_3);;
let rec mappend_d1_d0_d0_d0 xs_1_4_1 ys_2_1_1 =
  (match xs_1_4_1 with
    | `LH_C(h_1_9_8, t_1_9_8) -> 
      (`LH_C(h_1_9_8, ((mappend_d1_d0_d0_d0 t_1_9_8) ys_2_1_1)))
    | `LH_N -> 
      ys_2_1_1);;
let rec mappend_d1_d0_d0_d0_d0 xs_1_0_2 ys_1_5_4 =
  (match xs_1_0_2 with
    | `LH_C(h_1_4_7, t_1_4_7) -> 
      (`LH_C(h_1_4_7, ((mappend_d1_d0_d0_d0_d0 t_1_4_7) ys_1_5_4)))
    | `LH_N -> 
      ys_1_5_4);;
let rec mappend_d1_d1_d0_d0_d0 xs_1_2_3 ys_1_8_2 =
  (match xs_1_2_3 with
    | `LH_C(h_1_7_1, t_1_7_1) -> 
      (`LH_C(h_1_7_1, ((mappend_d1_d1_d0_d0_d0 t_1_7_1) ys_1_8_2)))
    | `LH_N -> 
      ys_1_8_2);;
let rec mappend_d1_d2_d0_d0_d0 xs_9_4 ys_1_4_0 =
  (match xs_9_4 with
    | `LH_C(h_1_2_6, t_1_2_6) -> 
      (`LH_C(h_1_2_6, ((mappend_d1_d2_d0_d0_d0 t_1_2_6) ys_1_4_0)))
    | `LH_N -> 
      ys_1_4_0);;
let rec mappend_d1_d3_d0_d0_d0 xs_8_6 ys_1_2_9 =
  (match xs_8_6 with
    | `LH_C(h_1_1_9, t_1_1_9) -> 
      (`LH_C(h_1_1_9, ((mappend_d1_d3_d0_d0_d0 t_1_1_9) ys_1_2_9)))
    | `LH_N -> 
      ys_1_2_9);;
let rec mappend_d1_d4_d0_d0_d0 xs_1_2_9 ys_1_9_0 =
  (match xs_1_2_9 with
    | `LH_C(h_1_7_9, t_1_7_9) -> 
      (`LH_C(h_1_7_9, ((mappend_d1_d4_d0_d0_d0 t_1_7_9) ys_1_9_0)))
    | `LH_N -> 
      ys_1_9_0);;
let rec mappend_d1_d5_d0_d0_d0 xs_9_0 ys_1_3_5 =
  (match xs_9_0 with
    | `LH_C(h_1_2_3, t_1_2_3) -> 
      (`LH_C(h_1_2_3, ((mappend_d1_d5_d0_d0_d0 t_1_2_3) ys_1_3_5)))
    | `LH_N -> 
      ys_1_3_5);;
let rec mappend_d1_d6_d0_d0_d0 xs_1_4_3 ys_2_1_5 =
  (match xs_1_4_3 with
    | `LH_C(h_2_0_1, t_2_0_1) -> 
      (`LH_C(h_2_0_1, ((mappend_d1_d6_d0_d0_d0 t_2_0_1) ys_2_1_5)))
    | `LH_N -> 
      ys_2_1_5);;
let rec mappend_d1_d7_d0_d0_d0 xs_1_6_6 ys_2_4_5 =
  (match xs_1_6_6 with
    | `LH_C(h_2_2_5, t_2_2_5) -> 
      (`LH_C(h_2_2_5, ((mappend_d1_d7_d0_d0_d0 t_2_2_5) ys_2_4_5)))
    | `LH_N -> 
      ys_2_4_5);;
let rec mappend_d1_d8_d0_d0_d0 xs_1_3_5 ys_2_0_1 =
  (match xs_1_3_5 with
    | `LH_C(h_1_8_8, t_1_8_8) -> 
      (`LH_C(h_1_8_8, ((mappend_d1_d8_d0_d0_d0 t_1_8_8) ys_2_0_1)))
    | `LH_N -> 
      ys_2_0_1);;
let rec mappend_d1_d9_d0_d0_d0 xs_1_6_7 ys_2_4_7 =
  (match xs_1_6_7 with
    | `LH_C(h_2_2_6, t_2_2_6) -> 
      (`LH_C(h_2_2_6, ((mappend_d1_d9_d0_d0_d0 t_2_2_6) ys_2_4_7)))
    | `LH_N -> 
      ys_2_4_7);;
let rec mappend_d2_d0_d0_d0 xs_9_9 ys_1_5_1 =
  (match xs_9_9 with
    | `LH_C(h_1_4_4, t_1_4_4) -> 
      (`LH_C(h_1_4_4, ((mappend_d2_d0_d0_d0 t_1_4_4) ys_1_5_1)))
    | `LH_N -> 
      ys_1_5_1);;
let rec mappend_d2_d0_d0_d0_d0 xs_1_6_2 ys_2_3_9 =
  (xs_1_6_2 ys_2_3_9);;
let rec mappend_d2_d0_d0_d1_d0 xs_1_1_1 ys_1_6_5 =
  (xs_1_1_1 ys_1_6_5);;
let rec mappend_d2_d0_d0_d1_d0_d0 xs_1_3_7 ys_2_0_4 =
  (xs_1_3_7 ys_2_0_4);;
let rec mappend_d2_d0_d0_d1_d1_d0 xs_1_5_9 ys_2_3_5 =
  (xs_1_5_9 ys_2_3_5);;
let rec mappend_d2_d0_d0_d1_d2_d0 xs_1_2_7 ys_1_8_7 =
  (xs_1_2_7 ys_1_8_7);;
let rec mappend_d2_d0_d0_d1_d3_d0 xs_9_3 ys_1_3_9 =
  (xs_9_3 ys_1_3_9);;
let rec mappend_d2_d0_d0_d1_d4_d0 xs_1_0_4 ys_1_5_6 =
  (xs_1_0_4 ys_1_5_6);;
let rec mappend_d2_d0_d0_d1_d5_d0 xs_1_3_0 ys_1_9_2 =
  (xs_1_3_0 ys_1_9_2);;
let rec mappend_d2_d0_d0_d2_d0 xs_1_4_6 ys_2_1_9 =
  (xs_1_4_6 ys_2_1_9);;
let rec mappend_d2_d0_d0_d3_d0 xs_8_8 ys_1_3_3 =
  (xs_8_8 ys_1_3_3);;
let rec mappend_d2_d0_d0_d4_d0 xs_1_4_7 ys_2_2_0 =
  (xs_1_4_7 ys_2_2_0);;
let rec mappend_d2_d0_d0_d5_d0 xs_9_2 ys_1_3_7 =
  (xs_9_2 ys_1_3_7);;
let rec mappend_d2_d0_d0_d6_d0 xs_1_4_9 ys_2_2_2 =
  (xs_1_4_9 ys_2_2_2);;
let rec mappend_d2_d0_d0_d7_d0 xs_1_5_8 ys_2_3_4 =
  (xs_1_5_8 ys_2_3_4);;
let rec mappend_d2_d0_d0_d8_d0 xs_1_0_3 ys_1_5_5 =
  (xs_1_0_3 ys_1_5_5);;
let rec mappend_d2_d0_d0_d9_d0 xs_1_1_2 ys_1_6_6 =
  (xs_1_1_2 ys_1_6_6);;
let rec mappend_d2_d2_d0_d0_d0 xs_8_9 ys_1_3_4 =
  (match xs_8_9 with
    | `LH_C(h_1_2_2, t_1_2_2) -> 
      (`LH_C(h_1_2_2, ((mappend_d2_d2_d0_d0_d0 t_1_2_2) ys_1_3_4)))
    | `LH_N -> 
      ys_1_3_4);;
let rec mappend_d2_d3_d0_d0_d0 xs_1_3_2 ys_1_9_6 =
  (match xs_1_3_2 with
    | `LH_C(h_1_8_2, t_1_8_2) -> 
      (`LH_C(h_1_8_2, ((mappend_d2_d3_d0_d0_d0 t_1_8_2) ys_1_9_6)))
    | `LH_N -> 
      ys_1_9_6);;
let rec mappend_d2_d4_d0_d0_d0 xs_9_6 ys_1_4_7 =
  (match xs_9_6 with
    | `LH_C(h_1_4_1, t_1_4_1) -> 
      (`LH_C(h_1_4_1, ((mappend_d2_d4_d0_d0_d0 t_1_4_1) ys_1_4_7)))
    | `LH_N -> 
      ys_1_4_7);;
let rec mappend_d2_d5_d0_d0_d0 xs_1_5_0 ys_2_2_3 =
  (match xs_1_5_0 with
    | `LH_C(h_2_0_5, t_2_0_5) -> 
      (`LH_C(h_2_0_5, ((mappend_d2_d5_d0_d0_d0 t_2_0_5) ys_2_2_3)))
    | `LH_N -> 
      ys_2_2_3);;
let rec mappend_d2_d5_d0_d1_d0 xs_1_6_9 ys_2_5_2 =
  (match xs_1_6_9 with
    | `LH_C(h_2_3_3, t_2_3_3) -> 
      (`LH_C(h_2_3_3, ((mappend_d2_d5_d0_d1_d0 t_2_3_3) ys_2_5_2)))
    | `LH_N -> 
      ys_2_5_2);;
let rec mappend_d2_d5_d0_d2_d0 xs_1_2_5 ys_1_8_4 =
  (match xs_1_2_5 with
    | `LH_C(h_1_7_4, t_1_7_4) -> 
      (`LH_C(h_1_7_4, ((mappend_d2_d5_d0_d2_d0 t_1_7_4) ys_1_8_4)))
    | `LH_N -> 
      ys_1_8_4);;
let rec mappend_d2_d5_d0_d3_d0 xs_1_1_6 ys_1_7_4 =
  (match xs_1_1_6 with
    | `LH_C(h_1_6_5, t_1_6_5) -> 
      (`LH_C(h_1_6_5, ((mappend_d2_d5_d0_d3_d0 t_1_6_5) ys_1_7_4)))
    | `LH_N -> 
      ys_1_7_4);;
let rec mappend_d2_d5_d0_d4_d0 xs_1_4_0 ys_2_0_7 =
  (match xs_1_4_0 with
    | `LH_C(h_1_9_5, t_1_9_5) -> 
      (`LH_C(h_1_9_5, ((mappend_d2_d5_d0_d4_d0 t_1_9_5) ys_2_0_7)))
    | `LH_N -> 
      ys_2_0_7);;
let rec mappend_d2_d5_d0_d5_d0 xs_9_8 ys_1_5_0 =
  (match xs_9_8 with
    | `LH_C(h_1_4_3, t_1_4_3) -> 
      (`LH_C(h_1_4_3, ((mappend_d2_d5_d0_d5_d0 t_1_4_3) ys_1_5_0)))
    | `LH_N -> 
      ys_1_5_0);;
let rec mappend_d2_d5_d0_d6_d0 xs_1_2_0 ys_1_7_8 =
  (match xs_1_2_0 with
    | `LH_C(h_1_6_7, t_1_6_7) -> 
      (`LH_C(h_1_6_7, ((mappend_d2_d5_d0_d6_d0 t_1_6_7) ys_1_7_8)))
    | `LH_N -> 
      ys_1_7_8);;
let rec mappend_d2_d6_d0_d0_d0 xs_1_6_8 ys_2_5_0 =
  (match xs_1_6_8 with
    | `LH_C(h_2_3_2, t_2_3_2) -> 
      (`LH_C(h_2_3_2, ((mappend_d2_d6_d0_d0_d0 t_2_3_2) ys_2_5_0)))
    | `LH_N -> 
      ys_2_5_0);;
let rec mappend_d2_d6_d0_d1_d0 xs_1_5_3 ys_2_2_7 =
  (match xs_1_5_3 with
    | `LH_C(h_2_0_9, t_2_0_9) -> 
      (`LH_C(h_2_0_9, ((mappend_d2_d6_d0_d1_d0 t_2_0_9) ys_2_2_7)))
    | `LH_N -> 
      ys_2_2_7);;
let rec mappend_d2_d6_d0_d2_d0 xs_1_5_6 ys_2_3_1 =
  (match xs_1_5_6 with
    | `LH_C(h_2_1_2, t_2_1_2) -> 
      (`LH_C(h_2_1_2, ((mappend_d2_d6_d0_d2_d0 t_2_1_2) ys_2_3_1)))
    | `LH_N -> 
      ys_2_3_1);;
let rec mappend_d2_d6_d0_d3_d0 xs_1_6_1 ys_2_3_7 =
  (match xs_1_6_1 with
    | `LH_C(h_2_1_6, t_2_1_6) -> 
      (`LH_C(h_2_1_6, ((mappend_d2_d6_d0_d3_d0 t_2_1_6) ys_2_3_7)))
    | `LH_N -> 
      ys_2_3_7);;
let rec mappend_d2_d6_d0_d4_d0 xs_8_5 ys_1_2_7 =
  (match xs_8_5 with
    | `LH_C(h_1_1_8, t_1_1_8) -> 
      (`LH_C(h_1_1_8, ((mappend_d2_d6_d0_d4_d0 t_1_1_8) ys_1_2_7)))
    | `LH_N -> 
      ys_1_2_7);;
let rec mappend_d2_d7_d0_d0_d0 xs_1_4_4 ys_2_1_6 =
  (match xs_1_4_4 with
    | `LH_C(h_2_0_2, t_2_0_2) -> 
      (`LH_C(h_2_0_2, ((mappend_d2_d7_d0_d0_d0 t_2_0_2) ys_2_1_6)))
    | `LH_N -> 
      ys_2_1_6);;
let rec mappend_d2_d8_d0_d0_d0 xs_1_3_1 ys_1_9_5 =
  (match xs_1_3_1 with
    | `LH_C(h_1_8_1, t_1_8_1) -> 
      (`LH_C(h_1_8_1, ((mappend_d2_d8_d0_d0_d0 t_1_8_1) ys_1_9_5)))
    | `LH_N -> 
      ys_1_9_5);;
let rec mappend_d2_d9_d0_d0_d0 xs_9_7 ys_1_4_9 =
  (match xs_9_7 with
    | `LH_C(h_1_4_2, t_1_4_2) -> 
      (`LH_C(h_1_4_2, ((mappend_d2_d9_d0_d0_d0 t_1_4_2) ys_1_4_9)))
    | `LH_N -> 
      ys_1_4_9);;
let rec mappend_d3_d0_d0_d0 xs_1_6_0 ys_2_3_6 =
  (match xs_1_6_0 with
    | `LH_C(h_2_1_3, t_2_1_3) -> 
      (`LH_C(h_2_1_3, ((mappend_d3_d0_d0_d0 t_2_1_3) ys_2_3_6)))
    | `LH_N -> 
      ys_2_3_6);;
let rec mappend_d3_d0_d0_d0_d0 xs_1_3_3 ys_1_9_7 =
  (match xs_1_3_3 with
    | `LH_C(h_1_8_3, t_1_8_3) -> 
      (`LH_C(h_1_8_3, ((mappend_d3_d0_d0_d0_d0 t_1_8_3) ys_1_9_7)))
    | `LH_N -> 
      ys_1_9_7);;
let rec mappend_d3_d1_d0_d0_d0 xs_1_0_8 ys_1_6_2 =
  (match xs_1_0_8 with
    | `LH_C(h_1_5_4, t_1_5_4) -> 
      (`LH_C(h_1_5_4, ((mappend_d3_d1_d0_d0_d0 t_1_5_4) ys_1_6_2)))
    | `LH_N -> 
      ys_1_6_2);;
let rec mappend_d3_d3_d0_d0_d0 xs_1_2_4 ys_1_8_3 =
  (xs_1_2_4 ys_1_8_3);;
let rec mappend_d3_d3_d0_d1_d0 xs_1_4_8 ys_2_2_1 =
  (xs_1_4_8 ys_2_2_1);;
let rec mappend_d3_d3_d0_d2_d0 xs_1_1_9 ys_1_7_7 =
  (xs_1_1_9 ys_1_7_7);;
let rec mappend_d3_d4_d0_d0_d0 xs_1_3_6 ys_2_0_3 =
  (match xs_1_3_6 with
    | `LH_C(h_1_9_2, t_1_9_2) -> 
      (`LH_C(h_1_9_2, ((mappend_d3_d4_d0_d0_d0 t_1_9_2) ys_2_0_3)))
    | `LH_N -> 
      ys_2_0_3);;
let rec mappend_d3_d5_d0_d0_d0 xs_1_1_8 ys_1_7_6 =
  (match xs_1_1_8 with
    | `LH_C(h_1_6_6, t_1_6_6) -> 
      (`LH_C(h_1_6_6, ((mappend_d3_d5_d0_d0_d0 t_1_6_6) ys_1_7_6)))
    | `LH_N -> 
      ys_1_7_6);;
let rec mappend_d3_d6_d0_d0_d0 xs_1_3_9 ys_2_0_6 =
  (match xs_1_3_9 with
    | `LH_C(h_1_9_4, t_1_9_4) -> 
      (`LH_C(h_1_9_4, ((mappend_d3_d6_d0_d0_d0 t_1_9_4) ys_2_0_6)))
    | `LH_N -> 
      ys_2_0_6);;
let rec mappend_d3_d7_d0_d0_d0 xs_1_6_5 ys_2_4_4 =
  (match xs_1_6_5 with
    | `LH_C(h_2_2_4, t_2_2_4) -> 
      (`LH_C(h_2_2_4, ((mappend_d3_d7_d0_d0_d0 t_2_2_4) ys_2_4_4)))
    | `LH_N -> 
      ys_2_4_4);;
let rec mappend_d3_d8_d0_d0_d0 xs_1_1_5 ys_1_7_0 =
  (match xs_1_1_5 with
    | `LH_C(h_1_6_2, t_1_6_2) -> 
      (`LH_C(h_1_6_2, ((mappend_d3_d8_d0_d0_d0 t_1_6_2) ys_1_7_0)))
    | `LH_N -> 
      ys_1_7_0);;
let rec mappend_d3_d9_d0_d0_d0 xs_1_5_4 ys_2_2_8 =
  (match xs_1_5_4 with
    | `LH_C(h_2_1_0, t_2_1_0) -> 
      (`LH_C(h_2_1_0, ((mappend_d3_d9_d0_d0_d0 t_2_1_0) ys_2_2_8)))
    | `LH_N -> 
      ys_2_2_8);;
let rec mappend_d4_d0_d0_d0 xs_1_1_3 ys_1_6_8 =
  (match xs_1_1_3 with
    | `LH_C(h_1_6_0, t_1_6_0) -> 
      (`LH_C(h_1_6_0, ((mappend_d4_d0_d0_d0 t_1_6_0) ys_1_6_8)))
    | `LH_N -> 
      ys_1_6_8);;
let rec mappend_d4_d0_d0_d0_d0 xs_1_6_4 ys_2_4_3 =
  (match xs_1_6_4 with
    | `LH_C(h_2_2_3, t_2_2_3) -> 
      (`LH_C(h_2_2_3, ((mappend_d4_d0_d0_d0_d0 t_2_2_3) ys_2_4_3)))
    | `LH_N -> 
      ys_2_4_3);;
let rec mappend_d4_d1_d0_d0_d0 xs_1_0_0 ys_1_5_2 =
  (match xs_1_0_0 with
    | `LH_C(h_1_4_5, t_1_4_5) -> 
      (`LH_C(h_1_4_5, ((mappend_d4_d1_d0_d0_d0 t_1_4_5) ys_1_5_2)))
    | `LH_N -> 
      ys_1_5_2);;
let rec mappend_d4_d2_d0_d0_d0 xs_1_0_9 ys_1_6_3 =
  (match xs_1_0_9 with
    | `LH_C(h_1_5_5, t_1_5_5) -> 
      (`LH_C(h_1_5_5, ((mappend_d4_d2_d0_d0_d0 t_1_5_5) ys_1_6_3)))
    | `LH_N -> 
      ys_1_6_3);;
let rec mappend_d4_d3_d0_d6_d0 xs_1_0_7 ys_1_6_1 =
  (xs_1_0_7 ys_1_6_1);;
let rec mappend_d4_d3_d0_d6_d1 xs_1_3_8 ys_2_0_5 =
  (xs_1_3_8 ys_2_0_5);;
let rec mappend_d4_d4_d0_d0_d0 xs_1_5_7 ys_2_3_2 =
  (xs_1_5_7 ys_2_3_2);;
let rec mappend_d4_d4_d0_d1_d0 xs_1_1_0 ys_1_6_4 =
  (xs_1_1_0 ys_1_6_4);;
let rec mappend_d4_d4_d0_d2_d0 xs_8_7 ys_1_3_2 =
  (xs_8_7 ys_1_3_2);;
let rec mappend_d4_d4_d0_d3_d0 xs_1_1_4 ys_1_6_9 =
  (xs_1_1_4 ys_1_6_9);;
let rec mappend_d4_d4_d0_d4_d0 xs_1_6_3 ys_2_4_1 =
  (xs_1_6_3 ys_2_4_1);;
let rec mappend_d4_d4_d0_d5_d0 xs_1_2_1 ys_1_8_0 =
  (xs_1_2_1 ys_1_8_0);;
let rec mappend_d4_d4_d0_d6_d0 xs_1_1_7 ys_1_7_5 =
  (xs_1_1_7 ys_1_7_5);;
let rec mappend_d4_d4_d0_d7_d0 xs_9_1 ys_1_3_6 =
  (xs_9_1 ys_1_3_6);;
let rec mappend_d5_d0_d0_d0 xs_1_5_2 ys_2_2_6 =
  (match xs_1_5_2 with
    | `LH_C(h_2_0_8, t_2_0_8) -> 
      (`LH_C(h_2_0_8, ((mappend_d5_d0_d0_d0 t_2_0_8) ys_2_2_6)))
    | `LH_N -> 
      ys_2_2_6);;
let rec mappend_d6_d0_d0_d0 xs_1_2_2 ys_1_8_1 =
  (match xs_1_2_2 with
    | `LH_C(h_1_7_0, t_1_7_0) -> 
      (`LH_C(h_1_7_0, ((mappend_d6_d0_d0_d0 t_1_7_0) ys_1_8_1)))
    | `LH_N -> 
      ys_1_8_1);;
let rec mappend_d7_d0_d0_d0 xs_1_4_2 ys_2_1_2 =
  (match xs_1_4_2 with
    | `LH_C(h_1_9_9, t_1_9_9) -> 
      (`LH_C(h_1_9_9, ((mappend_d7_d0_d0_d0 t_1_9_9) ys_2_1_2)))
    | `LH_N -> 
      ys_2_1_2);;
let rec mappend_d8_d0_d0_d0 xs_1_5_5 ys_2_2_9 =
  (match xs_1_5_5 with
    | `LH_C(h_2_1_1, t_2_1_1) -> 
      (`LH_C(h_2_1_1, ((mappend_d8_d0_d0_d0 t_2_1_1) ys_2_2_9)))
    | `LH_N -> 
      ys_2_2_9);;
let rec mappend_d9_d0_d0_d0 xs_1_0_6 ys_1_6_0 =
  (match xs_1_0_6 with
    | `LH_C(h_1_5_2, t_1_5_2) -> 
      (`LH_C(h_1_5_2, ((mappend_d9_d0_d0_d0 t_1_5_2) ys_1_6_0)))
    | `LH_N -> 
      ys_1_6_0);;
let rec moveTo_d0_d0_d0_d0 _lh_moveTo_arg1_2 =
  _lh_moveTo_arg1_2;;
let rec moveTo_d1_d0_d0_d0 _lh_moveTo_arg1_3 =
  _lh_moveTo_arg1_3;;
let rec promptReadAt_d0_d0_d0_d0 _lh_promptReadAt_arg1_1 _lh_promptReadAt_arg2_3 _lh_promptReadAt_arg3_3 _lh_promptReadAt_arg4_3 =
  (((_lh_promptReadAt_arg1_1 _lh_promptReadAt_arg2_3) _lh_promptReadAt_arg3_3) _lh_promptReadAt_arg4_3);;
let rec readAt_d0_d0_d0_d0 _lh_readAt_arg1_1 _lh_readAt_arg2_2 _lh_readAt_arg3_2 =
  ((_lh_readAt_arg1_1 _lh_readAt_arg2_2) _lh_readAt_arg3_2);;
let rec readChar_d0_d0_d0_d0 _lh_readChar_arg1_9 _lh_readChar_arg2_9 _lh_readChar_arg3_9 =
  (match _lh_readChar_arg3_9 with
    | `LH_N -> 
      (_lh_readChar_arg1_9 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_9, _lh_readChar_LH_C_1_9) -> 
      ((_lh_readChar_arg2_9 _lh_readChar_LH_C_0_9) _lh_readChar_LH_C_1_9)
    | _ -> 
      (failwith "error"));;
let rec readChar_d1_d0_d0_d0 _lh_readChar_arg1_1_2 _lh_readChar_arg2_1_2 _lh_readChar_arg3_1_2 =
  (match _lh_readChar_arg3_1_2 with
    | `LH_N -> 
      (_lh_readChar_arg1_1_2 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1_2, _lh_readChar_LH_C_1_1_2) -> 
      ((_lh_readChar_arg2_1_2 _lh_readChar_LH_C_0_1_2) _lh_readChar_LH_C_1_1_2)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d0_d0 _lh_readChar_arg1_1_6 _lh_readChar_arg2_1_6 _lh_readChar_arg3_1_6 =
  (match _lh_readChar_arg3_1_6 with
    | `LH_N -> 
      (_lh_readChar_arg1_1_6 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1_6, _lh_readChar_LH_C_1_1_6) -> 
      ((_lh_readChar_arg2_1_6 _lh_readChar_LH_C_0_1_6) _lh_readChar_LH_C_1_1_6)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d1_d0 _lh_readChar_arg1_1_5 _lh_readChar_arg2_1_5 _lh_readChar_arg3_1_5 =
  (match _lh_readChar_arg3_1_5 with
    | `LH_N -> 
      (_lh_readChar_arg1_1_5 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1_5, _lh_readChar_LH_C_1_1_5) -> 
      ((_lh_readChar_arg2_1_5 _lh_readChar_LH_C_0_1_5) _lh_readChar_LH_C_1_1_5)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d2_d0 _lh_readChar_arg1_1_7 _lh_readChar_arg2_1_7 _lh_readChar_arg3_1_7 =
  (match _lh_readChar_arg3_1_7 with
    | `LH_N -> 
      (_lh_readChar_arg1_1_7 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1_7, _lh_readChar_LH_C_1_1_7) -> 
      ((_lh_readChar_arg2_1_7 _lh_readChar_LH_C_0_1_7) _lh_readChar_LH_C_1_1_7)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d3_d0 _lh_readChar_arg1_1_4 _lh_readChar_arg2_1_4 _lh_readChar_arg3_1_4 =
  (match _lh_readChar_arg3_1_4 with
    | `LH_N -> 
      (_lh_readChar_arg1_1_4 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1_4, _lh_readChar_LH_C_1_1_4) -> 
      ((_lh_readChar_arg2_1_4 _lh_readChar_LH_C_0_1_4) _lh_readChar_LH_C_1_1_4)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d4_d0 _lh_readChar_arg1_1_0 _lh_readChar_arg2_1_0 _lh_readChar_arg3_1_0 =
  (match _lh_readChar_arg3_1_0 with
    | `LH_N -> 
      (_lh_readChar_arg1_1_0 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1_0, _lh_readChar_LH_C_1_1_0) -> 
      ((_lh_readChar_arg2_1_0 _lh_readChar_LH_C_0_1_0) _lh_readChar_LH_C_1_1_0)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d5_d0 _lh_readChar_arg1_1_3 _lh_readChar_arg2_1_3 _lh_readChar_arg3_1_3 =
  (match _lh_readChar_arg3_1_3 with
    | `LH_N -> 
      (_lh_readChar_arg1_1_3 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1_3, _lh_readChar_LH_C_1_1_3) -> 
      ((_lh_readChar_arg2_1_3 _lh_readChar_LH_C_0_1_3) _lh_readChar_LH_C_1_1_3)
    | _ -> 
      (failwith "error"));;
let rec readChar_d2_d0_d6_d0 _lh_readChar_arg1_1_1 _lh_readChar_arg2_1_1 _lh_readChar_arg3_1_1 =
  (match _lh_readChar_arg3_1_1 with
    | `LH_N -> 
      (_lh_readChar_arg1_1_1 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1_1, _lh_readChar_LH_C_1_1_1) -> 
      ((_lh_readChar_arg2_1_1 _lh_readChar_LH_C_0_1_1) _lh_readChar_LH_C_1_1_1)
    | _ -> 
      (failwith "error"));;
let rec tail_d0_d0_d0_d0 ls_6_3 =
  (match ls_6_3 with
    | `LH_C(h_1_7_2, t_1_7_2) -> 
      t_1_7_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d1_d0 ls_7_8 =
  (match ls_7_8 with
    | `LH_C(h_2_1_5, t_2_1_5) -> 
      t_2_1_5
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d2_d0 ls_6_4 =
  (match ls_6_4 with
    | `LH_C(h_1_7_3, t_1_7_3) -> 
      t_1_7_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d3_d0 ls_8_5 =
  (match ls_8_5 with
    | `LH_C(h_2_3_1, t_2_3_1) -> 
      t_2_3_1
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d4_d0 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_1_3_0, t_1_3_0) -> 
      t_1_3_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d5_d0 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_1_5_7, t_1_5_7) -> 
      t_1_5_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d0_d0_d6_d0 ls_4_9 =
  (match ls_4_9 with
    | `LH_C(h_1_2_9, t_1_2_9) -> 
      t_1_2_9
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d0_d0 ls_6_6 =
  (match ls_6_6 with
    | `LH_C(h_1_8_0, t_1_8_0) -> 
      t_1_8_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d1_d0 ls_7_7 =
  (match ls_7_7 with
    | `LH_C(h_2_1_4, t_2_1_4) -> 
      t_2_1_4
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d2_d0 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_1_6_1, t_1_6_1) -> 
      t_1_6_1
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d3_d0 ls_5_8 =
  (match ls_5_8 with
    | `LH_C(h_1_5_6, t_1_5_6) -> 
      t_1_5_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d4_d0 ls_5_3 =
  (match ls_5_3 with
    | `LH_C(h_1_4_0, t_1_4_0) -> 
      t_1_4_0
    | `LH_N -> 
      (failwith "error"));;
let rec writeAt_d0_d0_d0_d0 _lh_writeAt_arg1_4 _lh_writeAt_arg2_1_0 =
  (_lh_writeAt_arg1_4 _lh_writeAt_arg2_1_0);;
let rec writeAt_d1_d0_d0_d0 _lh_writeAt_arg1_3 _lh_writeAt_arg2_6 =
  (_lh_writeAt_arg1_3 _lh_writeAt_arg2_6);;
let rec writeAt_d2_d0_d0_d0 _lh_writeAt_arg1_5 _lh_writeAt_arg2_1_1 =
  (_lh_writeAt_arg1_5 _lh_writeAt_arg2_1_1);;
let rec writeChar_d0_d0_d0_d0 _lh_writeChar_arg1_4_8 _lh_writeChar_arg2_4_8 _lh_writeChar_arg3_4_8 =
  (`LH_C(_lh_writeChar_arg1_4_8, (_lh_writeChar_arg2_4_8 _lh_writeChar_arg3_4_8)));;
let rec writeChar_d0_d0_d1_d0 _lh_writeChar_arg1_4_9 _lh_writeChar_arg2_4_9 _lh_writeChar_arg3_4_9 =
  (`LH_C(_lh_writeChar_arg1_4_9, (_lh_writeChar_arg2_4_9 _lh_writeChar_arg3_4_9)));;
let rec writeChar_d0_d0_d2_d0 _lh_writeChar_arg1_2_6 _lh_writeChar_arg2_2_6 _lh_writeChar_arg3_2_6 =
  (`LH_C(_lh_writeChar_arg1_2_6, (_lh_writeChar_arg2_2_6 _lh_writeChar_arg3_2_6)));;
let rec writeChar_d0_d0_d3_d0 _lh_writeChar_arg1_5_1 _lh_writeChar_arg2_5_1 _lh_writeChar_arg3_5_1 =
  (`LH_C(_lh_writeChar_arg1_5_1, (_lh_writeChar_arg2_5_1 _lh_writeChar_arg3_5_1)));;
let rec writeChar_d0_d0_d4_d0 _lh_writeChar_arg1_3_8 _lh_writeChar_arg2_3_8 _lh_writeChar_arg3_3_8 =
  (`LH_C(_lh_writeChar_arg1_3_8, (_lh_writeChar_arg2_3_8 _lh_writeChar_arg3_3_8)));;
let rec writeChar_d0_d0_d5_d0 _lh_writeChar_arg1_4_0 _lh_writeChar_arg2_4_0 _lh_writeChar_arg3_4_0 =
  (`LH_C(_lh_writeChar_arg1_4_0, (_lh_writeChar_arg2_4_0 _lh_writeChar_arg3_4_0)));;
let rec writeChar_d0_d0_d6_d0 _lh_writeChar_arg1_5_0 _lh_writeChar_arg2_5_0 _lh_writeChar_arg3_5_0 =
  (`LH_C(_lh_writeChar_arg1_5_0, (_lh_writeChar_arg2_5_0 _lh_writeChar_arg3_5_0)));;
let rec writeChar_d1_d0_d0_d0 _lh_writeChar_arg1_3_5 _lh_writeChar_arg2_3_5 _lh_writeChar_arg3_3_5 =
  (`LH_C(_lh_writeChar_arg1_3_5, (_lh_writeChar_arg2_3_5 _lh_writeChar_arg3_3_5)));;
let rec writeChar_d1_d0_d1_d0 _lh_writeChar_arg1_4_6 _lh_writeChar_arg2_4_6 _lh_writeChar_arg3_4_6 =
  (`LH_C(_lh_writeChar_arg1_4_6, (_lh_writeChar_arg2_4_6 _lh_writeChar_arg3_4_6)));;
let rec writeChar_d1_d0_d2_d0 _lh_writeChar_arg1_3_3 _lh_writeChar_arg2_3_3 _lh_writeChar_arg3_3_3 =
  (`LH_C(_lh_writeChar_arg1_3_3, (_lh_writeChar_arg2_3_3 _lh_writeChar_arg3_3_3)));;
let rec writeChar_d1_d0_d3_d0 _lh_writeChar_arg1_2_9 _lh_writeChar_arg2_2_9 _lh_writeChar_arg3_2_9 =
  (`LH_C(_lh_writeChar_arg1_2_9, (_lh_writeChar_arg2_2_9 _lh_writeChar_arg3_2_9)));;
let rec writeChar_d1_d0_d4_d0 _lh_writeChar_arg1_4_2 _lh_writeChar_arg2_4_2 _lh_writeChar_arg3_4_2 =
  (`LH_C(_lh_writeChar_arg1_4_2, (_lh_writeChar_arg2_4_2 _lh_writeChar_arg3_4_2)));;
let rec writeChar_d2_d0_d0_d0 _lh_writeChar_arg1_4_3 _lh_writeChar_arg2_4_3 _lh_writeChar_arg3_4_3 =
  (`LH_C(_lh_writeChar_arg1_4_3, (_lh_writeChar_arg2_4_3 _lh_writeChar_arg3_4_3)));;
let rec writeChar_d2_d0_d1_d0 _lh_writeChar_arg1_3_9 _lh_writeChar_arg2_3_9 _lh_writeChar_arg3_3_9 =
  (`LH_C(_lh_writeChar_arg1_3_9, (_lh_writeChar_arg2_3_9 _lh_writeChar_arg3_3_9)));;
let rec writeChar_d2_d0_d2_d0 _lh_writeChar_arg1_3_4 _lh_writeChar_arg2_3_4 _lh_writeChar_arg3_3_4 =
  (`LH_C(_lh_writeChar_arg1_3_4, (_lh_writeChar_arg2_3_4 _lh_writeChar_arg3_3_4)));;
let rec writeChar_d2_d0_d3_d0 _lh_writeChar_arg1_3_6 _lh_writeChar_arg2_3_6 _lh_writeChar_arg3_3_6 =
  (`LH_C(_lh_writeChar_arg1_3_6, (_lh_writeChar_arg2_3_6 _lh_writeChar_arg3_3_6)));;
let rec writeChar_d2_d0_d4_d0 _lh_writeChar_arg1_3_0 _lh_writeChar_arg2_3_0 _lh_writeChar_arg3_3_0 =
  (`LH_C(_lh_writeChar_arg1_3_0, (_lh_writeChar_arg2_3_0 _lh_writeChar_arg3_3_0)));;
let rec writeChar_d2_d0_d5_d0 _lh_writeChar_arg1_2_7 _lh_writeChar_arg2_2_7 _lh_writeChar_arg3_2_7 =
  (`LH_C(_lh_writeChar_arg1_2_7, (_lh_writeChar_arg2_2_7 _lh_writeChar_arg3_2_7)));;
let rec writeChar_d2_d0_d6_d0 _lh_writeChar_arg1_4_4 _lh_writeChar_arg2_4_4 _lh_writeChar_arg3_4_4 =
  (`LH_C(_lh_writeChar_arg1_4_4, (_lh_writeChar_arg2_4_4 _lh_writeChar_arg3_4_4)));;
let rec writeChar_d3_d0_d0_d0 _lh_writeChar_arg1_3_2 _lh_writeChar_arg2_3_2 _lh_writeChar_arg3_3_2 =
  (`LH_C(_lh_writeChar_arg1_3_2, (_lh_writeChar_arg2_3_2 _lh_writeChar_arg3_3_2)));;
let rec writeChar_d3_d0_d1_d0 _lh_writeChar_arg1_4_1 _lh_writeChar_arg2_4_1 _lh_writeChar_arg3_4_1 =
  (`LH_C(_lh_writeChar_arg1_4_1, (_lh_writeChar_arg2_4_1 _lh_writeChar_arg3_4_1)));;
let rec writeChar_d3_d0_d2_d0 _lh_writeChar_arg1_2_8 _lh_writeChar_arg2_2_8 _lh_writeChar_arg3_2_8 =
  (`LH_C(_lh_writeChar_arg1_2_8, (_lh_writeChar_arg2_2_8 _lh_writeChar_arg3_2_8)));;
let rec writeChar_d3_d0_d3_d0 _lh_writeChar_arg1_4_5 _lh_writeChar_arg2_4_5 _lh_writeChar_arg3_4_5 =
  (`LH_C(_lh_writeChar_arg1_4_5, (_lh_writeChar_arg2_4_5 _lh_writeChar_arg3_4_5)));;
let rec writeChar_d3_d0_d4_d0 _lh_writeChar_arg1_3_7 _lh_writeChar_arg2_3_7 _lh_writeChar_arg3_3_7 =
  (`LH_C(_lh_writeChar_arg1_3_7, (_lh_writeChar_arg2_3_7 _lh_writeChar_arg3_3_7)));;
let rec writeChar_d3_d0_d5_d0 _lh_writeChar_arg1_3_1 _lh_writeChar_arg2_3_1 _lh_writeChar_arg3_3_1 =
  (`LH_C(_lh_writeChar_arg1_3_1, (_lh_writeChar_arg2_3_1 _lh_writeChar_arg3_3_1)));;
let rec writeChar_d3_d0_d6_d0 _lh_writeChar_arg1_4_7 _lh_writeChar_arg2_4_7 _lh_writeChar_arg3_4_7 =
  (`LH_C(_lh_writeChar_arg1_4_7, (_lh_writeChar_arg2_4_7 _lh_writeChar_arg3_4_7)));;
let rec cls_d0_d0_d0_d0 ys_1_7_2 ys_1_7_3 =
  (let rec h_1_6_3 = 'L' in
    (let rec t_1_6_3 = (fun ys_1_7_1 -> 
      ys_1_7_1) in
      (let rec h_1_6_4 = h_1_6_3 in
        (let rec t_1_6_4 = ((mappend_d4_d3_d0_d6_d0 t_1_6_3) ys_1_7_2) in
          (`LH_C(h_1_6_4, ((mappend_d4_d4_d0_d6_d0 t_1_6_4) ys_1_7_3)))))))
and copy_d0_d0_d0_d0 _lh_copy_arg1_2 _lh_copy_arg2_2 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (_lh_copy_arg1_2 > 0) then
    (let rec h_1_9_3 = _lh_copy_arg2_2 in
      (let rec t_1_9_3 = ((copy_d0_d0_d0_d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
        ((_lh_popOutId_0_0 h_1_9_3) (((foldr_d0_d0_d0_d0 _lh_popOutId_0_0) _lh_popOutId_1_0) t_1_9_3))))
  else
    _lh_popOutId_1_0)
and copy_d1_d0_d0_d0 _lh_copy_arg1_3 _lh_copy_arg2_3 _lh_popOutId_0_1 =
  (if (_lh_copy_arg1_3 > 0) then
    (let rec h_2_0_0 = _lh_copy_arg2_3 in
      (let rec t_2_0_0 = ((copy_d1_d0_d0_d0 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
        (`LH_C(h_2_0_0, ((mappend_d3_d3_d0_d0_d0 t_2_0_0) _lh_popOutId_0_1)))))
  else
    _lh_popOutId_0_1)
and delete_d0_d0_d0_d0 _lh_delete_arg1_1_3 _lh_delete_arg2_1_3 _lh_delete_arg3_1_3 _lh_delete_arg4_1_3 =
  (if (_lh_delete_arg1_1_3 > 0) then
    ((writeString_d1_d0_d2_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d1_d0 (_lh_delete_arg1_1_3 - 1)) (tail_d0_d0_d2_d0 _lh_delete_arg2_1_3)) _lh_delete_arg3_1_3) _lh_delete_arg4_1_3))
  else
    (ringBell_d0_d0_d2_d0 ((((loop_d0_d0_d2_d0 0) (`LH_N)) _lh_delete_arg3_1_3) _lh_delete_arg4_1_3)))
and delete_d0_d0_d1_d0 _lh_delete_arg1_1_9 _lh_delete_arg2_1_9 _lh_delete_arg3_1_9 _lh_delete_arg4_1_9 =
  (if (_lh_delete_arg1_1_9 > 0) then
    ((writeString_d1_d0_d0_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d1_d0 (_lh_delete_arg1_1_9 - 1)) (tail_d0_d0_d0_d0 _lh_delete_arg2_1_9)) _lh_delete_arg3_1_9) _lh_delete_arg4_1_9))
  else
    (ringBell_d0_d0_d0_d0 ((((loop_d0_d0_d1_d0 0) (`LH_N)) _lh_delete_arg3_1_9) _lh_delete_arg4_1_9)))
and delete_d0_d0_d2_d0 _lh_delete_arg1_1_5 _lh_delete_arg2_1_5 _lh_delete_arg3_1_5 _lh_delete_arg4_1_5 =
  (if (_lh_delete_arg1_1_5 > 0) then
    ((writeString_d1_d0_d1_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d2_d0 (_lh_delete_arg1_1_5 - 1)) (tail_d0_d0_d1_d0 _lh_delete_arg2_1_5)) _lh_delete_arg3_1_5) _lh_delete_arg4_1_5))
  else
    (ringBell_d0_d0_d1_d0 ((((loop_d0_d0_d2_d0 0) (`LH_N)) _lh_delete_arg3_1_5) _lh_delete_arg4_1_5)))
and delete_d0_d0_d3_d0 _lh_delete_arg1_1_6 _lh_delete_arg2_1_6 _lh_delete_arg3_1_6 _lh_delete_arg4_1_6 =
  (if (_lh_delete_arg1_1_6 > 0) then
    ((writeString_d1_d0_d3_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d3_d0 (_lh_delete_arg1_1_6 - 1)) (tail_d0_d0_d3_d0 _lh_delete_arg2_1_6)) _lh_delete_arg3_1_6) _lh_delete_arg4_1_6))
  else
    (ringBell_d0_d0_d3_d0 ((((loop_d0_d0_d3_d0 0) (`LH_N)) _lh_delete_arg3_1_6) _lh_delete_arg4_1_6)))
and delete_d0_d0_d4_d0 _lh_delete_arg1_1_8 _lh_delete_arg2_1_8 _lh_delete_arg3_1_8 _lh_delete_arg4_1_8 =
  (if (_lh_delete_arg1_1_8 > 0) then
    ((writeString_d1_d0_d4_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d4_d0 (_lh_delete_arg1_1_8 - 1)) (tail_d0_d0_d4_d0 _lh_delete_arg2_1_8)) _lh_delete_arg3_1_8) _lh_delete_arg4_1_8))
  else
    (ringBell_d0_d0_d4_d0 ((((loop_d0_d0_d4_d0 0) (`LH_N)) _lh_delete_arg3_1_8) _lh_delete_arg4_1_8)))
and delete_d0_d0_d5_d0 _lh_delete_arg1_2_2 _lh_delete_arg2_2_2 _lh_delete_arg3_2_2 _lh_delete_arg4_2_2 =
  (if (_lh_delete_arg1_2_2 > 0) then
    ((writeString_d1_d0_d5_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d5_d0 (_lh_delete_arg1_2_2 - 1)) (tail_d0_d0_d5_d0 _lh_delete_arg2_2_2)) _lh_delete_arg3_2_2) _lh_delete_arg4_2_2))
  else
    (ringBell_d0_d0_d5_d0 ((((loop_d0_d0_d5_d0 0) (`LH_N)) _lh_delete_arg3_2_2) _lh_delete_arg4_2_2)))
and delete_d0_d0_d6_d0 _lh_delete_arg1_1_7 _lh_delete_arg2_1_7 _lh_delete_arg3_1_7 _lh_delete_arg4_1_7 =
  (if (_lh_delete_arg1_1_7 > 0) then
    ((writeString_d1_d0_d6_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d6_d0 (_lh_delete_arg1_1_7 - 1)) (tail_d0_d0_d6_d0 _lh_delete_arg2_1_7)) _lh_delete_arg3_1_7) _lh_delete_arg4_1_7))
  else
    (ringBell_d0_d0_d6_d0 ((((loop_d0_d0_d6_d0 0) (`LH_N)) _lh_delete_arg3_1_7) _lh_delete_arg4_1_7)))
and delete_d1_d0_d0_d0 _lh_delete_arg1_2_1 _lh_delete_arg2_2_1 _lh_delete_arg3_2_1 _lh_delete_arg4_2_1 =
  (if (_lh_delete_arg1_2_1 > 0) then
    ((writeString_d2_d0_d0_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d1_d0 (_lh_delete_arg1_2_1 - 1)) (tail_d1_d0_d0_d0 _lh_delete_arg2_2_1)) _lh_delete_arg3_2_1) _lh_delete_arg4_2_1))
  else
    (ringBell_d1_d0_d0_d0 ((((loop_d0_d0_d1_d0 0) (`LH_N)) _lh_delete_arg3_2_1) _lh_delete_arg4_2_1)))
and delete_d1_d0_d1_d0 _lh_delete_arg1_1_4 _lh_delete_arg2_1_4 _lh_delete_arg3_1_4 _lh_delete_arg4_1_4 =
  (if (_lh_delete_arg1_1_4 > 0) then
    ((writeString_d2_d0_d1_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d2_d0 (_lh_delete_arg1_1_4 - 1)) (tail_d1_d0_d1_d0 _lh_delete_arg2_1_4)) _lh_delete_arg3_1_4) _lh_delete_arg4_1_4))
  else
    (ringBell_d1_d0_d1_d0 ((((loop_d0_d0_d2_d0 0) (`LH_N)) _lh_delete_arg3_1_4) _lh_delete_arg4_1_4)))
and delete_d1_d0_d2_d0 _lh_delete_arg1_2_3 _lh_delete_arg2_2_3 _lh_delete_arg3_2_3 _lh_delete_arg4_2_3 =
  (if (_lh_delete_arg1_2_3 > 0) then
    ((writeString_d2_d0_d2_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d3_d0 (_lh_delete_arg1_2_3 - 1)) (tail_d1_d0_d2_d0 _lh_delete_arg2_2_3)) _lh_delete_arg3_2_3) _lh_delete_arg4_2_3))
  else
    (ringBell_d1_d0_d2_d0 ((((loop_d0_d0_d4_d0 0) (`LH_N)) _lh_delete_arg3_2_3) _lh_delete_arg4_2_3)))
and delete_d1_d0_d3_d0 _lh_delete_arg1_1_2 _lh_delete_arg2_1_2 _lh_delete_arg3_1_2 _lh_delete_arg4_1_2 =
  (if (_lh_delete_arg1_1_2 > 0) then
    ((writeString_d2_d0_d3_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d5_d0 (_lh_delete_arg1_1_2 - 1)) (tail_d1_d0_d3_d0 _lh_delete_arg2_1_2)) _lh_delete_arg3_1_2) _lh_delete_arg4_1_2))
  else
    (ringBell_d1_d0_d3_d0 ((((loop_d0_d0_d5_d0 0) (`LH_N)) _lh_delete_arg3_1_2) _lh_delete_arg4_1_2)))
and delete_d1_d0_d4_d0 _lh_delete_arg1_2_0 _lh_delete_arg2_2_0 _lh_delete_arg3_2_0 _lh_delete_arg4_2_0 =
  (if (_lh_delete_arg1_2_0 > 0) then
    ((writeString_d2_d0_d4_d0 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_d0_d0_d6_d0 (_lh_delete_arg1_2_0 - 1)) (tail_d1_d0_d4_d0 _lh_delete_arg2_2_0)) _lh_delete_arg3_2_0) _lh_delete_arg4_2_0))
  else
    (ringBell_d1_d0_d4_d0 ((((loop_d0_d0_d6_d0 0) (`LH_N)) _lh_delete_arg3_2_0) _lh_delete_arg4_2_0)))
and goto_d0_d0_d0_d0 _lh_goto_arg1_1_1 _lh_goto_arg2_1_1 =
  (`LH_C('E', (`LH_C('[', ((mappend_d0_d0_d0_d0 (string_of_int _lh_goto_arg2_1_1)) ((mappend_d1_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_1)))) (`LH_C('H', (`LH_N)))))))))
and goto_d1_d0_d0_d0 _lh_goto_arg1_1_4 _lh_goto_arg2_1_4 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d0_d0_d0 (string_of_int _lh_goto_arg2_1_4)) ((mappend_d4_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_4)))) (`LH_C('H', (`LH_N)))))))))
and goto_d1_d0_d0_d0_d0 _lh_goto_arg1_1_9 _lh_goto_arg2_1_9 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d8_d0_d0_d0 (string_of_int _lh_goto_arg2_1_9)) ((mappend_d3_d9_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_9)))) (`LH_C('H', (`LH_N)))))))))
and goto_d2_d0_d0_d0 _lh_goto_arg1_1_6 _lh_goto_arg2_1_6 =
  (`LH_C('E', (`LH_C('[', ((mappend_d6_d0_d0_d0 (string_of_int _lh_goto_arg2_1_6)) ((mappend_d7_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_6)))) (`LH_C('H', (`LH_N)))))))))
and goto_d3_d0_d0_d0 _lh_goto_arg1_1_8 _lh_goto_arg2_1_8 =
  (`LH_C('E', (`LH_C('[', ((mappend_d9_d0_d0_d0 (string_of_int _lh_goto_arg2_1_8)) ((mappend_d1_d0_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_8)))) (`LH_C('H', (`LH_N)))))))))
and goto_d4_d0_d0_d0 _lh_goto_arg1_1_7 _lh_goto_arg2_1_7 =
  (`LH_C('E', (`LH_C('[', ((mappend_d1_d2_d0_d0_d0 (string_of_int _lh_goto_arg2_1_7)) ((mappend_d1_d3_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_7)))) (`LH_C('H', (`LH_N)))))))))
and goto_d5_d0_d0_d0 _lh_goto_arg1_1_5 _lh_goto_arg2_1_5 =
  (`LH_C('E', (`LH_C('[', ((mappend_d1_d5_d0_d0_d0 (string_of_int _lh_goto_arg2_1_5)) ((mappend_d1_d6_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_5)))) (`LH_C('H', (`LH_N)))))))))
and goto_d6_d0_d0_d0 _lh_goto_arg1_1_2 _lh_goto_arg2_1_2 =
  (`LH_C('E', (`LH_C('[', ((mappend_d2_d2_d0_d0_d0 (string_of_int _lh_goto_arg2_1_2)) ((mappend_d2_d3_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_2)))) (`LH_C('H', (`LH_N)))))))))
and goto_d7_d0_d0_d0 _lh_goto_arg1_1_3 _lh_goto_arg2_1_3 =
  (`LH_C('E', (`LH_C('[', ((mappend_d2_d7_d0_d0_d0 (string_of_int _lh_goto_arg2_1_3)) ((mappend_d2_d8_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_1_3)))) (`LH_C('H', (`LH_N)))))))))
and goto_d8_d0_d0_d0 _lh_goto_arg1_2_1 _lh_goto_arg2_2_1 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d0_d0_d0_d0 (string_of_int _lh_goto_arg2_2_1)) ((mappend_d3_d1_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_2_1)))) (`LH_C('H', (`LH_N)))))))))
and goto_d9_d0_d0_d0 _lh_goto_arg1_2_0 _lh_goto_arg2_2_0 =
  (`LH_C('E', (`LH_C('[', ((mappend_d3_d4_d0_d0_d0 (string_of_int _lh_goto_arg2_2_0)) ((mappend_d3_d5_d0_d0_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_2_0)))) (`LH_C('H', (`LH_N)))))))))
and highlight_d0_d0_d0_d0 _lh_highlight_arg1_1 =
  ((mappend_d1_d8_d0_d0_d0 ((mappend_d1_d9_d0_d0_d0 (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('7', (`LH_C('m', (`LH_N)))))))))))))) _lh_highlight_arg1_1)) (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('0', (`LH_C('m', (`LH_N))))))))))))))
and loop_d0_d0_d0_d0 _lh_loop_arg1_7 _lh_loop_arg2_7 _lh_loop_arg3_7 _lh_loop_arg4_7 =
  ((readChar_d2_d0_d6_d0 ((return_d0_d0_d6_d0 _lh_loop_arg2_7) _lh_loop_arg4_7)) (fun c_9 -> 
    (let rec _lh_matchIdent_7 = c_9 in
      (match _lh_matchIdent_7 with
        | 'B' -> 
          ((((delete_d0_d0_d0_d0 _lh_loop_arg1_7) _lh_loop_arg2_7) _lh_loop_arg3_7) _lh_loop_arg4_7)
        | 'D' -> 
          ((((delete_d1_d0_d2_d0 _lh_loop_arg1_7) _lh_loop_arg2_7) _lh_loop_arg3_7) _lh_loop_arg4_7)
        | '`' -> 
          ((return_d1_d0_d6_d0 _lh_loop_arg2_7) _lh_loop_arg4_7)
        | _ -> 
          (if (_lh_loop_arg1_7 < _lh_loop_arg3_7) then
            ((writeChar_d3_d0_d6_d0 _lh_matchIdent_7) ((((loop_d0_d0_d5_d0 (_lh_loop_arg1_7 + 1)) (`LH_C(_lh_matchIdent_7, _lh_loop_arg2_7))) _lh_loop_arg3_7) _lh_loop_arg4_7))
          else
            (ringBell_d2_d0_d6_d0 ((((loop_d0_d0_d6_d0 _lh_loop_arg1_7) _lh_loop_arg2_7) _lh_loop_arg3_7) _lh_loop_arg4_7)))))))
and loop_d0_d0_d1_d0 _lh_loop_arg1_9 _lh_loop_arg2_9 _lh_loop_arg3_9 _lh_loop_arg4_9 =
  ((readChar_d2_d0_d0_d0 ((return_d0_d0_d0_d0 _lh_loop_arg2_9) _lh_loop_arg4_9)) (fun c_1_3 -> 
    (let rec _lh_matchIdent_9 = c_1_3 in
      (match _lh_matchIdent_9 with
        | 'B' -> 
          ((((delete_d0_d0_d1_d0 _lh_loop_arg1_9) _lh_loop_arg2_9) _lh_loop_arg3_9) _lh_loop_arg4_9)
        | 'D' -> 
          ((((delete_d1_d0_d0_d0 _lh_loop_arg1_9) _lh_loop_arg2_9) _lh_loop_arg3_9) _lh_loop_arg4_9)
        | '`' -> 
          ((return_d1_d0_d0_d0 _lh_loop_arg2_9) _lh_loop_arg4_9)
        | _ -> 
          (if (_lh_loop_arg1_9 < _lh_loop_arg3_9) then
            ((writeChar_d3_d0_d0_d0 _lh_matchIdent_9) ((((loop_d0_d0_d1_d0 (_lh_loop_arg1_9 + 1)) (`LH_C(_lh_matchIdent_9, _lh_loop_arg2_9))) _lh_loop_arg3_9) _lh_loop_arg4_9))
          else
            (ringBell_d2_d0_d0_d0 ((((loop_d0_d0_d1_d0 _lh_loop_arg1_9) _lh_loop_arg2_9) _lh_loop_arg3_9) _lh_loop_arg4_9)))))))
and loop_d0_d0_d2_d0 _lh_loop_arg1_1_0 _lh_loop_arg2_1_0 _lh_loop_arg3_1_0 _lh_loop_arg4_1_0 =
  ((readChar_d2_d0_d1_d0 ((return_d0_d0_d1_d0 _lh_loop_arg2_1_0) _lh_loop_arg4_1_0)) (fun c_1_4 -> 
    (let rec _lh_matchIdent_1_0 = c_1_4 in
      (match _lh_matchIdent_1_0 with
        | 'B' -> 
          ((((delete_d0_d0_d2_d0 _lh_loop_arg1_1_0) _lh_loop_arg2_1_0) _lh_loop_arg3_1_0) _lh_loop_arg4_1_0)
        | 'D' -> 
          ((((delete_d1_d0_d1_d0 _lh_loop_arg1_1_0) _lh_loop_arg2_1_0) _lh_loop_arg3_1_0) _lh_loop_arg4_1_0)
        | '`' -> 
          ((return_d1_d0_d1_d0 _lh_loop_arg2_1_0) _lh_loop_arg4_1_0)
        | _ -> 
          (if (_lh_loop_arg1_1_0 < _lh_loop_arg3_1_0) then
            ((writeChar_d3_d0_d1_d0 _lh_matchIdent_1_0) ((((loop_d0_d0_d2_d0 (_lh_loop_arg1_1_0 + 1)) (`LH_C(_lh_matchIdent_1_0, _lh_loop_arg2_1_0))) _lh_loop_arg3_1_0) _lh_loop_arg4_1_0))
          else
            (ringBell_d2_d0_d1_d0 ((((loop_d0_d0_d2_d0 _lh_loop_arg1_1_0) _lh_loop_arg2_1_0) _lh_loop_arg3_1_0) _lh_loop_arg4_1_0)))))))
and loop_d0_d0_d3_d0 _lh_loop_arg1_1_1 _lh_loop_arg2_1_1 _lh_loop_arg3_1_1 _lh_loop_arg4_1_1 =
  ((readChar_d2_d0_d2_d0 ((return_d0_d0_d2_d0 _lh_loop_arg2_1_1) _lh_loop_arg4_1_1)) (fun c_1_5 -> 
    (let rec _lh_matchIdent_1_1 = c_1_5 in
      (match _lh_matchIdent_1_1 with
        | 'B' -> 
          ((((delete_d0_d0_d3_d0 _lh_loop_arg1_1_1) _lh_loop_arg2_1_1) _lh_loop_arg3_1_1) _lh_loop_arg4_1_1)
        | 'D' -> 
          ((((delete_d1_d0_d2_d0 _lh_loop_arg1_1_1) _lh_loop_arg2_1_1) _lh_loop_arg3_1_1) _lh_loop_arg4_1_1)
        | '`' -> 
          ((return_d1_d0_d2_d0 _lh_loop_arg2_1_1) _lh_loop_arg4_1_1)
        | _ -> 
          (if (_lh_loop_arg1_1_1 < _lh_loop_arg3_1_1) then
            ((writeChar_d3_d0_d2_d0 _lh_matchIdent_1_1) ((((loop_d0_d0_d3_d0 (_lh_loop_arg1_1_1 + 1)) (`LH_C(_lh_matchIdent_1_1, _lh_loop_arg2_1_1))) _lh_loop_arg3_1_1) _lh_loop_arg4_1_1))
          else
            (ringBell_d2_d0_d2_d0 ((((loop_d0_d0_d3_d0 _lh_loop_arg1_1_1) _lh_loop_arg2_1_1) _lh_loop_arg3_1_1) _lh_loop_arg4_1_1)))))))
and loop_d0_d0_d4_d0 _lh_loop_arg1_8 _lh_loop_arg2_8 _lh_loop_arg3_8 _lh_loop_arg4_8 =
  ((readChar_d2_d0_d3_d0 ((return_d0_d0_d3_d0 _lh_loop_arg2_8) _lh_loop_arg4_8)) (fun c_1_2 -> 
    (let rec _lh_matchIdent_8 = c_1_2 in
      (match _lh_matchIdent_8 with
        | 'B' -> 
          ((((delete_d0_d0_d4_d0 _lh_loop_arg1_8) _lh_loop_arg2_8) _lh_loop_arg3_8) _lh_loop_arg4_8)
        | 'D' -> 
          ((((delete_d1_d0_d2_d0 _lh_loop_arg1_8) _lh_loop_arg2_8) _lh_loop_arg3_8) _lh_loop_arg4_8)
        | '`' -> 
          ((return_d1_d0_d3_d0 _lh_loop_arg2_8) _lh_loop_arg4_8)
        | _ -> 
          (if (_lh_loop_arg1_8 < _lh_loop_arg3_8) then
            ((writeChar_d3_d0_d3_d0 _lh_matchIdent_8) ((((loop_d0_d0_d4_d0 (_lh_loop_arg1_8 + 1)) (`LH_C(_lh_matchIdent_8, _lh_loop_arg2_8))) _lh_loop_arg3_8) _lh_loop_arg4_8))
          else
            (ringBell_d2_d0_d3_d0 ((((loop_d0_d0_d4_d0 _lh_loop_arg1_8) _lh_loop_arg2_8) _lh_loop_arg3_8) _lh_loop_arg4_8)))))))
and loop_d0_d0_d5_d0 _lh_loop_arg1_1_2 _lh_loop_arg2_1_2 _lh_loop_arg3_1_2 _lh_loop_arg4_1_2 =
  ((readChar_d2_d0_d4_d0 ((return_d0_d0_d4_d0 _lh_loop_arg2_1_2) _lh_loop_arg4_1_2)) (fun c_1_6 -> 
    (let rec _lh_matchIdent_1_2 = c_1_6 in
      (match _lh_matchIdent_1_2 with
        | 'B' -> 
          ((((delete_d0_d0_d5_d0 _lh_loop_arg1_1_2) _lh_loop_arg2_1_2) _lh_loop_arg3_1_2) _lh_loop_arg4_1_2)
        | 'D' -> 
          ((((delete_d1_d0_d3_d0 _lh_loop_arg1_1_2) _lh_loop_arg2_1_2) _lh_loop_arg3_1_2) _lh_loop_arg4_1_2)
        | '`' -> 
          ((return_d1_d0_d4_d0 _lh_loop_arg2_1_2) _lh_loop_arg4_1_2)
        | _ -> 
          (if (_lh_loop_arg1_1_2 < _lh_loop_arg3_1_2) then
            ((writeChar_d3_d0_d4_d0 _lh_matchIdent_1_2) ((((loop_d0_d0_d5_d0 (_lh_loop_arg1_1_2 + 1)) (`LH_C(_lh_matchIdent_1_2, _lh_loop_arg2_1_2))) _lh_loop_arg3_1_2) _lh_loop_arg4_1_2))
          else
            (ringBell_d2_d0_d4_d0 ((((loop_d0_d0_d5_d0 _lh_loop_arg1_1_2) _lh_loop_arg2_1_2) _lh_loop_arg3_1_2) _lh_loop_arg4_1_2)))))))
and loop_d0_d0_d6_d0 _lh_loop_arg1_1_3 _lh_loop_arg2_1_3 _lh_loop_arg3_1_3 _lh_loop_arg4_1_3 =
  ((readChar_d2_d0_d5_d0 ((return_d0_d0_d5_d0 _lh_loop_arg2_1_3) _lh_loop_arg4_1_3)) (fun c_1_7 -> 
    (let rec _lh_matchIdent_1_3 = c_1_7 in
      (match _lh_matchIdent_1_3 with
        | 'B' -> 
          ((((delete_d0_d0_d6_d0 _lh_loop_arg1_1_3) _lh_loop_arg2_1_3) _lh_loop_arg3_1_3) _lh_loop_arg4_1_3)
        | 'D' -> 
          ((((delete_d1_d0_d4_d0 _lh_loop_arg1_1_3) _lh_loop_arg2_1_3) _lh_loop_arg3_1_3) _lh_loop_arg4_1_3)
        | '`' -> 
          ((return_d1_d0_d5_d0 _lh_loop_arg2_1_3) _lh_loop_arg4_1_3)
        | _ -> 
          (if (_lh_loop_arg1_1_3 < _lh_loop_arg3_1_3) then
            ((writeChar_d3_d0_d5_d0 _lh_matchIdent_1_3) ((((loop_d0_d0_d6_d0 (_lh_loop_arg1_1_3 + 1)) (`LH_C(_lh_matchIdent_1_3, _lh_loop_arg2_1_3))) _lh_loop_arg3_1_3) _lh_loop_arg4_1_3))
          else
            (ringBell_d2_d0_d5_d0 ((((loop_d0_d0_d6_d0 _lh_loop_arg1_1_3) _lh_loop_arg2_1_3) _lh_loop_arg3_1_3) _lh_loop_arg4_1_3)))))))
and mappend_d2_d1_d0_d0_d0 xs_1_2_8 ys_1_8_8 =
  (match xs_1_2_8 with
    | `LH_C(h_1_7_7, t_1_7_7) -> 
      (let rec h_1_7_8 = h_1_7_7 in
        (let rec t_1_7_8 = ((mappend_d2_d1_d0_d0_d0 t_1_7_7) ys_1_8_8) in
          (fun ys_1_8_9 -> 
            (`LH_C(h_1_7_8, ((mappend_d2_d0_d0_d1_d5_d0 t_1_7_8) ys_1_8_9))))))
    | `LH_N -> 
      ys_1_8_8)
and mappend_d3_d2_d0_d0_d0 xs_1_4_5 ys_2_1_7 =
  (match xs_1_4_5 with
    | `LH_C(h_2_0_3, t_2_0_3) -> 
      (let rec h_2_0_4 = h_2_0_3 in
        (let rec t_2_0_4 = ((mappend_d3_d2_d0_d0_d0 t_2_0_3) ys_2_1_7) in
          (fun ys_2_1_8 -> 
            (`LH_C(h_2_0_4, ((mappend_d3_d3_d0_d1_d0 t_2_0_4) ys_2_1_8))))))
    | `LH_N -> 
      ys_2_1_7)
and mappend_d4_d3_d0_d0_d0 xs_1_0_5 ys_1_5_8 =
  (match xs_1_0_5 with
    | `LH_C(h_1_5_0, t_1_5_0) -> 
      (let rec h_1_5_1 = h_1_5_0 in
        (let rec t_1_5_1 = ((mappend_d4_d3_d0_d0_d0 t_1_5_0) ys_1_5_8) in
          (fun ys_1_5_9 -> 
            (`LH_C(h_1_5_1, ((mappend_d4_d4_d0_d0_d0 t_1_5_1) ys_1_5_9))))))
    | `LH_N -> 
      ys_1_5_8)
and mappend_d4_d3_d0_d1_d0 xs_1_3_4 ys_1_9_8 =
  (match xs_1_3_4 with
    | `LH_C(h_1_8_4, t_1_8_4) -> 
      (let rec h_1_8_5 = h_1_8_4 in
        (let rec t_1_8_5 = ((mappend_d4_d3_d0_d1_d0 t_1_8_4) ys_1_9_8) in
          (fun ys_1_9_9 -> 
            (`LH_C(h_1_8_5, ((mappend_d4_d4_d0_d1_d0 t_1_8_5) ys_1_9_9))))))
    | `LH_N -> 
      ys_1_9_8)
and mappend_d4_d3_d0_d2_d0 xs_9_5 ys_1_4_3 =
  (match xs_9_5 with
    | `LH_C(h_1_3_1, t_1_3_1) -> 
      (let rec h_1_3_2 = h_1_3_1 in
        (let rec t_1_3_2 = ((mappend_d4_d3_d0_d2_d0 t_1_3_1) ys_1_4_3) in
          (fun ys_1_4_4 -> 
            (`LH_C(h_1_3_2, ((mappend_d4_d4_d0_d2_d0 t_1_3_2) ys_1_4_4))))))
    | `LH_N -> 
      ys_1_4_3)
and mappend_d4_d3_d0_d3_d0 xs_1_7_0 ys_2_5_3 =
  (match xs_1_7_0 with
    | `LH_C(h_2_3_4, t_2_3_4) -> 
      (let rec h_2_3_5 = h_2_3_4 in
        (let rec t_2_3_5 = ((mappend_d4_d3_d0_d3_d0 t_2_3_4) ys_2_5_3) in
          (fun ys_2_5_4 -> 
            (`LH_C(h_2_3_5, ((mappend_d4_d4_d0_d3_d0 t_2_3_5) ys_2_5_4))))))
    | `LH_N -> 
      ys_2_5_3)
and mappend_d4_d3_d0_d4_d0 xs_1_5_1 ys_2_2_4 =
  (match xs_1_5_1 with
    | `LH_C(h_2_0_6, t_2_0_6) -> 
      (let rec h_2_0_7 = h_2_0_6 in
        (let rec t_2_0_7 = ((mappend_d4_d3_d0_d4_d0 t_2_0_6) ys_2_2_4) in
          (fun ys_2_2_5 -> 
            (`LH_C(h_2_0_7, ((mappend_d4_d4_d0_d4_d0 t_2_0_7) ys_2_2_5))))))
    | `LH_N -> 
      ys_2_2_4)
and mappend_d4_d3_d0_d5_d0 xs_1_2_6 ys_1_8_5 =
  (match xs_1_2_6 with
    | `LH_C(h_1_7_5, t_1_7_5) -> 
      (let rec h_1_7_6 = h_1_7_5 in
        (let rec t_1_7_6 = ((mappend_d4_d3_d0_d5_d0 t_1_7_5) ys_1_8_5) in
          (fun ys_1_8_6 -> 
            (`LH_C(h_1_7_6, ((mappend_d4_d4_d0_d5_d0 t_1_7_6) ys_1_8_6))))))
    | `LH_N -> 
      ys_1_8_5)
and pressAnyKey_d0_d0_d0_d0 _lh_pressAnyKey_arg1_2 =
  ((readChar_d0_d0_d0_d0 _lh_pressAnyKey_arg1_2) (fun c_1_0 -> 
    _lh_pressAnyKey_arg1_2))
and pressAnyKey_d1_d0_d0_d0 _lh_pressAnyKey_arg1_3 =
  ((readChar_d1_d0_d0_d0 _lh_pressAnyKey_arg1_3) (fun c_1_1 -> 
    _lh_pressAnyKey_arg1_3))
and program_d0_d0_d0_d0 _lh_program_arg1_1 =
  ((writes_d0_d0_d0_d0 (let rec h_1_3_3 = cls_d0_d0_d0_d0 in
    (let rec t_1_3_3 = (let rec h_1_3_4 = ((at_d2_d0_d0_d0 (let rec _lh_at_LH_P2_0_6 = 17 in
      (let rec _lh_at_LH_P2_1_6 = 5 in
        (fun _lh_at_arg2_1_2 -> 
          ((mappend_d8_d0_d0_d0 ((goto_d2_d0_d0_d0 _lh_at_LH_P2_0_6) _lh_at_LH_P2_1_6)) _lh_at_arg2_1_2))))) (highlight_d0_d0_d0_d0 (`LH_C('D', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))) in
      (let rec t_1_3_4 = (let rec h_1_3_5 = ((at_d1_d0_d0_d0 (let rec _lh_at_LH_P2_0_7 = 48 in
        (let rec _lh_at_LH_P2_1_7 = 5 in
          (fun _lh_at_arg2_1_3 -> 
            ((mappend_d5_d0_d0_d0 ((goto_d1_d0_d0_d0 _lh_at_LH_P2_0_7) _lh_at_LH_P2_1_7)) _lh_at_arg2_1_3))))) (`LH_C('V', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('1', (`LH_C('.', (`LH_C('0', (`LH_N)))))))))))))))))))))))) in
        (let rec t_1_3_5 = (let rec h_1_3_6 = ((at_d0_d0_d0_d0 (let rec _lh_at_LH_P2_0_8 = 17 in
          (let rec _lh_at_LH_P2_1_8 = 7 in
            (fun _lh_at_arg2_1_4 -> 
              ((mappend_d2_d0_d0_d0 ((goto_d0_d0_d0_d0 _lh_at_LH_P2_0_8) _lh_at_LH_P2_1_8)) _lh_at_arg2_1_4))))) (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
          (let rec t_1_3_6 = (let rec h_1_3_7 = ((at_d5_d0_d0_d0 (let rec _lh_at_LH_P2_0_9 = 17 in
            (let rec _lh_at_LH_P2_1_9 = 8 in
              (fun _lh_at_arg2_1_5 -> 
                ((mappend_d1_d7_d0_d0_d0 ((goto_d5_d0_d0_d0 _lh_at_LH_P2_0_9) _lh_at_LH_P2_1_9)) _lh_at_arg2_1_5))))) (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C('-', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
            (let rec t_1_3_7 = (let rec h_1_3_8 = ((at_d4_d0_d0_d0 (let rec _lh_at_LH_P2_0_1_0 = 17 in
              (let rec _lh_at_LH_P2_1_1_0 = 9 in
                (fun _lh_at_arg2_1_6 -> 
                  ((mappend_d1_d4_d0_d0_d0 ((goto_d4_d0_d0_d0 _lh_at_LH_P2_0_1_0) _lh_at_LH_P2_1_1_0)) _lh_at_arg2_1_6))))) (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('H', (`LH_C('u', (`LH_C('g', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('s', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
              (let rec t_1_3_8 = (let rec h_1_3_9 = ((at_d3_d0_d0_d0 (let rec _lh_at_LH_P2_0_1_1 = 17 in
                (let rec _lh_at_LH_P2_1_1_1 = 11 in
                  (fun _lh_at_arg2_1_7 -> 
                    ((mappend_d1_d1_d0_d0_d0 ((goto_d3_d0_d0_d0 _lh_at_LH_P2_0_1_1) _lh_at_LH_P2_1_1_1)) _lh_at_arg2_1_7))))) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('k', (`LH_C('e', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
                (let rec t_1_3_9 = (fun ys_1_4_5 -> 
                  ys_1_4_5) in
                  ((mappend_d4_d3_d0_d0_d0 h_1_3_9) (concat_d0_d0_d0_d0 t_1_3_9)))) in
                ((mappend_d4_d3_d0_d1_d0 h_1_3_8) (concat_d0_d0_d1_d0 t_1_3_8)))) in
              ((mappend_d4_d3_d0_d2_d0 h_1_3_7) (concat_d0_d0_d2_d0 t_1_3_7)))) in
            ((mappend_d4_d3_d0_d3_d0 h_1_3_6) (concat_d0_d0_d3_d0 t_1_3_6)))) in
          ((mappend_d4_d3_d0_d4_d0 h_1_3_5) (concat_d0_d0_d4_d0 t_1_3_5)))) in
        ((mappend_d4_d3_d0_d5_d0 h_1_3_4) (concat_d0_d0_d5_d0 t_1_3_4)))) in
      ((mappend_d4_d3_d0_d6_d1 h_1_3_3) (concat_d0_d0_d6_d0 t_1_3_3))))) (pressAnyKey_d0_d0_d0_d0 ((((promptReadAt_d0_d0_d0_d0 (let rec _lh_promptReadAt_LH_P2_0_1 = 17 in
    (let rec _lh_promptReadAt_LH_P2_1_1 = 15 in
      (fun _lh_promptReadAt_arg2_2 _lh_promptReadAt_arg3_2 _lh_promptReadAt_arg4_2 -> 
        (((writeAt_d1_d0_d0_d0 (let rec _lh_writeAt_LH_P2_0_3 = _lh_promptReadAt_LH_P2_0_1 in
          (let rec _lh_writeAt_LH_P2_1_3 = _lh_promptReadAt_LH_P2_1_1 in
            (fun _lh_writeAt_arg2_7 -> 
              (writeString_d5_d0_d0_d0 ((mappend_d3_d6_d0_d0_d0 ((goto_d9_d0_d0_d0 _lh_writeAt_LH_P2_0_3) _lh_writeAt_LH_P2_1_3)) _lh_writeAt_arg2_7)))))) _lh_promptReadAt_arg3_2) (((readAt_d0_d0_d0_d0 (let rec _lh_readAt_LH_P2_0_1 = (_lh_promptReadAt_LH_P2_0_1 + (length_d1_d0_d0_d0 _lh_promptReadAt_arg3_2)) in
          (let rec _lh_readAt_LH_P2_1_1 = _lh_promptReadAt_LH_P2_1_1 in
            (fun _lh_readAt_arg2_3 _lh_readAt_arg3_3 -> 
              (((writeAt_d0_d0_d0_d0 (let rec _lh_writeAt_LH_P2_0_4 = _lh_readAt_LH_P2_0_1 in
                (let rec _lh_writeAt_LH_P2_1_4 = _lh_readAt_LH_P2_1_1 in
                  (fun _lh_writeAt_arg2_8 -> 
                    (writeString_d4_d0_d0_d0 ((mappend_d3_d2_d0_d0_d0 ((goto_d8_d0_d0_d0 _lh_writeAt_LH_P2_0_4) _lh_writeAt_LH_P2_1_4)) _lh_writeAt_arg2_8)))))) ((copy_d1_d0_d0_d0 _lh_readAt_arg2_3) '_')) ((moveTo_d1_d0_d0_d0 (let rec _lh_moveTo_LH_P2_0_2 = _lh_readAt_LH_P2_0_1 in
                (let rec _lh_moveTo_LH_P2_1_2 = _lh_readAt_LH_P2_1_1 in
                  (writeString_d3_d0_d0_d0 ((goto_d7_d0_d0_d0 _lh_moveTo_LH_P2_0_2) _lh_moveTo_LH_P2_1_2))))) ((((loop_d0_d0_d0_d0 0) (`LH_N)) _lh_readAt_arg2_3) _lh_readAt_arg3_3))))))) _lh_promptReadAt_arg2_2) _lh_promptReadAt_arg4_2)))))) 18) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))) (fun name_1 -> 
    (let rec reply_1 = ((mappend_d2_d0_d0_d1_d4_d0 ((mappend_d2_d1_d0_d0_d0 (`LH_C('H', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C('o', (`LH_C(' ', (`LH_N)))))))))))))) name_1)) (`LH_C('!', (`LH_N)))) in
      (((writeAt_d2_d0_d0_d0 (let rec _lh_writeAt_LH_P2_0_5 = (40 - ((length_d0_d0_d0_d0 reply_1) / 2)) in
        (let rec _lh_writeAt_LH_P2_1_5 = 18 in
          (fun _lh_writeAt_arg2_9 -> 
            (writeString_d6_d0_d0_d0 ((mappend_d4_d0_d0_d0_d0 ((goto_d1_d0_d0_d0_d0 _lh_writeAt_LH_P2_0_5) _lh_writeAt_LH_P2_1_5)) _lh_writeAt_arg2_9)))))) reply_1) ((moveTo_d0_d0_d0_d0 (let rec _lh_moveTo_LH_P2_0_3 = 1 in
        (let rec _lh_moveTo_LH_P2_1_3 = 23 in
          (writeString_d0_d0_d0_d0 ((goto_d6_d0_d0_d0 _lh_moveTo_LH_P2_0_3) _lh_moveTo_LH_P2_1_3))))) ((writeString_d7_d0_d0_d0 (`LH_C('I', (`LH_C('m', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_C('`', (`LH_N)))))))))))))))))))))))))))))) (pressAnyKey_d1_d0_d0_d0 end_d0_d0_d0_d0)))))))))
and return_d0_d0_d0_d0 _lh_return_arg1_2_1 _lh_return_arg2_2_1 =
  (_lh_return_arg2_2_1 (reverse_d0_d0_d0_d0 _lh_return_arg1_2_1))
and return_d0_d0_d1_d0 _lh_return_arg1_2_3 _lh_return_arg2_2_3 =
  (_lh_return_arg2_2_3 (reverse_d0_d0_d1_d0 _lh_return_arg1_2_3))
and return_d0_d0_d2_d0 _lh_return_arg1_1_5 _lh_return_arg2_1_5 =
  (_lh_return_arg2_1_5 (reverse_d0_d0_d2_d0 _lh_return_arg1_1_5))
and return_d0_d0_d3_d0 _lh_return_arg1_1_4 _lh_return_arg2_1_4 =
  (_lh_return_arg2_1_4 (reverse_d0_d0_d3_d0 _lh_return_arg1_1_4))
and return_d0_d0_d4_d0 _lh_return_arg1_1_8 _lh_return_arg2_1_8 =
  (_lh_return_arg2_1_8 (reverse_d0_d0_d4_d0 _lh_return_arg1_1_8))
and return_d0_d0_d5_d0 _lh_return_arg1_2_2 _lh_return_arg2_2_2 =
  (_lh_return_arg2_2_2 (reverse_d0_d0_d5_d0 _lh_return_arg1_2_2))
and return_d0_d0_d6_d0 _lh_return_arg1_2_0 _lh_return_arg2_2_0 =
  (_lh_return_arg2_2_0 (reverse_d0_d0_d6_d0 _lh_return_arg1_2_0))
and return_d1_d0_d0_d0 _lh_return_arg1_1_7 _lh_return_arg2_1_7 =
  (_lh_return_arg2_1_7 (reverse_d1_d0_d0_d0 _lh_return_arg1_1_7))
and return_d1_d0_d1_d0 _lh_return_arg1_1_6 _lh_return_arg2_1_6 =
  (_lh_return_arg2_1_6 (reverse_d1_d0_d1_d0 _lh_return_arg1_1_6))
and return_d1_d0_d2_d0 _lh_return_arg1_2_4 _lh_return_arg2_2_4 =
  (_lh_return_arg2_2_4 (reverse_d1_d0_d2_d0 _lh_return_arg1_2_4))
and return_d1_d0_d3_d0 _lh_return_arg1_1_9 _lh_return_arg2_1_9 =
  (_lh_return_arg2_1_9 (reverse_d1_d0_d3_d0 _lh_return_arg1_1_9))
and return_d1_d0_d4_d0 _lh_return_arg1_2_5 _lh_return_arg2_2_5 =
  (_lh_return_arg2_2_5 (reverse_d1_d0_d4_d0 _lh_return_arg1_2_5))
and return_d1_d0_d5_d0 _lh_return_arg1_2_7 _lh_return_arg2_2_7 =
  (_lh_return_arg2_2_7 (reverse_d1_d0_d5_d0 _lh_return_arg1_2_7))
and return_d1_d0_d6_d0 _lh_return_arg1_2_6 _lh_return_arg2_2_6 =
  (_lh_return_arg2_2_6 (reverse_d1_d0_d6_d0 _lh_return_arg1_2_6))
and reverse_helper_d0_d0_d0_d0 ls_8_3 a_2_6 =
  (match ls_8_3 with
    | `LH_C(h_2_2_7, t_2_2_7) -> 
      ((reverse_helper_d0_d0_d0_d0 t_2_2_7) (let rec h_2_2_8 = h_2_2_7 in
        (let rec t_2_2_8 = a_2_6 in
          (fun ys_2_4_8 -> 
            (`LH_C(h_2_2_8, ((mappend_d2_d0_d0_d0_d0 t_2_2_8) ys_2_4_8)))))))
    | `LH_N -> 
      a_2_6)
and reverse_helper_d0_d0_d1_d0 ls_4_8 a_1_6 =
  (match ls_4_8 with
    | `LH_C(h_1_2_7, t_1_2_7) -> 
      ((reverse_helper_d0_d0_d1_d0 t_1_2_7) (let rec h_1_2_8 = h_1_2_7 in
        (let rec t_1_2_8 = a_1_6 in
          (fun ys_1_4_1 -> 
            (`LH_C(h_1_2_8, ((mappend_d2_d0_d0_d2_d0 t_1_2_8) ys_1_4_1)))))))
    | `LH_N -> 
      a_1_6)
and reverse_helper_d0_d0_d2_d0 ls_5_6 a_1_7 =
  (match ls_5_6 with
    | `LH_C(h_1_4_8, t_1_4_8) -> 
      ((reverse_helper_d0_d0_d2_d0 t_1_4_8) (let rec h_1_4_9 = h_1_4_8 in
        (let rec t_1_4_9 = a_1_7 in
          (fun ys_1_5_7 -> 
            (`LH_C(h_1_4_9, ((mappend_d2_d0_d0_d4_d0 t_1_4_9) ys_1_5_7)))))))
    | `LH_N -> 
      a_1_7)
and reverse_helper_d0_d0_d3_d0 ls_6_2 a_1_9 =
  (match ls_6_2 with
    | `LH_C(h_1_6_8, t_1_6_8) -> 
      ((reverse_helper_d0_d0_d3_d0 t_1_6_8) (let rec h_1_6_9 = h_1_6_8 in
        (let rec t_1_6_9 = a_1_9 in
          (fun ys_1_7_9 -> 
            (`LH_C(h_1_6_9, ((mappend_d2_d0_d0_d6_d0 t_1_6_9) ys_1_7_9)))))))
    | `LH_N -> 
      a_1_9)
and reverse_helper_d0_d0_d4_d0 ls_8_1 a_2_5 =
  (match ls_8_1 with
    | `LH_C(h_2_2_1, t_2_2_1) -> 
      ((reverse_helper_d0_d0_d4_d0 t_2_2_1) (let rec h_2_2_2 = h_2_2_1 in
        (let rec t_2_2_2 = a_2_5 in
          (fun ys_2_4_2 -> 
            (`LH_C(h_2_2_2, ((mappend_d2_d0_d0_d8_d0 t_2_2_2) ys_2_4_2)))))))
    | `LH_N -> 
      a_2_5)
and reverse_helper_d0_d0_d5_d0 ls_8_0 a_2_4 =
  (match ls_8_0 with
    | `LH_C(h_2_1_9, t_2_1_9) -> 
      ((reverse_helper_d0_d0_d5_d0 t_2_1_9) (let rec h_2_2_0 = h_2_1_9 in
        (let rec t_2_2_0 = a_2_4 in
          (fun ys_2_4_0 -> 
            (`LH_C(h_2_2_0, ((mappend_d2_d0_d0_d1_d0_d0 t_2_2_0) ys_2_4_0)))))))
    | `LH_N -> 
      a_2_4)
and reverse_helper_d0_d0_d6_d0 ls_6_0 a_1_8 =
  (match ls_6_0 with
    | `LH_C(h_1_5_8, t_1_5_8) -> 
      ((reverse_helper_d0_d0_d6_d0 t_1_5_8) (let rec h_1_5_9 = h_1_5_8 in
        (let rec t_1_5_9 = a_1_8 in
          (fun ys_1_6_7 -> 
            (`LH_C(h_1_5_9, ((mappend_d2_d0_d0_d1_d2_d0 t_1_5_9) ys_1_6_7)))))))
    | `LH_N -> 
      a_1_8)
and reverse_helper_d1_d0_d0_d0 ls_6_9 a_2_0 =
  (match ls_6_9 with
    | `LH_C(h_1_8_6, t_1_8_6) -> 
      ((reverse_helper_d1_d0_d0_d0 t_1_8_6) (let rec h_1_8_7 = h_1_8_6 in
        (let rec t_1_8_7 = a_2_0 in
          (fun ys_2_0_0 -> 
            (`LH_C(h_1_8_7, ((mappend_d2_d0_d0_d1_d0 t_1_8_7) ys_2_0_0)))))))
    | `LH_N -> 
      a_2_0)
and reverse_helper_d1_d0_d1_d0 ls_4_5 a_1_4 =
  (match ls_4_5 with
    | `LH_C(h_1_2_0, t_1_2_0) -> 
      ((reverse_helper_d1_d0_d1_d0 t_1_2_0) (let rec h_1_2_1 = h_1_2_0 in
        (let rec t_1_2_1 = a_1_4 in
          (fun ys_1_3_0 -> 
            (`LH_C(h_1_2_1, ((mappend_d2_d0_d0_d3_d0 t_1_2_1) ys_1_3_0)))))))
    | `LH_N -> 
      a_1_4)
and reverse_helper_d1_d0_d2_d0 ls_7_2 a_2_2 =
  (match ls_7_2 with
    | `LH_C(h_1_9_6, t_1_9_6) -> 
      ((reverse_helper_d1_d0_d2_d0 t_1_9_6) (let rec h_1_9_7 = h_1_9_6 in
        (let rec t_1_9_7 = a_2_2 in
          (fun ys_2_0_8 -> 
            (`LH_C(h_1_9_7, ((mappend_d2_d0_d0_d5_d0 t_1_9_7) ys_2_0_8)))))))
    | `LH_N -> 
      a_2_2)
and reverse_helper_d1_d0_d3_d0 ls_4_7 a_1_5 =
  (match ls_4_7 with
    | `LH_C(h_1_2_4, t_1_2_4) -> 
      ((reverse_helper_d1_d0_d3_d0 t_1_2_4) (let rec h_1_2_5 = h_1_2_4 in
        (let rec t_1_2_5 = a_1_5 in
          (fun ys_1_3_8 -> 
            (`LH_C(h_1_2_5, ((mappend_d2_d0_d0_d7_d0 t_1_2_5) ys_1_3_8)))))))
    | `LH_N -> 
      a_1_5)
and reverse_helper_d1_d0_d4_d0 ls_7_9 a_2_3 =
  (match ls_7_9 with
    | `LH_C(h_2_1_7, t_2_1_7) -> 
      ((reverse_helper_d1_d0_d4_d0 t_2_1_7) (let rec h_2_1_8 = h_2_1_7 in
        (let rec t_2_1_8 = a_2_3 in
          (fun ys_2_3_8 -> 
            (`LH_C(h_2_1_8, ((mappend_d2_d0_d0_d9_d0 t_2_1_8) ys_2_3_8)))))))
    | `LH_N -> 
      a_2_3)
and reverse_helper_d1_d0_d5_d0 ls_8_4 a_2_7 =
  (match ls_8_4 with
    | `LH_C(h_2_2_9, t_2_2_9) -> 
      ((reverse_helper_d1_d0_d5_d0 t_2_2_9) (let rec h_2_3_0 = h_2_2_9 in
        (let rec t_2_3_0 = a_2_7 in
          (fun ys_2_4_9 -> 
            (`LH_C(h_2_3_0, ((mappend_d2_d0_d0_d1_d1_d0 t_2_3_0) ys_2_4_9)))))))
    | `LH_N -> 
      a_2_7)
and reverse_helper_d1_d0_d6_d0 ls_7_0 a_2_1 =
  (match ls_7_0 with
    | `LH_C(h_1_8_9, t_1_8_9) -> 
      ((reverse_helper_d1_d0_d6_d0 t_1_8_9) (let rec h_1_9_0 = h_1_8_9 in
        (let rec t_1_9_0 = a_2_1 in
          (fun ys_2_0_2 -> 
            (`LH_C(h_1_9_0, ((mappend_d2_d0_d0_d1_d3_d0 t_1_9_0) ys_2_0_2)))))))
    | `LH_N -> 
      a_2_1)
and reverse_d0_d0_d0_d0 ls_6_5 =
  ((reverse_helper_d0_d0_d0_d0 ls_6_5) (fun ys_1_9_1 -> 
    ys_1_9_1))
and reverse_d0_d0_d1_d0 ls_4_6 =
  ((reverse_helper_d0_d0_d1_d0 ls_4_6) (fun ys_1_3_1 -> 
    ys_1_3_1))
and reverse_d0_d0_d2_d0 ls_7_5 =
  ((reverse_helper_d0_d0_d2_d0 ls_7_5) (fun ys_2_3_0 -> 
    ys_2_3_0))
and reverse_d0_d0_d3_d0 ls_8_6 =
  ((reverse_helper_d0_d0_d3_d0 ls_8_6) (fun ys_2_5_1 -> 
    ys_2_5_1))
and reverse_d0_d0_d4_d0 ls_7_6 =
  ((reverse_helper_d0_d0_d4_d0 ls_7_6) (fun ys_2_3_3 -> 
    ys_2_3_3))
and reverse_d0_d0_d5_d0 ls_6_8 =
  ((reverse_helper_d0_d0_d5_d0 ls_6_8) (fun ys_1_9_4 -> 
    ys_1_9_4))
and reverse_d0_d0_d6_d0 ls_5_4 =
  ((reverse_helper_d0_d0_d6_d0 ls_5_4) (fun ys_1_4_6 -> 
    ys_1_4_6))
and reverse_d1_d0_d0_d0 ls_7_3 =
  ((reverse_helper_d1_d0_d0_d0 ls_7_3) (fun ys_2_0_9 -> 
    ys_2_0_9))
and reverse_d1_d0_d1_d0 ls_7_4 =
  ((reverse_helper_d1_d0_d1_d0 ls_7_4) (fun ys_2_1_0 -> 
    ys_2_1_0))
and reverse_d1_d0_d2_d0 ls_5_0 =
  ((reverse_helper_d1_d0_d2_d0 ls_5_0) (fun ys_1_4_2 -> 
    ys_1_4_2))
and reverse_d1_d0_d3_d0 ls_4_4 =
  ((reverse_helper_d1_d0_d3_d0 ls_4_4) (fun ys_1_2_8 -> 
    ys_1_2_8))
and reverse_d1_d0_d4_d0 ls_5_5 =
  ((reverse_helper_d1_d0_d4_d0 ls_5_5) (fun ys_1_4_8 -> 
    ys_1_4_8))
and reverse_d1_d0_d5_d0 ls_6_7 =
  ((reverse_helper_d1_d0_d5_d0 ls_6_7) (fun ys_1_9_3 -> 
    ys_1_9_3))
and reverse_d1_d0_d6_d0 ls_8_2 =
  ((reverse_helper_d1_d0_d6_d0 ls_8_2) (fun ys_2_4_6 -> 
    ys_2_4_6))
and ringBell_d0_d0_d0_d0 _lh_ringBell_arg1_2_0 _lh_ringBell_arg2_2_0 =
  (((writeChar_d0_d0_d0_d0 'B') _lh_ringBell_arg1_2_0) _lh_ringBell_arg2_2_0)
and ringBell_d0_d0_d1_d0 _lh_ringBell_arg1_2_1 _lh_ringBell_arg2_2_1 =
  (((writeChar_d0_d0_d1_d0 'B') _lh_ringBell_arg1_2_1) _lh_ringBell_arg2_2_1)
and ringBell_d0_d0_d2_d0 _lh_ringBell_arg1_3_5 _lh_ringBell_arg2_3_5 =
  (((writeChar_d0_d0_d2_d0 'B') _lh_ringBell_arg1_3_5) _lh_ringBell_arg2_3_5)
and ringBell_d0_d0_d3_d0 _lh_ringBell_arg1_2_9 _lh_ringBell_arg2_2_9 =
  (((writeChar_d0_d0_d3_d0 'B') _lh_ringBell_arg1_2_9) _lh_ringBell_arg2_2_9)
and ringBell_d0_d0_d4_d0 _lh_ringBell_arg1_2_5 _lh_ringBell_arg2_2_5 =
  (((writeChar_d0_d0_d4_d0 'B') _lh_ringBell_arg1_2_5) _lh_ringBell_arg2_2_5)
and ringBell_d0_d0_d5_d0 _lh_ringBell_arg1_3_7 _lh_ringBell_arg2_3_7 =
  (((writeChar_d0_d0_d5_d0 'B') _lh_ringBell_arg1_3_7) _lh_ringBell_arg2_3_7)
and ringBell_d0_d0_d6_d0 _lh_ringBell_arg1_2_7 _lh_ringBell_arg2_2_7 =
  (((writeChar_d0_d0_d6_d0 'B') _lh_ringBell_arg1_2_7) _lh_ringBell_arg2_2_7)
and ringBell_d1_d0_d0_d0 _lh_ringBell_arg1_3_1 _lh_ringBell_arg2_3_1 =
  (((writeChar_d1_d0_d0_d0 'B') _lh_ringBell_arg1_3_1) _lh_ringBell_arg2_3_1)
and ringBell_d1_d0_d1_d0 _lh_ringBell_arg1_2_4 _lh_ringBell_arg2_2_4 =
  (((writeChar_d1_d0_d1_d0 'B') _lh_ringBell_arg1_2_4) _lh_ringBell_arg2_2_4)
and ringBell_d1_d0_d2_d0 _lh_ringBell_arg1_3_0 _lh_ringBell_arg2_3_0 =
  (((writeChar_d1_d0_d2_d0 'B') _lh_ringBell_arg1_3_0) _lh_ringBell_arg2_3_0)
and ringBell_d1_d0_d3_d0 _lh_ringBell_arg1_1_9 _lh_ringBell_arg2_1_9 =
  (((writeChar_d1_d0_d3_d0 'B') _lh_ringBell_arg1_1_9) _lh_ringBell_arg2_1_9)
and ringBell_d1_d0_d4_d0 _lh_ringBell_arg1_3_6 _lh_ringBell_arg2_3_6 =
  (((writeChar_d1_d0_d4_d0 'B') _lh_ringBell_arg1_3_6) _lh_ringBell_arg2_3_6)
and ringBell_d2_d0_d0_d0 _lh_ringBell_arg1_2_2 _lh_ringBell_arg2_2_2 =
  (((writeChar_d2_d0_d0_d0 'B') _lh_ringBell_arg1_2_2) _lh_ringBell_arg2_2_2)
and ringBell_d2_d0_d1_d0 _lh_ringBell_arg1_2_3 _lh_ringBell_arg2_2_3 =
  (((writeChar_d2_d0_d1_d0 'B') _lh_ringBell_arg1_2_3) _lh_ringBell_arg2_2_3)
and ringBell_d2_d0_d2_d0 _lh_ringBell_arg1_3_3 _lh_ringBell_arg2_3_3 =
  (((writeChar_d2_d0_d2_d0 'B') _lh_ringBell_arg1_3_3) _lh_ringBell_arg2_3_3)
and ringBell_d2_d0_d3_d0 _lh_ringBell_arg1_2_8 _lh_ringBell_arg2_2_8 =
  (((writeChar_d2_d0_d3_d0 'B') _lh_ringBell_arg1_2_8) _lh_ringBell_arg2_2_8)
and ringBell_d2_d0_d4_d0 _lh_ringBell_arg1_3_2 _lh_ringBell_arg2_3_2 =
  (((writeChar_d2_d0_d4_d0 'B') _lh_ringBell_arg1_3_2) _lh_ringBell_arg2_3_2)
and ringBell_d2_d0_d5_d0 _lh_ringBell_arg1_3_4 _lh_ringBell_arg2_3_4 =
  (((writeChar_d2_d0_d5_d0 'B') _lh_ringBell_arg1_3_4) _lh_ringBell_arg2_3_4)
and ringBell_d2_d0_d6_d0 _lh_ringBell_arg1_2_6 _lh_ringBell_arg2_2_6 =
  (((writeChar_d2_d0_d6_d0 'B') _lh_ringBell_arg1_2_6) _lh_ringBell_arg2_2_6)
and testAnsi_nofib_d0_d0_d0_d0 _lh_testAnsi_nofib_arg1_1 =
  ((((foldr_d0_d0_d1_d0 (fun f_5 g_1 _lh_funcomp_x_1 -> 
    (f_5 (g_1 _lh_funcomp_x_1)))) (fun x_1 -> 
    x_1)) ((copy_d0_d0_d0_d0 _lh_testAnsi_nofib_arg1_1) (program_d0_d0_d0_d0 0))) (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))))))))))))))))
and writeString_d0_d0_d0_d0 _lh_writeString_arg1_2_8 _lh_writeString_arg2_2_8 _lh_writeString_arg3_2_8 =
  ((mappend_d2_d4_d0_d0_d0 _lh_writeString_arg1_2_8) (_lh_writeString_arg2_2_8 _lh_writeString_arg3_2_8))
and writeString_d1_d0_d0_d0 _lh_writeString_arg1_3_4 _lh_writeString_arg2_3_4 _lh_writeString_arg3_3_4 =
  ((mappend_d2_d5_d0_d0_d0 _lh_writeString_arg1_3_4) (_lh_writeString_arg2_3_4 _lh_writeString_arg3_3_4))
and writeString_d1_d0_d1_d0 _lh_writeString_arg1_2_3 _lh_writeString_arg2_2_3 _lh_writeString_arg3_2_3 =
  ((mappend_d2_d5_d0_d1_d0 _lh_writeString_arg1_2_3) (_lh_writeString_arg2_2_3 _lh_writeString_arg3_2_3))
and writeString_d1_d0_d2_d0 _lh_writeString_arg1_3_0 _lh_writeString_arg2_3_0 _lh_writeString_arg3_3_0 =
  ((mappend_d2_d5_d0_d2_d0 _lh_writeString_arg1_3_0) (_lh_writeString_arg2_3_0 _lh_writeString_arg3_3_0))
and writeString_d1_d0_d3_d0 _lh_writeString_arg1_2_4 _lh_writeString_arg2_2_4 _lh_writeString_arg3_2_4 =
  ((mappend_d2_d5_d0_d3_d0 _lh_writeString_arg1_2_4) (_lh_writeString_arg2_2_4 _lh_writeString_arg3_2_4))
and writeString_d1_d0_d4_d0 _lh_writeString_arg1_3_6 _lh_writeString_arg2_3_6 _lh_writeString_arg3_3_6 =
  ((mappend_d2_d5_d0_d4_d0 _lh_writeString_arg1_3_6) (_lh_writeString_arg2_3_6 _lh_writeString_arg3_3_6))
and writeString_d1_d0_d5_d0 _lh_writeString_arg1_2_6 _lh_writeString_arg2_2_6 _lh_writeString_arg3_2_6 =
  ((mappend_d2_d5_d0_d5_d0 _lh_writeString_arg1_2_6) (_lh_writeString_arg2_2_6 _lh_writeString_arg3_2_6))
and writeString_d1_d0_d6_d0 _lh_writeString_arg1_2_1 _lh_writeString_arg2_2_1 _lh_writeString_arg3_2_1 =
  ((mappend_d2_d5_d0_d6_d0 _lh_writeString_arg1_2_1) (_lh_writeString_arg2_2_1 _lh_writeString_arg3_2_1))
and writeString_d2_d0_d0_d0 _lh_writeString_arg1_2_2 _lh_writeString_arg2_2_2 _lh_writeString_arg3_2_2 =
  ((mappend_d2_d6_d0_d0_d0 _lh_writeString_arg1_2_2) (_lh_writeString_arg2_2_2 _lh_writeString_arg3_2_2))
and writeString_d2_d0_d1_d0 _lh_writeString_arg1_2_7 _lh_writeString_arg2_2_7 _lh_writeString_arg3_2_7 =
  ((mappend_d2_d6_d0_d1_d0 _lh_writeString_arg1_2_7) (_lh_writeString_arg2_2_7 _lh_writeString_arg3_2_7))
and writeString_d2_d0_d2_d0 _lh_writeString_arg1_3_3 _lh_writeString_arg2_3_3 _lh_writeString_arg3_3_3 =
  ((mappend_d2_d6_d0_d2_d0 _lh_writeString_arg1_3_3) (_lh_writeString_arg2_3_3 _lh_writeString_arg3_3_3))
and writeString_d2_d0_d3_d0 _lh_writeString_arg1_3_7 _lh_writeString_arg2_3_7 _lh_writeString_arg3_3_7 =
  ((mappend_d2_d6_d0_d3_d0 _lh_writeString_arg1_3_7) (_lh_writeString_arg2_3_7 _lh_writeString_arg3_3_7))
and writeString_d2_d0_d4_d0 _lh_writeString_arg1_2_0 _lh_writeString_arg2_2_0 _lh_writeString_arg3_2_0 =
  ((mappend_d2_d6_d0_d4_d0 _lh_writeString_arg1_2_0) (_lh_writeString_arg2_2_0 _lh_writeString_arg3_2_0))
and writeString_d3_d0_d0_d0 _lh_writeString_arg1_2_5 _lh_writeString_arg2_2_5 _lh_writeString_arg3_2_5 =
  ((mappend_d2_d9_d0_d0_d0 _lh_writeString_arg1_2_5) (_lh_writeString_arg2_2_5 _lh_writeString_arg3_2_5))
and writeString_d4_d0_d0_d0 _lh_writeString_arg1_3_1 _lh_writeString_arg2_3_1 _lh_writeString_arg3_3_1 =
  ((mappend_d3_d3_d0_d2_d0 _lh_writeString_arg1_3_1) (_lh_writeString_arg2_3_1 _lh_writeString_arg3_3_1))
and writeString_d5_d0_d0_d0 _lh_writeString_arg1_3_2 _lh_writeString_arg2_3_2 _lh_writeString_arg3_3_2 =
  ((mappend_d3_d7_d0_d0_d0 _lh_writeString_arg1_3_2) (_lh_writeString_arg2_3_2 _lh_writeString_arg3_3_2))
and writeString_d6_d0_d0_d0 _lh_writeString_arg1_2_9 _lh_writeString_arg2_2_9 _lh_writeString_arg3_2_9 =
  ((mappend_d4_d1_d0_d0_d0 _lh_writeString_arg1_2_9) (_lh_writeString_arg2_2_9 _lh_writeString_arg3_2_9))
and writeString_d7_d0_d0_d0 _lh_writeString_arg1_1_9 _lh_writeString_arg2_1_9 _lh_writeString_arg3_1_9 =
  ((mappend_d4_d2_d0_d0_d0 _lh_writeString_arg1_1_9) (_lh_writeString_arg2_1_9 _lh_writeString_arg3_1_9))
and writeString_d8_d0_d0_d0 _lh_writeString_arg1_3_5 _lh_writeString_arg2_3_5 _lh_writeString_arg3_3_5 =
  ((mappend_d4_d4_d0_d7_d0 _lh_writeString_arg1_3_5) (_lh_writeString_arg2_3_5 _lh_writeString_arg3_3_5))
and writes_d0_d0_d0_d0 _lh_writes_arg1_1 =
  (writeString_d8_d0_d0_d0 (concat_d0_d0_d7_d0 _lh_writes_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Ansi_nofib" (fun () -> ignore ((testAnsi_nofib_d0 8)));
  Bench.Test.create ~name:"lumberhack_Ansi_nofib" (fun () -> ignore ((testAnsi_nofib_d0_d0_d0 8)));
  Bench.Test.create ~name:"lumberhack_pop_out_Ansi_nofib" (fun () -> ignore ((testAnsi_nofib_d0_d0_d0_d0 8)));
])
