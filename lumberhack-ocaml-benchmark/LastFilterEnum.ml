(*
touch ./LastFilterEnum.mli && ocamlc ./LastFilterEnum.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./LastFilterEnum.ml -o "./LastFilterEnum.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilterEnum.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec filter ls_0 f_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (`C(h_0, ((filter t_0) f_0)))
      else
        ((filter t_0) f_0))
    | `N -> 
      (`N));;
let rec last a_1 ls_2 =
  (match ls_2 with
    | `N -> 
      a_1
    | `C(h_2, t_2) -> 
      ((last h_2) t_2));;
let rec lastDrive ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (`Some(((last h_1) t_1)))
    | `N -> 
      (`None))
and testLastFilterEnum n_0 =
  (lastDrive ((filter ((enumFromTo 1) n_0)) (fun x_0 -> 
    (x_0 < 1000))));;

(* lumberhack *)
let rec filter__d0 ls_1 f_0 =
  (ls_1 f_0);;
let rec last__d0 a_0 ls_2 =
  (match ls_2 with
    | `N -> 
      a_0
    | `C(h_1, t_1) -> 
      ((last__d0 h_1) t_1));;
let rec enumFromTo__d0 a_1 b_0 =
  (if (a_1 <= b_0) then
    (let rec t_2 = ((enumFromTo__d0 (a_1 + 1)) b_0) in
      (let rec h_2 = a_1 in
        (fun f_1 -> 
          (if (f_1 h_2) then
            (`C(h_2, ((filter__d0 t_2) f_1)))
          else
            ((filter__d0 t_2) f_1)))))
  else
    (fun f_2 -> 
      (`N)))
and lastDrive__d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`Some(((last__d0 h_0) t_0)))
    | `N -> 
      (`None))
and testLastFilterEnum__d0 n_0 =
  (lastDrive__d0 ((filter__d0 ((enumFromTo__d0 1) n_0)) (fun x_0 -> 
    (x_0 < 1000))));;

(* lumberhack_pop_out *)
let rec filter__d0__d0 ls_5 f_6 =
  (ls_5 f_6);;
let rec filter__d0__d1 ls_3 f_3 =
  (ls_3 f_3);;
let rec filter__d0__d2 ls_7 f_7 =
  (ls_7 f_7);;
let rec last__d0__d0 a_3 ls_4 =
  (match ls_4 with
    | `N -> 
      a_3
    | `C(h_4, t_4) -> 
      ((last__d0__d0 h_4) t_4));;
let rec enumFromTo__d0__d0 a_2 b_1 _lh_popOutId_0_0 =
  (if (a_2 <= b_1) then
    (let rec t_3 = ((enumFromTo__d0__d0 (a_2 + 1)) b_1) in
      (let rec h_3 = a_2 in
        (if (_lh_popOutId_0_0 h_3) then
          (`C(h_3, ((filter__d0__d0 t_3) _lh_popOutId_0_0)))
        else
          ((filter__d0__d1 t_3) _lh_popOutId_0_0))))
  else
    (`N))
and lastDrive__d0__d0 ls_6 =
  (match ls_6 with
    | `C(h_5, t_5) -> 
      (`Some(((last__d0__d0 h_5) t_5)))
    | `N -> 
      (`None))
and testLastFilterEnum__d0__d0 n_1 =
  (lastDrive__d0__d0 ((filter__d0__d2 ((enumFromTo__d0__d0 1) n_1)) (fun x_1 -> 
    (x_1 < 1000))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_LastFilterEnum" (fun () -> ignore ((testLastFilterEnum 500000)));
  Bench.Test.create ~name:"lumberhack_LastFilterEnum" (fun () -> ignore ((testLastFilterEnum__d0 500000)));
  Bench.Test.create ~name:"lumberhack_pop_out_LastFilterEnum" (fun () -> ignore ((testLastFilterEnum__d0__d0 500000)));
])
