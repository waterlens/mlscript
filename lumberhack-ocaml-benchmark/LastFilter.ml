(*
touch ./LastFilter.mli && ocamlc ./LastFilter.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./LastFilter.ml -o "./LastFilter.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilter.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
module Module_original = struct
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec enumFromTo__d0 a_4 b_1 =
  (if (a_4 <= b_1) then
    (`C(a_4, ((enumFromTo__d0 (a_4 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo__d1 a_2 b_0 =
  (if (a_2 <= b_0) then
    (`C(a_2, ((enumFromTo__d1 (a_2 + 1)) b_0)))
  else
    (`N));;
let rec lastDrive__d0 ls_0 =
  (ls_0 99);;
let rec last__d0 a_5 ls_6 =
  (ls_6 a_5);;
let rec filter__d0 ls_2 f_1 =
  (match ls_2 with
    | `C(h_2, t_2) -> 
      (if (f_1 h_2) then
        (let rec t_3 = ((filter__d1 t_2) f_1) in
          (let rec h_3 = h_2 in
            (fun _lh_dummy_0 -> 
              (`Some(((last__d0 h_3) t_3))))))
      else
        ((filter__d0 t_2) f_1))
    | `N -> 
      (fun _lh_dummy_1 -> 
        (`None)))
and filter__d1 ls_1 f_0 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (let rec t_1 = ((filter__d1 t_0) f_0) in
          (let rec h_1 = h_0 in
            (fun a_0 -> 
              ((last__d0 h_1) t_1))))
      else
        ((filter__d1 t_0) f_0))
    | `N -> 
      (fun a_1 -> 
        a_1))
and testLastFilter__d0 ls_5 =
  (lastDrive__d0 ((filter__d0 ls_5) (fun x_1 -> 
    (x_1 < 1000))));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec enumFromTo__d0 a_4 b_1 =
  (if (a_4 <= b_1) then
    (`C(a_4, ((enumFromTo__d0 (a_4 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo__d1 a_2 b_0 =
  (if (a_2 <= b_0) then
    (`C(a_2, ((enumFromTo__d1 (a_2 + 1)) b_0)))
  else
    (`N));;
let rec lastDrive__d0 ls_0 =
  (ls_0 99);;
let rec last__d0 a_5 ls_6 =
  (ls_6 a_5);;
let rec filter__d0 ls_2 f_1 =
  (match ls_2 with
    | `C(h_2, t_2) -> 
      (if (f_1 h_2) then
        (let rec t_3 = ((filter__d1 t_2) f_1) in
          (let rec h_3 = h_2 in
            (fun _lh_dummy_0 -> 
              (`Some(((last__d0 h_3) t_3))))))
      else
        ((filter__d0 t_2) f_1))
    | `N -> 
      (fun _lh_dummy_1 -> 
        (`None)))
and filter__d1 ls_1 f_0 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (let rec t_1 = ((filter__d1 t_0) f_0) in
          (let rec h_1 = h_0 in
            (fun a_0 -> 
              ((last__d0 h_1) t_1))))
      else
        ((filter__d1 t_0) f_0))
    | `N -> 
      (fun a_1 -> 
        a_1))
and testLastFilter__d0 ls_5 =
  (lastDrive__d0 ((filter__d0 ls_5) (fun x_1 -> 
    (x_1 < 1000))));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_LastFilter" (fun () -> ignore (let open Module_original in ((testLastFilter ((enumFromTo 1) 500000)))));
  Bench.Test.create ~name:"manual_LastFilter" (fun () -> ignore (let open Module_original in ((testLastFilter ((enumFromTo 1) 500000)))));
  Bench.Test.create ~name:"lumberhack_LastFilter" (fun () -> ignore (let open Module_lumberhack in ((testLastFilter__d0 ((enumFromTo__d0 1) 500000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_LastFilter" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testLastFilter__d0 ((enumFromTo__d0 1) 500000)))));
])
