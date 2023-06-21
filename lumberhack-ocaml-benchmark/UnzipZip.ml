(*
ocamlfind ocamlopt -rectypes -thread -O3 ./UnzipZip.ml -o "./UnzipZip.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./UnzipZip.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec enumFromTo a_1 b_1 =
  (if (a_1 < b_1) then
    (`C(a_1, ((enumFromTo (a_1 + 1)) b_1)))
  else
    (`N));;
let rec unzip ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((`C(a_0, atail_0)), (`C(b_0, btail_0))))))
    | `N -> 
      (`Pair((`N), (`N))));;
let rec zip xs_0 ys_0 =
  (match xs_0 with
    | `C(x_0, xt_0) -> 
      (match ys_0 with
        | `C(y_0, yt_0) -> 
          (`C((`Pair(x_0, y_0)), ((zip xt_0) yt_0)))
        | `N -> 
          (`N))
    | `N -> 
      (`N));;
let rec testUnzipZip n_0 =
  (unzip ((zip ((enumFromTo 1) n_0)) ((enumFromTo 2) (n_0 + 3))));;

(* lumberhack *)
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 < b_0) then
    (`C(a_0, ((enumFromTo_d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec enumFromTo_d1 a_1 b_1 =
  (if (a_1 < b_1) then
    (`C(a_1, ((enumFromTo_d1 (a_1 + 1)) b_1)))
  else
    (`N));;
let rec unzip_d0 ls_0 =
  ls_0;;
let rec testUnzipZip_d0 n_0 =
  (unzip_d0 ((zip_d0 ((enumFromTo_d0 1) n_0)) ((enumFromTo_d1 2) (n_0 + 3))))
and zip_d0 xs_0 ys_0 =
  (match xs_0 with
    | `C(x_0, xt_0) -> 
      (match ys_0 with
        | `C(y_0, yt_0) -> 
          (let rec h_0 = (let rec a_2 = x_0 in
            (let rec b_2 = y_0 in
              (fun t_0 -> 
                (match (unzip_d0 t_0) with
                  | `Pair(atail_0, btail_0) -> 
                    (`Pair((`C(a_2, atail_0)), (`C(b_2, btail_0)))))))) in
            (let rec t_1 = ((zip_d0 xt_0) yt_0) in
              (h_0 t_1)))
        | `N -> 
          (`Pair((`N), (`N))))
    | `N -> 
      (`Pair((`N), (`N))));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_4 b_4 =
  (if (a_4 < b_4) then
    (`C(a_4, ((enumFromTo_d0_d0 (a_4 + 1)) b_4)))
  else
    (`N));;
let rec enumFromTo_d1_d0 a_3 b_3 =
  (if (a_3 < b_3) then
    (`C(a_3, ((enumFromTo_d1_d0 (a_3 + 1)) b_3)))
  else
    (`N));;
let rec unzip_d0_d0 ls_2 =
  ls_2;;
let rec unzip_d0_d1 ls_1 =
  ls_1;;
let rec testUnzipZip_d0_d0 n_1 =
  (unzip_d0_d0 ((zip_d0_d0 ((enumFromTo_d0_d0 1) n_1)) ((enumFromTo_d1_d0 2) (n_1 + 3))))
and zip_d0_d0 xs_1 ys_1 =
  (match xs_1 with
    | `C(x_1, xt_1) -> 
      (match ys_1 with
        | `C(y_1, yt_1) -> 
          (let rec h_1 = (let rec a_5 = x_1 in
            (let rec b_5 = y_1 in
              (fun t_2 -> 
                (match (unzip_d0_d1 t_2) with
                  | `Pair(atail_1, btail_1) -> 
                    (`Pair((`C(a_5, atail_1)), (`C(b_5, btail_1)))))))) in
            (let rec t_3 = ((zip_d0_d0 xt_1) yt_1) in
              (h_1 t_3)))
        | `N -> 
          (`Pair((`N), (`N))))
    | `N -> 
      (`Pair((`N), (`N))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_UnzipZip" (fun () -> ignore ((testUnzipZip 50000)));
  Bench.Test.create ~name:"lumberhack_UnzipZip" (fun () -> ignore ((testUnzipZip_d0 50000)));
  Bench.Test.create ~name:"lumberhack_pop_out_UnzipZip" (fun () -> ignore ((testUnzipZip_d0_d0 50000)));
])
