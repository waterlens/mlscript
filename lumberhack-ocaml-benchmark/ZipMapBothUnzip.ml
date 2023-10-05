(*
touch ./ZipMapBothUnzip.mli && ocamlc ./ZipMapBothUnzip.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./ZipMapBothUnzip.ml -o "./ZipMapBothUnzip.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./ZipMapBothUnzip.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec makeZippedList n_0 =
  (if (n_0 > 0) then
    (`C((`Pair(n_0, (n_0 + 1))), (makeZippedList (n_0 - 1))))
  else
    (`N));;
let rec map f_0 ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (`C((f_0 h_1), ((map f_0) t_1)))
    | `N -> 
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
let rec testZipMapBothUnzip n_1 =
  (match (unzip (makeZippedList n_1)) with
    | `Pair(xs_1, ys_1) -> 
      ((zip ((map (fun x_1 -> 
        (x_1 + 1))) xs_1)) ((map (fun x_2 -> 
        (x_2 * x_2))) ys_1)));;

(* lumberhack *)
let rec makeZippedList__d0 n_0 =
  (if (n_0 > 0) then
    (`C((`Pair(n_0, (n_0 + 1))), (makeZippedList__d0 (n_0 - 1))))
  else
    (`N));;
let rec map__d0 f_4 ls_1 =
  (ls_1 f_4);;
let rec map__d1 f_5 ls_2 =
  (ls_2 f_5);;
let rec zip__d0 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec testZipMapBothUnzip__d0 n_1 =
  (match (unzip__d0 (makeZippedList__d0 n_1)) with
    | `Pair(xs_1, ys_3) -> 
      ((zip__d0 ((map__d0 (fun x_3 -> 
        (x_3 + 1))) xs_1)) ((map__d1 (fun x_4 -> 
        (x_4 * x_4))) ys_3)))
and unzip__d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip__d0 t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec t_1 = atail_0 in
                (let rec h_1 = a_0 in
                  (fun f_0 -> 
                    (let rec xt_0 = ((map__d0 f_0) t_1) in
                      (let rec x_0 = (f_0 h_1) in
                        (fun ys_0 -> 
                          ((ys_0 xt_0) x_0))))))), (let rec t_2 = btail_0 in
                (let rec h_2 = b_0 in
                  (fun f_1 -> 
                    (let rec yt_0 = ((map__d1 f_1) t_2) in
                      (let rec y_0 = (f_1 h_2) in
                        (fun xt_1 x_1 -> 
                          (`C((`Pair(x_1, y_0)), ((zip__d0 xt_1) yt_0)))))))))))))
    | `N -> 
      (`Pair((fun f_2 ys_1 -> 
        (`N)), (fun f_3 xt_2 x_2 -> 
        (`N)))));;

(* lumberhack_pop_out *)
let rec makeZippedList__d0__d0 n_3 =
  (if (n_3 > 0) then
    (`C((`Pair(n_3, (n_3 + 1))), (makeZippedList__d0__d0 (n_3 - 1))))
  else
    (`N));;
let rec map__d0__d0 f_1_2 ls_6 =
  (ls_6 f_1_2);;
let rec map__d0__d1 f_6 ls_3 =
  (ls_3 f_6);;
let rec map__d1__d0 f_1_3 ls_7 =
  (ls_7 f_1_3);;
let rec map__d1__d1 f_7 ls_4 =
  (ls_4 f_7);;
let rec zip__d0__d0 xs_2 ys_4 =
  (xs_2 ys_4);;
let rec zip__d0__d1 xs_4 ys_8 =
  (xs_4 ys_8);;
let rec testZipMapBothUnzip__d0__d0 n_2 =
  (match (unzip__d0__d0 (makeZippedList__d0__d0 n_2)) with
    | `Pair(xs_3, ys_5) -> 
      ((zip__d0__d1 ((map__d0__d0 (fun x_5 -> 
        (x_5 + 1))) xs_3)) ((map__d1__d0 (fun x_6 -> 
        (x_6 * x_6))) ys_5)))
and unzip__d0__d0 ls_5 =
  (match ls_5 with
    | `C(h_3, t_3) -> 
      (match h_3 with
        | `Pair(a_1, b_1) -> 
          (match (unzip__d0__d0 t_3) with
            | `Pair(atail_1, btail_1) -> 
              (`Pair((let rec t_4 = atail_1 in
                (let rec h_4 = a_1 in
                  (fun f_8 -> 
                    (let rec xt_3 = ((map__d0__d1 f_8) t_4) in
                      (let rec x_7 = (f_8 h_4) in
                        (fun ys_6 -> 
                          ((ys_6 xt_3) x_7))))))), (let rec t_5 = btail_1 in
                (let rec h_5 = b_1 in
                  (fun f_9 -> 
                    (let rec yt_1 = ((map__d1__d1 f_9) t_5) in
                      (let rec y_1 = (f_9 h_5) in
                        (fun xt_4 x_8 -> 
                          (`C((`Pair(x_8, y_1)), ((zip__d0__d0 xt_4) yt_1)))))))))))))
    | `N -> 
      (`Pair((fun f_1_0 ys_7 -> 
        (`N)), (fun f_1_1 xt_5 x_9 -> 
        (`N)))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_ZipMapBothUnzip" (fun () -> ignore ((testZipMapBothUnzip 50000)));
  Bench.Test.create ~name:"lumberhack_ZipMapBothUnzip" (fun () -> ignore ((testZipMapBothUnzip__d0 50000)));
  Bench.Test.create ~name:"lumberhack_pop_out_ZipMapBothUnzip" (fun () -> ignore ((testZipMapBothUnzip__d0__d0 50000)));
])
