(*
touch ./Prime_nofib.mli && ocamlc ./Prime_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Prime_nofib.ml -o "./Prime_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Prime_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec atIndex_lz__d0 n_4 ls_2_1 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_1) with
      | `LH_C(h_2_2, t_2_4) -> 
        (if (n_4 = 0) then
          h_2_2
        else
          ((atIndex_lz__d0 (n_4 - 1)) t_2_4))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo__d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec filter__d0 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (if (f_1_4 h_2_3) then
        (`LH_C(h_2_3, ((filter__d0 f_1_4) t_2_5)))
      else
        ((filter__d0 f_1_4) t_2_5))
    | `LH_N -> 
      (`LH_N));;
let rec head__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      h_2_1
    | `LH_N -> 
      (failwith "error"));;
let rec isdivs__d0 _lh_isdivs_arg1_1 _lh_isdivs_arg2_1 =
  ((_lh_isdivs_arg2_1 mod _lh_isdivs_arg1_1) <> 0);;
let rec iterate__d0 f_1_3 x_2 =
  (lazy (`LH_C(x_2, ((iterate__d0 f_1_3) (f_1_3 x_2)))));;
let rec map_lz__d0 f_1_2 ls_1_9 =
  (lazy (match (Lazy.force ls_1_9) with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map_lz__d0 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N)));;
let rec prime__d0 _lh_prime_arg1_1 =
  ((atIndex_lz__d0 _lh_prime_arg1_1) ((map_lz__d0 head__d0) ((iterate__d0 the_filter__d0) ((enumFromTo__d0 2) (_lh_prime_arg1_1 * _lh_prime_arg1_1)))))
and testPrime_nofib__d0 _lh_testPrime_nofib_arg1_1 =
  (prime__d0 _lh_testPrime_nofib_arg1_1)
and the_filter__d0 _lh_the_filter_arg1_1 =
  (match _lh_the_filter_arg1_1 with
    | `LH_C(_lh_the_filter_LH_C_0_1, _lh_the_filter_LH_C_1_1) -> 
      ((filter__d0 (isdivs__d0 _lh_the_filter_LH_C_0_1)) _lh_the_filter_LH_C_1_1)
    | _ -> 
      (failwith "error"));;

(* lumberhack *)
let rec atIndex_lz__d0__d0 n_1 ls_2 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_2) n_1));;
let rec enumFromTo__d0__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec filter__d0__d0 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (`LH_C(h_0, ((filter__d0__d0 f_0) t_0)))
      else
        ((filter__d0__d0 f_0) t_0))
    | `LH_N -> 
      (`LH_N));;
let rec head__d0__d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec isdivs__d0__d0 _lh_isdivs_arg1_0 _lh_isdivs_arg2_0 =
  ((_lh_isdivs_arg2_0 mod _lh_isdivs_arg1_0) <> 0);;
let rec map_lz__d0__d0 f_3 ls_3 =
  (lazy ((Lazy.force ls_3) f_3));;
let rec iterate__d0__d0 f_1 x_0 =
  (lazy (let rec t_2 = ((iterate__d0__d0 f_1) (f_1 x_0)) in
    (let rec h_2 = x_0 in
      (fun f_2 -> 
        (let rec t_3 = ((map_lz__d0__d0 f_2) t_2) in
          (let rec h_3 = (f_2 h_2) in
            (fun n_0 -> 
              (if (n_0 = 0) then
                h_3
              else
                ((atIndex_lz__d0__d0 (n_0 - 1)) t_3)))))))))
and prime__d0__d0 _lh_prime_arg1_0 =
  ((atIndex_lz__d0__d0 _lh_prime_arg1_0) ((map_lz__d0__d0 head__d0__d0) ((iterate__d0__d0 the_filter__d0__d0) ((enumFromTo__d0__d0 2) (_lh_prime_arg1_0 * _lh_prime_arg1_0)))))
and testPrime_nofib__d0__d0 _lh_testPrime_nofib_arg1_0 =
  (prime__d0__d0 _lh_testPrime_nofib_arg1_0)
