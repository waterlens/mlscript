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
let rec makeZippedList_d0 n_0 =
  (if (n_0 > 0) then
    (`C((`Pair(n_0, (n_0 + 1))), (makeZippedList_d0 (n_0 - 1))))
  else
    (`N));;
let rec map_d0 f_5 ls_2 =
  (ls_2 f_5);;
let rec map_d1 f_4 ls_1 =
  (ls_1 f_4);;
let rec zip_d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec testZipMapBothUnzip_d0 n_1 =
  (match (unzip_d0 (makeZippedList_d0 n_1)) with
    | `Pair(xs_1, ys_3) -> 
      ((zip_d0 ((map_d0 (fun x_3 -> 
        (x_3 + 1))) xs_1)) ((map_d1 (fun x_4 -> 
        (x_4 * x_4))) ys_3)))
and unzip_d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip_d0 t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec h_1 = (lazy a_0) in
                (let rec t_1 = (lazy atail_0) in
                  (fun f_0 -> 
                    (let rec x_0 = (lazy (f_0 (Lazy.force h_1))) in
                      (let rec xt_0 = (lazy ((map_d0 f_0) (Lazy.force t_1))) in
                        (fun ys_1 -> 
                          ((ys_1 (Lazy.force xt_0)) (Lazy.force x_0)))))))), (let rec h_2 = (lazy b_0) in
                (let rec t_2 = (lazy btail_0) in
                  (fun f_1 -> 
                    (let rec y_0 = (lazy (f_1 (Lazy.force h_2))) in
                      (let rec yt_0 = (lazy ((map_d1 f_1) (Lazy.force t_2))) in
                        (fun xt_1 x_1 -> 
                          (`C((`Pair(x_1, (Lazy.force y_0))), ((zip_d0 xt_1) (Lazy.force yt_0))))))))))))))
    | `N -> 
      (`Pair((fun f_2 ys_2 -> 
        (`N)), (fun f_3 xt_2 x_2 -> 
        (`N)))));;

(* lumberhack_pop_out *)
let rec makeZippedList_d0_d0 n_3 =
  (if (n_3 > 0) then
    (`C((`Pair(n_3, (n_3 + 1))), (makeZippedList_d0_d0 (n_3 - 1))))
  else
    (`N));;
let rec map_d0_d0 f_7 ls_4 =
  (ls_4 f_7);;
let rec map_d0_d1 f_1_3 ls_7 =
  (ls_7 f_1_3);;
let rec map_d1_d0 f_6 ls_3 =
  (ls_3 f_6);;
let rec map_d1_d1 f_8 ls_5 =
  (ls_5 f_8);;
let rec zip_d0_d0 xs_3 ys_5 =
  (xs_3 ys_5);;
let rec zip_d0_d1 xs_4 ys_8 =
  (xs_4 ys_8);;
let rec testZipMapBothUnzip_d0_d0 n_2 =
  (match (unzip_d0_d0 (makeZippedList_d0_d0 n_2)) with
    | `Pair(xs_2, ys_4) -> 
      ((zip_d0_d1 ((map_d0_d0 (fun x_5 -> 
        (x_5 + 1))) xs_2)) ((map_d1_d0 (fun x_6 -> 
        (x_6 * x_6))) ys_4)))
and unzip_d0_d0 ls_6 =
  (match ls_6 with
    | `C(h_3, t_3) -> 
      (match h_3 with
        | `Pair(a_1, b_1) -> 
          (match (unzip_d0_d0 t_3) with
            | `Pair(atail_1, btail_1) -> 
              (`Pair((let rec h_4 = (lazy a_1) in
                (let rec t_4 = (lazy atail_1) in
                  (fun f_9 -> 
                    (let rec x_7 = (lazy (f_9 (Lazy.force h_4))) in
                      (let rec xt_3 = (lazy ((map_d0_d1 f_9) (Lazy.force t_4))) in
                        (fun ys_6 -> 
                          ((ys_6 (Lazy.force xt_3)) (Lazy.force x_7)))))))), (let rec h_5 = (lazy b_1) in
                (let rec t_5 = (lazy btail_1) in
                  (fun f_1_0 -> 
                    (let rec y_1 = (lazy (f_1_0 (Lazy.force h_5))) in
                      (let rec yt_1 = (lazy ((map_d1_d1 f_1_0) (Lazy.force t_5))) in
                        (fun xt_4 x_8 -> 
                          (`C((`Pair(x_8, (Lazy.force y_1))), ((zip_d0_d0 xt_4) (Lazy.force yt_1))))))))))))))
    | `N -> 
      (`Pair((fun f_1_1 ys_7 -> 
        (`N)), (fun f_1_2 xt_5 x_9 -> 
        (`N)))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_ZipMapBothUnzip" (fun () -> ignore ((testZipMapBothUnzip 50000)));
  Bench.Test.create ~name:"lumberhack_ZipMapBothUnzip" (fun () -> ignore ((testZipMapBothUnzip_d0 50000)));
  Bench.Test.create ~name:"lumberhack_pop_out_ZipMapBothUnzip" (fun () -> ignore ((testZipMapBothUnzip_d0_d0 50000)));
])
