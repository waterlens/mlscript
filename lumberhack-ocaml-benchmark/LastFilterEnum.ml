(*
ocamlfind ocamlopt -rectypes -thread -O3 ./LastFilterEnum.ml -o "./LastFilterEnum.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilterEnum.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec filter_d0 ls_2 f_2 =
  (ls_2 f_2);;
let rec last_d0 a_1 ls_1 =
  (match ls_1 with
    | `N -> 
      a_1
    | `C(h_2, t_2) -> 
      ((last_d0 h_2) t_2));;
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec h_0 = a_0 in
      (let rec t_0 = ((enumFromTo_d0 (a_0 + 1)) b_0) in
        (fun f_0 -> 
          (if (f_0 h_0) then
            (`C(h_0, ((filter_d0 t_0) f_0)))
          else
            ((filter_d0 t_0) f_0)))))
  else
    (fun f_1 -> 
      (`N)))
and lastDrive_d0 ls_0 =
  (match ls_0 with
    | `C(h_1, t_1) -> 
      (`Some(((last_d0 h_1) t_1)))
    | `N -> 
      (`None))
and testLastFilterEnum_d0 n_0 =
  (lastDrive_d0 ((filter_d0 ((enumFromTo_d0 1) n_0)) (fun x_0 -> 
    (x_0 < 1000))));;

(* lumberhack_pop_out *)
let rec filter_d0_d0 ls_7 f_5 =
  (ls_7 f_5);;
let rec filter_d0_d1 ls_5 f_3 =
  (ls_5 f_3);;
let rec filter_d0_d2 ls_6 f_4 =
  (ls_6 f_4);;
let rec last_d0_d0 a_2 ls_4 =
  (match ls_4 with
    | `N -> 
      a_2
    | `C(h_4, t_4) -> 
      ((last_d0_d0 h_4) t_4));;
let rec enumFromTo_d0_d0 a_3 b_1 _lh_popOutId_0_0 =
  (if (a_3 <= b_1) then
    (let rec h_5 = a_3 in
      (let rec t_5 = ((enumFromTo_d0_d0 (a_3 + 1)) b_1) in
        (if (_lh_popOutId_0_0 h_5) then
          (`C(h_5, ((filter_d0_d0 t_5) _lh_popOutId_0_0)))
        else
          ((filter_d0_d1 t_5) _lh_popOutId_0_0))))
  else
    (`N))
and lastDrive_d0_d0 ls_3 =
  (match ls_3 with
    | `C(h_3, t_3) -> 
      (`Some(((last_d0_d0 h_3) t_3)))
    | `N -> 
      (`None))
and testLastFilterEnum_d0_d0 n_1 =
  (lastDrive_d0_d0 ((filter_d0_d2 ((enumFromTo_d0_d0 1) n_1)) (fun x_1 -> 
    (x_1 < 1000))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_LastFilterEnum" (fun () -> ignore ((testLastFilterEnum 500000)));
  Bench.Test.create ~name:"lumberhack_LastFilterEnum" (fun () -> ignore ((testLastFilterEnum_d0 500000)));
  Bench.Test.create ~name:"lumberhack_pop_out_LastFilterEnum" (fun () -> ignore ((testLastFilterEnum_d0_d0 500000)));
])
