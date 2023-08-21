(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./LastFilter.ml -o "./LastFilter.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilter.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec _lhManualLastFilter ls_5 f_2 a_3 =
  (match ls_5 with
    | `C(h_4, t_4) -> 
      (if (f_2 h_4) then
        (((_lhManualLastFilter t_4) f_2) h_4)
      else
        (((_lhManualLastFilter t_4) f_2) a_3))
    | `N -> 
      a_3);;
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
let rec _lhManualLastFilterDrive ls_4 f_1 =
  (match ls_4 with
    | `C(h_3, t_3) -> 
      (if (f_1 h_3) then
        (let rec a_2 = (((_lhManualLastFilter t_3) f_1) h_3) in
          (`Some(a_2)))
      else
        ((_lhManualLastFilterDrive t_3) f_1))
    | `N -> 
      (`None))
and lastDrive ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (`Some(((last h_1) t_1)))
    | `N -> 
      (`None))
and testLastFilter ls_3 =
  (lastDrive ((filter ls_3) (fun x_0 -> 
    (x_0 < 1000))))
and testManual ls_6 =
  ((_lhManualLastFilterDrive ls_6) (fun x_1 -> 
    (x_1 < 1000)));;

(* lumberhack *)
let rec enumFromTo_d0 a_6 b_1 =
  (if (a_6 <= b_1) then
    (`C(a_6, ((enumFromTo_d0 (a_6 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo_d1 a_3 b_0 =
  (if (a_3 <= b_0) then
    (`C(a_3, ((enumFromTo_d1 (a_3 + 1)) b_0)))
  else
    (`N));;
let rec lastDrive_d0 ls_0 =
  ls_0;;
let rec last_d0 a_2 ls_2 =
  (ls_2 a_2);;
let rec filter_d0 ls_5 f_2 =
  (match ls_5 with
    | `C(h_3, t_3) -> 
      (if (f_2 h_3) then
        (let rec h_4 = (lazy h_3) in
          (let rec t_4 = (lazy ((filter_d1 t_3) f_2)) in
            (`Some(((last_d0 (Lazy.force h_4)) (Lazy.force t_4))))))
      else
        ((filter_d0 t_3) f_2))
    | `N -> 
      (`None))
and filter_d1 ls_1 f_0 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (let rec h_1 = (lazy h_0) in
          (let rec t_1 = (lazy ((filter_d1 t_0) f_0)) in
            (fun a_0 -> 
              ((last_d0 (Lazy.force h_1)) (Lazy.force t_1)))))
      else
        ((filter_d1 t_0) f_0))
    | `N -> 
      (fun a_1 -> 
        a_1))
and testLastFilter_d0 ls_3 =
  (lastDrive_d0 ((filter_d0 ls_3) (fun x_0 -> 
    (x_0 < 1000))));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_7 b_2 =
  (if (a_7 <= b_2) then
    (`C(a_7, ((enumFromTo_d0_d0 (a_7 + 1)) b_2)))
  else
    (`N));;
let rec enumFromTo_d1_d0 a_1_1 b_3 =
  (if (a_1_1 <= b_3) then
    (`C(a_1_1, ((enumFromTo_d1_d0 (a_1_1 + 1)) b_3)))
  else
    (`N));;
let rec lastDrive_d0_d0 ls_1_2 =
  ls_1_2;;
let rec last_d0_d0 a_1_3 ls_1_4 =
  (ls_1_4 a_1_3);;
let rec last_d0_d1 a_8 ls_8 =
  (ls_8 a_8);;
let rec filter_d0_d0 ls_1_6 f_7 =
  (match ls_1_6 with
    | `C(h_1_0, t_1_0) -> 
      (if (f_7 h_1_0) then
        (let rec h_1_1 = (lazy h_1_0) in
          (let rec t_1_1 = (lazy ((filter_d1_d0 t_1_0) f_7)) in
            (`Some(((last_d0_d1 (Lazy.force h_1_1)) (Lazy.force t_1_1))))))
      else
        ((filter_d0_d0 t_1_0) f_7))
    | `N -> 
      (`None))
and filter_d1_d0 ls_9 f_4 =
  (match ls_9 with
    | `C(h_6, t_6) -> 
      (if (f_4 h_6) then
        (let rec h_7 = (lazy h_6) in
          (let rec t_7 = (lazy ((filter_d1_d0 t_6) f_4)) in
            (fun a_9 -> 
              ((last_d0_d0 (Lazy.force h_7)) (Lazy.force t_7)))))
      else
        ((filter_d1_d0 t_6) f_4))
    | `N -> 
      (fun a_1_0 -> 
        a_1_0))
and testLastFilter_d0_d0 ls_1_1 =
  (lastDrive_d0_d0 ((filter_d0_d0 ls_1_1) (fun x_3 -> 
    (x_3 < 1000))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_LastFilter" (fun () -> ignore ((testLastFilter ((enumFromTo 1) 500000))));
  Bench.Test.create ~name:"manual_LastFilter" (fun () -> ignore ((testManual ((enumFromTo 1) 500000))));
  Bench.Test.create ~name:"lumberhack_LastFilter" (fun () -> ignore ((testLastFilter_d0 ((enumFromTo_d0 1) 500000))));
  Bench.Test.create ~name:"lumberhack_pop_out_LastFilter" (fun () -> ignore ((testLastFilter_d0_d0 ((enumFromTo_d0_d0 1) 500000))));
])
