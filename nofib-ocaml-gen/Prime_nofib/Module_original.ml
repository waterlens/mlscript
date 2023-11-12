
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
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

