(*
touch ./ZipUnzip.mli && ocamlc ./ZipUnzip.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./ZipUnzip.ml -o "./ZipUnzip.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./ZipUnzip.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec makeZippedList__d0 n_1 =
  (if (n_1 > 0) then
    (`C((`Pair(n_1, (n_1 + 1))), (makeZippedList__d0 (n_1 - 1))))
  else
    (`N));;
let rec zip__d0 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec testZipUnzip__d0 n_0 =
  (match (unzip__d0 (makeZippedList__d0 n_0)) with
    | `Pair(xs_0, ys_0) -> 
      ((zip__d0 xs_0) ys_0))
and unzip__d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip__d0 t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec xt_0 = atail_0 in
                (let rec x_0 = a_0 in
                  (fun ys_1 -> 
                    ((ys_1 xt_0) x_0)))), (let rec yt_0 = btail_0 in
                (let rec y_0 = b_0 in
                  (fun xt_1 x_1 -> 
                    (`C((`Pair(x_1, y_0)), ((zip__d0 xt_1) yt_0))))))))))
    | `N -> 
      (`Pair((fun ys_2 -> 
        (`N)), (fun xt_2 x_2 -> 
        (`N)))));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec makeZippedList__d0 n_1 =
  (if (n_1 > 0) then
    (`C((`Pair(n_1, (n_1 + 1))), (makeZippedList__d0 (n_1 - 1))))
  else
    (`N));;
let rec zip__d0 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec testZipUnzip__d0 n_0 =
  (match (unzip__d0 (makeZippedList__d0 n_0)) with
    | `Pair(xs_0, ys_0) -> 
      ((zip__d0 xs_0) ys_0))
and unzip__d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip__d0 t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec xt_0 = atail_0 in
                (let rec x_0 = a_0 in
                  (fun ys_1 -> 
                    ((ys_1 xt_0) x_0)))), (let rec yt_0 = btail_0 in
                (let rec y_0 = b_0 in
                  (fun xt_1 x_1 -> 
                    (`C((`Pair(x_1, y_0)), ((zip__d0 xt_1) yt_0))))))))))
    | `N -> 
      (`Pair((fun ys_2 -> 
        (`N)), (fun xt_2 x_2 -> 
        (`N)))));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_ZipUnzip" (fun () -> ignore (let open Module_original in ((testZipUnzip 50000))));
  Bench.Test.create ~name:"lumberhack_ZipUnzip" (fun () -> ignore (let open Module_lumberhack in ((testZipUnzip__d0 50000))));
  Bench.Test.create ~name:"lumberhack_pop_out_ZipUnzip" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testZipUnzip__d0 50000))));
])