and the_filter__d0__d0 _lh_the_filter_arg1_0 =
  (match _lh_the_filter_arg1_0 with
    | `LH_C(_lh_the_filter_LH_C_0_0, _lh_the_filter_LH_C_1_0) -> 
      ((filter__d0__d0 (isdivs__d0__d0 _lh_the_filter_LH_C_0_0)) _lh_the_filter_LH_C_1_0)
    | _ -> 
      (failwith "error"));;

(* lumberhack_pop_out *)
let rec atIndex_lz__d0__d0__d0 n_4 ls_6 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_6) n_4));;
let rec atIndex_lz__d0__d0__d1 n_3 ls_5 =
  (if (n_3 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_5) n_3));;
let rec enumFromTo__d0__d0__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo__d0__d0__d0 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec filter__d0__d0__d0 f_8 ls_9 =
  (match ls_9 with
    | `LH_C(h_7, t_7) -> 
      (if (f_8 h_7) then
        (`LH_C(h_7, ((filter__d0__d0__d0 f_8) t_7)))
      else
        ((filter__d0__d0__d0 f_8) t_7))
    | `LH_N -> 
      (`LH_N));;
let rec head__d0__d0__d0 ls_7 =
  (match ls_7 with
    | `LH_C(h_6, t_6) -> 
      h_6
    | `LH_N -> 
      (failwith "error"));;
let rec isdivs__d0__d0__d0 _lh_isdivs_arg1_1 _lh_isdivs_arg2_1 =
  ((_lh_isdivs_arg2_1 mod _lh_isdivs_arg1_1) <> 0);;
let rec map_lz__d0__d0__d0 f_6 ls_4 =
  (lazy ((Lazy.force ls_4) f_6));;
let rec map_lz__d0__d0__d1 f_7 ls_8 =
  (lazy ((Lazy.force ls_8) f_7));;
let rec iterate__d0__d0__d0 f_4 x_1 =
  (lazy (let rec t_4 = ((iterate__d0__d0__d0 f_4) (f_4 x_1)) in
    (let rec h_4 = x_1 in
      (fun f_5 -> 
        (let rec t_5 = ((map_lz__d0__d0__d0 f_5) t_4) in
          (let rec h_5 = (f_5 h_4) in
            (fun n_2 -> 
              (if (n_2 = 0) then
                h_5
              else
                ((atIndex_lz__d0__d0__d1 (n_2 - 1)) t_5)))))))))
and prime__d0__d0__d0 _lh_prime_arg1_1 =
  ((atIndex_lz__d0__d0__d0 _lh_prime_arg1_1) ((map_lz__d0__d0__d1 head__d0__d0__d0) ((iterate__d0__d0__d0 the_filter__d0__d0__d0) ((enumFromTo__d0__d0__d0 2) (_lh_prime_arg1_1 * _lh_prime_arg1_1)))))
and testPrime_nofib__d0__d0__d0 _lh_testPrime_nofib_arg1_1 =
  (prime__d0__d0__d0 _lh_testPrime_nofib_arg1_1)
and the_filter__d0__d0__d0 _lh_the_filter_arg1_1 =
  (match _lh_the_filter_arg1_1 with
    | `LH_C(_lh_the_filter_LH_C_0_1, _lh_the_filter_LH_C_1_1) -> 
      ((filter__d0__d0__d0 (isdivs__d0__d0__d0 _lh_the_filter_LH_C_0_1)) _lh_the_filter_LH_C_1_1)
    | _ -> 
      (failwith "error"));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Prime_nofib" (fun () -> ignore ((testPrime_nofib__d0 100)));
  Bench.Test.create ~name:"lumberhack_Prime_nofib" (fun () -> ignore ((testPrime_nofib__d0__d0 100)));
  Bench.Test.create ~name:"lumberhack_pop_out_Prime_nofib" (fun () -> ignore ((testPrime_nofib__d0__d0__d0 100)));
])
