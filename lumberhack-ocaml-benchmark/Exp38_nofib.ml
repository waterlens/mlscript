(*
touch ./Exp38_nofib.mli && ocamlc ./Exp38_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Exp38_nofib.ml -o "./Exp38_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Exp38_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec fromInteger_d0 _lh_fromInteger_arg1_1 =
  (if (_lh_fromInteger_arg1_1 < 1) then
    (`Z)
  else
    (`S((fromInteger_d0 (_lh_fromInteger_arg1_1 - 1)))));;
let rec fromInteger_d1 _lh_fromInteger_arg1_2 =
  (if (_lh_fromInteger_arg1_2 < 1) then
    (`Z)
  else
    (`S((fromInteger_d1 (_lh_fromInteger_arg1_2 - 1)))));;
let rec int_d0 _lh_int_arg1_1 =
  (match _lh_int_arg1_1 with
    | `Z -> 
      0
    | `S(_lh_int_S_0_1) -> 
      (1 + (int_d0 _lh_int_S_0_1))
    | _ -> 
      (failwith "error"));;
let rec natPlus_d0 _lh_natPlus_arg1_1 _lh_natPlus_arg2_1 =
  (match _lh_natPlus_arg1_1 with
    | `Z -> 
      _lh_natPlus_arg2_1
    | `S(_lh_natPlus_S_0_1) -> 
      (`S(((natPlus_d0 _lh_natPlus_S_0_1) _lh_natPlus_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec natMult_d0 _lh_natMult_arg1_1 _lh_natMult_arg2_1 =
  (match _lh_natMult_arg2_1 with
    | `Z -> 
      (`Z)
    | `S(_lh_natMult_S_0_1) -> 
      ((natPlus_d0 ((natMult_d0 _lh_natMult_arg1_1) _lh_natMult_S_0_1)) _lh_natMult_arg1_1)
    | _ -> 
      (failwith "error"))
and p_d0 _lh_p_arg1_1 _lh_p_arg2_1 =
  (match _lh_p_arg2_1 with
    | `Z -> 
      (`S((`Z)))
    | `S(_lh_p_S_0_1) -> 
      ((natMult_d0 _lh_p_arg1_1) ((p_d0 _lh_p_arg1_1) _lh_p_S_0_1))
    | _ -> 
      (failwith "error"))
and testExp38_nofib_d0 _lh_testExp38_nofib_arg1_1 =
  (int_d0 ((p_d0 (fromInteger_d0 3)) (fromInteger_d1 _lh_testExp38_nofib_arg1_1)));;

(* lumberhack *)
let rec fromInteger_d0_d0 _lh_fromInteger_arg1_1 =
  (if (_lh_fromInteger_arg1_1 < 1) then
    (`Z)
  else
    (`S((fromInteger_d0_d0 (_lh_fromInteger_arg1_1 - 1)))));;
let rec int_d0_d0 _lh_int_arg1_0 =
  (match _lh_int_arg1_0 with
    | `Z -> 
      0
    | `S(_lh_int_S_0_0) -> 
      (1 + (int_d0_d0 _lh_int_S_0_0))
    | _ -> 
      (failwith "error"));;
let rec natPlus_d0_d0 _lh_natPlus_arg1_0 _lh_natPlus_arg2_0 =
  (match _lh_natPlus_arg1_0 with
    | `Z -> 
      _lh_natPlus_arg2_0
    | `S(_lh_natPlus_S_0_0) -> 
      (`S(((natPlus_d0_d0 _lh_natPlus_S_0_0) _lh_natPlus_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec p_d0_d0 _lh_p_arg1_2 _lh_p_arg2_0 =
  (_lh_p_arg2_0 _lh_p_arg1_2);;
let rec fromInteger_d1_d0 _lh_fromInteger_arg1_0 =
  (if (_lh_fromInteger_arg1_0 < 1) then
    (fun _lh_p_arg1_0 -> 
      (`S((`Z))))
  else
    (let rec _lh_p_S_0_0 = (lazy (fromInteger_d1_d0 (_lh_fromInteger_arg1_0 - 1))) in
      (fun _lh_p_arg1_1 -> 
        ((natMult_d0_d0 _lh_p_arg1_1) ((p_d0_d0 _lh_p_arg1_1) (Lazy.force _lh_p_S_0_0))))))
and natMult_d0_d0 _lh_natMult_arg1_0 _lh_natMult_arg2_0 =
  (match _lh_natMult_arg2_0 with
    | `Z -> 
      (`Z)
    | `S(_lh_natMult_S_0_0) -> 
      ((natPlus_d0_d0 ((natMult_d0_d0 _lh_natMult_arg1_0) _lh_natMult_S_0_0)) _lh_natMult_arg1_0)
    | _ -> 
      (failwith "error"))
and testExp38_nofib_d0_d0 _lh_testExp38_nofib_arg1_0 =
  (int_d0_d0 ((p_d0_d0 (fromInteger_d0_d0 3)) (fromInteger_d1_d0 _lh_testExp38_nofib_arg1_0)));;

(* lumberhack_pop_out *)
let rec fromInteger_d0_d0_d0 _lh_fromInteger_arg1_2 =
  (if (_lh_fromInteger_arg1_2 < 1) then
    (`Z)
  else
    (`S((fromInteger_d0_d0_d0 (_lh_fromInteger_arg1_2 - 1)))));;
let rec int_d0_d0_d0 _lh_int_arg1_1 =
  (match _lh_int_arg1_1 with
    | `Z -> 
      0
    | `S(_lh_int_S_0_1) -> 
      (1 + (int_d0_d0_d0 _lh_int_S_0_1))
    | _ -> 
      (failwith "error"));;
let rec natPlus_d0_d0_d0 _lh_natPlus_arg1_1 _lh_natPlus_arg2_1 =
  (match _lh_natPlus_arg1_1 with
    | `Z -> 
      _lh_natPlus_arg2_1
    | `S(_lh_natPlus_S_0_1) -> 
      (`S(((natPlus_d0_d0_d0 _lh_natPlus_S_0_1) _lh_natPlus_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec p_d0_d0_d0 _lh_p_arg1_6 _lh_p_arg2_2 =
  (_lh_p_arg2_2 _lh_p_arg1_6);;
let rec p_d0_d0_d1 _lh_p_arg1_5 _lh_p_arg2_1 =
  (_lh_p_arg2_1 _lh_p_arg1_5);;
let rec fromInteger_d1_d0_d0 _lh_fromInteger_arg1_3 _lh_popOutId_0_0 =
  (if (_lh_fromInteger_arg1_3 < 1) then
    (`S((`Z)))
  else
    (let rec _lh_p_S_0_1 = (lazy (fromInteger_d1_d0_d0 (_lh_fromInteger_arg1_3 - 1))) in
      ((natMult_d0_d0_d0 _lh_popOutId_0_0) ((p_d0_d0_d0 _lh_popOutId_0_0) (Lazy.force _lh_p_S_0_1)))))
and natMult_d0_d0_d0 _lh_natMult_arg1_1 _lh_natMult_arg2_1 =
  (match _lh_natMult_arg2_1 with
    | `Z -> 
      (`Z)
    | `S(_lh_natMult_S_0_1) -> 
      ((natPlus_d0_d0_d0 ((natMult_d0_d0_d0 _lh_natMult_arg1_1) _lh_natMult_S_0_1)) _lh_natMult_arg1_1)
    | _ -> 
      (failwith "error"))
and testExp38_nofib_d0_d0_d0 _lh_testExp38_nofib_arg1_1 =
  (int_d0_d0_d0 ((p_d0_d0_d1 (fromInteger_d0_d0_d0 3)) (fromInteger_d1_d0_d0 _lh_testExp38_nofib_arg1_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Exp38_nofib" (fun () -> ignore ((testExp38_nofib_d0 8)));
  Bench.Test.create ~name:"lumberhack_Exp38_nofib" (fun () -> ignore ((testExp38_nofib_d0_d0 8)));
  Bench.Test.create ~name:"lumberhack_pop_out_Exp38_nofib" (fun () -> ignore ((testExp38_nofib_d0_d0_d0 8)));
])
