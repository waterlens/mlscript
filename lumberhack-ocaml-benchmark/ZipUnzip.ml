(*
ocamlfind ocamlopt -rectypes -thread -O3 ./ZipUnzip.ml -o "./ZipUnzip.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./ZipUnzip.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec makeZippedList n_0 =
  (if (n_0 > 0) then
    (`C((`Pair(n_0, (n_0 + 1))), (makeZippedList (n_0 - 1))))
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
let rec testZipUnzip n_1 =
  (match (unzip (makeZippedList n_1)) with
    | `Pair(xs_1, ys_1) -> 
      ((zip xs_1) ys_1));;

(* lumberhack *)
let rec makeZippedList_d0 n_1 =
  (if (n_1 > 0) then
    (`C((`Pair(n_1, (n_1 + 1))), (makeZippedList_d0 (n_1 - 1))))
  else
    (`N));;
let rec zip_d0 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec testZipUnzip_d0 n_0 =
  (match (unzip_d0 (makeZippedList_d0 n_0)) with
    | `Pair(xs_0, ys_0) -> 
      ((zip_d0 xs_0) ys_0))
and unzip_d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip_d0 t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec x_0 = a_0 in
                (let rec xt_0 = atail_0 in
                  (fun ys_1 -> 
                    ((ys_1 x_0) xt_0)))), (let rec y_0 = b_0 in
                (let rec yt_0 = btail_0 in
                  (fun x_1 xt_1 -> 
                    (`C((`Pair(x_1, y_0)), ((zip_d0 xt_1) yt_0))))))))))
    | `N -> 
      (`Pair((fun ys_2 -> 
        (`N)), (fun x_2 xt_2 -> 
        (`N)))));;

(* lumberhack_pop_out *)
let rec makeZippedList_d0_d0 n_2 =
  (if (n_2 > 0) then
    (`C((`Pair(n_2, (n_2 + 1))), (makeZippedList_d0_d0 (n_2 - 1))))
  else
    (`N));;
let rec zip_d0_d0 xs_2 ys_4 =
  (xs_2 ys_4);;
let rec zip_d0_d1 xs_4 ys_8 =
  (xs_4 ys_8);;
let rec testZipUnzip_d0_d0 n_3 =
  (match (unzip_d0_d0 (makeZippedList_d0_d0 n_3)) with
    | `Pair(xs_3, ys_5) -> 
      ((zip_d0_d1 xs_3) ys_5))
and unzip_d0_d0 ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (match h_1 with
        | `Pair(a_1, b_1) -> 
          (match (unzip_d0_d0 t_1) with
            | `Pair(atail_1, btail_1) -> 
              (`Pair((let rec x_3 = a_1 in
                (let rec xt_3 = atail_1 in
                  (fun ys_6 -> 
                    ((ys_6 x_3) xt_3)))), (let rec y_1 = b_1 in
                (let rec yt_1 = btail_1 in
                  (fun x_4 xt_4 -> 
                    (`C((`Pair(x_4, y_1)), ((zip_d0_d0 xt_4) yt_1))))))))))
    | `N -> 
      (`Pair((fun ys_7 -> 
        (`N)), (fun x_5 xt_5 -> 
        (`N)))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_ZipUnzip" (fun () -> ignore ((testZipUnzip 50000)));
  Bench.Test.create ~name:"lumberhack_ZipUnzip" (fun () -> ignore ((testZipUnzip_d0 50000)));
  Bench.Test.create ~name:"lumberhack_pop_out_ZipUnzip" (fun () -> ignore ((testZipUnzip_d0_d0 50000)));
])
