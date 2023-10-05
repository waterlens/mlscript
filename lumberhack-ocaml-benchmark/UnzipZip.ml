(*
touch ./UnzipZip.mli && ocamlc ./UnzipZip.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./UnzipZip.ml -o "./UnzipZip.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./UnzipZip.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec enumFromTo__d0 a_2 b_2 =
  (if (a_2 < b_2) then
    (`C(a_2, ((enumFromTo__d0 (a_2 + 1)) b_2)))
  else
    (`N));;
let rec enumFromTo__d1 a_1 b_1 =
  (if (a_1 < b_1) then
    (`C(a_1, ((enumFromTo__d1 (a_1 + 1)) b_1)))
  else
    (`N));;
let rec unzip__d0 ls_0 =
  (ls_0 99);;
let rec testUnzipZip__d0 n_0 =
  (unzip__d0 ((zip__d0 ((enumFromTo__d0 1) n_0)) ((enumFromTo__d1 2) (n_0 + 3))))
and zip__d0 xs_0 ys_0 =
  (match xs_0 with
    | `C(x_0, xt_0) -> 
      (match ys_0 with
        | `C(y_0, yt_0) -> 
          (let rec t_0 = ((zip__d0 xt_0) yt_0) in
            (let rec h_0 = (let rec b_0 = y_0 in
              (let rec a_0 = x_0 in
                (fun t_1 -> 
                  (match (unzip__d0 t_1) with
                    | `Pair(atail_0, btail_0) -> 
                      (`Pair((`C(a_0, atail_0)), (`C(b_0, btail_0)))))))) in
              (fun _lh_dummy_0 -> 
                (h_0 t_0))))
        | `N -> 
          (fun _lh_dummy_1 -> 
            (`Pair((`N), (`N)))))
    | `N -> 
      (fun _lh_dummy_2 -> 
        (`Pair((`N), (`N)))));;

(* lumberhack_pop_out *)
let rec enumFromTo__d0__d0 a_4 b_4 =
  (if (a_4 < b_4) then
    (`C(a_4, ((enumFromTo__d0__d0 (a_4 + 1)) b_4)))
  else
    (`N));;
let rec enumFromTo__d1__d0 a_3 b_3 =
  (if (a_3 < b_3) then
    (`C(a_3, ((enumFromTo__d1__d0 (a_3 + 1)) b_3)))
  else
    (`N));;
let rec unzip__d0__d0 ls_2 =
  (ls_2 99);;
let rec unzip__d0__d1 ls_1 =
  (ls_1 99);;
let rec testUnzipZip__d0__d0 n_1 =
  (unzip__d0__d0 ((zip__d0__d0 ((enumFromTo__d0__d0 1) n_1)) ((enumFromTo__d1__d0 2) (n_1 + 3))))
and zip__d0__d0 xs_1 ys_1 _lh_popOutId_0_1 =
  (match xs_1 with
    | `C(x_1, xt_1) -> 
      (match ys_1 with
        | `C(y_1, yt_1) -> 
          (let rec t_2 = ((zip__d0__d0 xt_1) yt_1) in
            (let rec h_1 = (let rec b_5 = y_1 in
              (let rec a_5 = x_1 in
                (fun t_3 -> 
                  (match (unzip__d0__d1 t_3) with
                    | `Pair(atail_1, btail_1) -> 
                      (`Pair((`C(a_5, atail_1)), (`C(b_5, btail_1)))))))) in
              (h_1 t_2)))
        | `N -> 
          (`Pair((`N), (`N))))
    | `N -> 
      (`Pair((`N), (`N))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_UnzipZip" (fun () -> ignore ((testUnzipZip 50000)));
  Bench.Test.create ~name:"lumberhack_UnzipZip" (fun () -> ignore ((testUnzipZip__d0 50000)));
  Bench.Test.create ~name:"lumberhack_pop_out_UnzipZip" (fun () -> ignore ((testUnzipZip__d0__d0 50000)));
])
