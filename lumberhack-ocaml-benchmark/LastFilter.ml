(*
ocamlfind ocamlopt -rectypes -thread -O3 ./LastFilter.ml -o "./LastFilter.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilter.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

type ('t0, 't1, 't2) lh_bigadt = C of 't0 * 't1 | Some of 't2 | None  | N ;;

(* original *)
let rec _lhManualLastFilter ls_4 f_1 a_2 =
  (match ls_4 with
    | C(h_3, t_3) -> 
      (if (f_1 h_3) then
        (((_lhManualLastFilter t_3) f_1) (Some(h_3)))
      else
        (((_lhManualLastFilter t_3) f_1) a_2))
    | N -> 
      a_2)
and enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (N))
and filter ls_0 f_0 =
  (match ls_0 with
    | C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (C(h_0, ((filter t_0) f_0)))
      else
        ((filter t_0) f_0))
    | N -> 
      (N))
and last a_1 ls_2 =
  (match ls_2 with
    | N -> 
      a_1
    | C(h_2, t_2) -> 
      ((last h_2) t_2))
and lastDrive ls_1 =
  (match ls_1 with
    | C(h_1, t_1) -> 
      (Some(((last h_1) t_1)))
    | N -> 
      (None))
and testLastFilter ls_3 =
  (lastDrive ((filter ls_3) (fun x_0 -> 
    (x_0 < 1000))))
and testManual ls_5 =
  (((_lhManualLastFilter ls_5) (fun x_1 -> 
    (x_1 < 1000))) (None));;

(* lumberhack *)
let rec enumFromTo_d0 a_4 b_0 =
  (if (a_4 <= b_0) then
    (C(a_4, ((enumFromTo_d0 (a_4 + 1)) b_0)))
  else
    (N))
and enumFromTo_d1 a_5 b_1 =
  (if (a_5 <= b_1) then
    (C(a_5, ((enumFromTo_d1 (a_5 + 1)) b_1)))
  else
    (N))
and filter_d0 ls_4 f_1 =
  (match ls_4 with
    | C(h_2, t_2) -> 
      (if (f_1 h_2) then
        (let rec h_3 = h_2 in
          (let rec t_3 = ((filter_d1 t_2) f_1) in
            (Some(((last_d0 h_3) t_3)))))
      else
        ((filter_d0 t_2) f_1))
    | N -> 
      (None))
and filter_d1 ls_1 f_0 =
  (match ls_1 with
    | C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (let rec h_1 = h_0 in
          (let rec t_1 = ((filter_d1 t_0) f_0) in
            (fun a_0 -> 
              ((last_d0 h_1) t_1))))
      else
        ((filter_d1 t_0) f_0))
    | N -> 
      (fun a_1 -> 
        a_1))
and lastDrive_d0 ls_0 =
  ls_0
and last_d0 a_2 ls_2 =
  (ls_2 a_2)
and testLastFilter_d0 ls_3 =
  (lastDrive_d0 ((filter_d0 ls_3) (fun x_0 -> 
    (x_0 < 1000))));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_1_0 b_3 =
  (if (a_1_0 <= b_3) then
    (C(a_1_0, ((enumFromTo_d0_d0 (a_1_0 + 1)) b_3)))
  else
    (N))
and enumFromTo_d1_d0 a_8 b_2 =
  (if (a_8 <= b_2) then
    (C(a_8, ((enumFromTo_d1_d0 (a_8 + 1)) b_2)))
  else
    (N))
and filter_d0_d0 ls_1_2 f_5 =
  (match ls_1_2 with
    | C(h_7, t_7) -> 
      (if (f_5 h_7) then
        (let rec h_8 = h_7 in
          (let rec t_8 = ((filter_d1_d0 t_7) f_5) in
            (Some(((last_d0_d1 h_8) t_8)))))
      else
        ((filter_d0_d0 t_7) f_5))
    | N -> 
      (None))
and filter_d1_d0 ls_1_4 f_6 =
  (match ls_1_4 with
    | C(h_9, t_9) -> 
      (if (f_6 h_9) then
        (let rec h_1_0 = h_9 in
          (let rec t_1_0 = ((filter_d1_d0 t_9) f_6) in
            (fun a_1_2 -> 
              ((last_d0_d0 h_1_0) t_1_0))))
      else
        ((filter_d1_d0 t_9) f_6))
    | N -> 
      (fun a_1_3 -> 
        a_1_3))
and lastDrive_d0_d0 ls_1_5 =
  ls_1_5
and last_d0_d0 a_7 ls_9 =
  (ls_9 a_7)
and last_d0_d1 a_1_1 ls_1_1 =
  (ls_1_1 a_1_1)
and testLastFilter_d0_d0 ls_8 =
  (lastDrive_d0_d0 ((filter_d0_d0 ls_8) (fun x_2 -> 
    (x_2 < 1000))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_LastFilter" (fun () -> ignore ((testLastFilter ((enumFromTo 1) 500000))));
  Bench.Test.create ~name:"manual_LastFilter" (fun () -> ignore ((testManual ((enumFromTo 1) 500000))));
  Bench.Test.create ~name:"lumberhack_LastFilter" (fun () -> ignore ((testLastFilter_d0 ((enumFromTo_d0 1) 500000))));
  Bench.Test.create ~name:"lumberhack_pop_out_LastFilter" (fun () -> ignore ((testLastFilter_d0_d0 ((enumFromTo_d0_d0 1) 500000))));
])
