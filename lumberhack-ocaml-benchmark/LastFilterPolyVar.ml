(*
ocamlfind ocamlopt -rectypes -thread -O3 ./LastFilterPolyVar.ml -o "./LastFilterPolyVar.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilterPolyVar.out
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec enumFromTo a_0 b_0 =
  (if (a_0 < b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N))
and filter ls_0 f_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (`C(h_0, ((filter t_0) f_0)))
      else
        ((filter t_0) f_0))
    | `N -> 
      (`N))
and last a_1 ls_2 =
  (match ls_2 with
    | `N -> 
      a_1
    | `C(h_2, t_2) -> 
      ((last h_2) t_2))
and lastDrive ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (`Some(((last h_1) t_1)))
    | `N -> 
      (`None))
and lastFilter ls_3 f_1 =
  (lastDrive ((filter ls_3) f_1))
and testLastFilterPolyVar ls_4 =
  ((lastFilter ls_4) (fun x_0 -> 
    (x_0 < 1000)));;

(* optimized *)
let rec enumFromTo_d0 a_3 b_0 =
  (if (a_3 < b_0) then
    (`C(a_3, ((enumFromTo_d0 (a_3 + 1)) b_0)))
  else
    (`N))
and filter_d0 ls_3 f_1 =
  (match ls_3 with
    | `C(h_2, t_2) -> 
      (if (f_1 h_2) then
        (let rec h_3 = h_2 in
          (let rec t_3 = ((filter_d1 t_2) f_1) in
            (`Some(((last_d0 h_3) t_3)))))
      else
        ((filter_d0 t_2) f_1))
    | `N -> 
      (`None))
and filter_d1 ls_1 f_0 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (let rec h_1 = h_0 in
          (let rec t_1 = ((filter_d1 t_0) f_0) in
            (fun a_0 -> 
              ((last_d0 h_1) t_1))))
      else
        ((filter_d1 t_0) f_0))
    | `N -> 
      (fun a_1 -> 
        a_1))
and lastDrive_d0 ls_0 =
  ls_0
and lastFilter_d0 ls_5 f_2 =
  (lastDrive_d0 ((filter_d0 ls_5) f_2))
and last_d0 a_2 ls_2 =
  (ls_2 a_2)
and testLastFilterPolyVar_d0 ls_4 =
  ((lastFilter_d0 ls_4) (fun x_0 -> 
    (x_0 < 1000)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_LastFilterPolyVar_1" (fun () -> ignore ((testLastFilterPolyVar ((enumFromTo 1) 100000))));
  Bench.Test.create ~name:"lumberhack_LastFilterPolyVar_1" (fun () -> ignore ((testLastFilterPolyVar_d0 ((enumFromTo_d0 1) 100000))));
  Bench.Test.create ~name:"original_LastFilterPolyVar_2" (fun () -> ignore ((testLastFilterPolyVar ((enumFromTo 1) 100000))));
  Bench.Test.create ~name:"lumberhack_LastFilterPolyVar_2" (fun () -> ignore ((testLastFilterPolyVar_d0 ((enumFromTo_d0 1) 100000))));
])
