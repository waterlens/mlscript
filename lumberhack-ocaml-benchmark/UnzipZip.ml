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
module Module_original = struct
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
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
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
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
and zip__d0 xs_0 ys_0 _lh_popOutId_0_1 =
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
              (h_0 t_0)))
        | `N -> 
          (`Pair((`N), (`N))))
    | `N -> 
      (`Pair((`N), (`N))));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_UnzipZip" (fun () -> ignore (let open Module_original in ((testUnzipZip 50000))));
  Bench.Test.create ~name:"lumberhack_UnzipZip" (fun () -> ignore (let open Module_lumberhack in ((testUnzipZip__d0 50000))));
  Bench.Test.create ~name:"lumberhack_pop_out_UnzipZip" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testUnzipZip__d0 50000))));
])
