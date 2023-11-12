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
module Module_original = struct
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec atIndex_lz__d0 n_1 ls_3 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_3) n_1));;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec filter__d0 f_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (if (f_0 h_1) then
        (`LH_C(h_1, ((filter__d0 f_0) t_1)))
      else
        ((filter__d0 f_0) t_1))
    | `LH_N -> 
      (`LH_N));;
let rec head__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec isdivs__d0 _lh_isdivs_arg1_0 _lh_isdivs_arg2_0 =
  ((_lh_isdivs_arg2_0 mod _lh_isdivs_arg1_0) <> 0);;
let rec map_lz__d0 f_3 ls_2 =
  (lazy ((Lazy.force ls_2) f_3));;
let rec iterate__d0 f_1 x_0 =
  (lazy (let rec t_2 = ((iterate__d0 f_1) (f_1 x_0)) in
    (let rec h_2 = x_0 in
      (fun f_2 -> 
        (let rec t_3 = ((map_lz__d0 f_2) t_2) in
          (let rec h_3 = (f_2 h_2) in
            (fun n_0 -> 
              (if (n_0 = 0) then
                h_3
              else
                ((atIndex_lz__d0 (n_0 - 1)) t_3)))))))))
and prime__d0 _lh_prime_arg1_0 =
  ((atIndex_lz__d0 _lh_prime_arg1_0) ((map_lz__d0 head__d0) ((iterate__d0 the_filter__d0) ((enumFromTo__d0 2) (_lh_prime_arg1_0 * _lh_prime_arg1_0)))))
and testPrime_nofib__d0 _lh_testPrime_nofib_arg1_0 =
  (prime__d0 _lh_testPrime_nofib_arg1_0)
and the_filter__d0 _lh_the_filter_arg1_0 =
  (match _lh_the_filter_arg1_0 with
    | `LH_C(_lh_the_filter_LH_C_0_0, _lh_the_filter_LH_C_1_0) -> 
      ((filter__d0 (isdivs__d0 _lh_the_filter_LH_C_0_0)) _lh_the_filter_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec atIndex_lz__d0 n_1 ls_3 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_3) n_1));;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec filter__d0 f_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (if (f_0 h_1) then
        (`LH_C(h_1, ((filter__d0 f_0) t_1)))
      else
        ((filter__d0 f_0) t_1))
    | `LH_N -> 
      (`LH_N));;
let rec head__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec isdivs__d0 _lh_isdivs_arg1_0 _lh_isdivs_arg2_0 =
  ((_lh_isdivs_arg2_0 mod _lh_isdivs_arg1_0) <> 0);;
let rec map_lz__d0 f_3 ls_2 =
  (lazy ((Lazy.force ls_2) f_3));;
let rec iterate__d0 f_1 x_0 =
  (lazy (let rec t_2 = ((iterate__d0 f_1) (f_1 x_0)) in
    (let rec h_2 = x_0 in
      (fun f_2 -> 
        (let rec t_3 = ((map_lz__d0 f_2) t_2) in
          (let rec h_3 = (f_2 h_2) in
            (fun n_0 -> 
              (if (n_0 = 0) then
                h_3
              else
                ((atIndex_lz__d0 (n_0 - 1)) t_3)))))))))
and prime__d0 _lh_prime_arg1_0 =
  ((atIndex_lz__d0 _lh_prime_arg1_0) ((map_lz__d0 head__d0) ((iterate__d0 the_filter__d0) ((enumFromTo__d0 2) (_lh_prime_arg1_0 * _lh_prime_arg1_0)))))
and testPrime_nofib__d0 _lh_testPrime_nofib_arg1_0 =
  (prime__d0 _lh_testPrime_nofib_arg1_0)
and the_filter__d0 _lh_the_filter_arg1_0 =
  (match _lh_the_filter_arg1_0 with
    | `LH_C(_lh_the_filter_LH_C_0_0, _lh_the_filter_LH_C_1_0) -> 
      ((filter__d0 (isdivs__d0 _lh_the_filter_LH_C_0_0)) _lh_the_filter_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Prime_nofib" (fun () -> ignore (let open Module_original in ((testPrime_nofib__d0 100))));
  Bench.Test.create ~name:"lumberhack_Prime_nofib" (fun () -> ignore (let open Module_lumberhack in ((testPrime_nofib__d0 100))));
  Bench.Test.create ~name:"lumberhack_pop_out_Prime_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testPrime_nofib__d0 100))));
])
