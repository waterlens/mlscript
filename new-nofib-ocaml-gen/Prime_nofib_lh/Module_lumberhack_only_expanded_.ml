

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec map_lz_lh__d1 f_2 ls_3 =
  (lazy (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_3) -> 
      (`LH_C((f_2 h_3), ((map_lz_lh__d1 f_2) t_3)))
    | `LH_N -> 
      (`LH_N)));;
let rec atIndex_lz_lh__d1 n_0 ls_2 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2) with
      | `LH_C(h_2, t_2) -> 
        (if (n_0 = 0) then
          h_2
        else
          ((atIndex_lz_lh__d1 (n_0 - 1)) t_2))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec iterate_lh__d1 f_1 x_0 =
  (lazy (`LH_C(x_0, ((iterate_lh__d1 f_1) (f_1 x_0)))));;
let rec filter_lh__d1 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (`LH_C(h_0, ((filter_lh__d1 f_0) t_0)))
      else
        ((filter_lh__d1 f_0) t_0))
    | `LH_N -> 
      (`LH_N));;
let rec isdivs_lh__d1 _lh_isdivs_arg1_0 _lh_isdivs_arg2_0 =
  ((_lh_isdivs_arg2_0 mod _lh_isdivs_arg1_0) <> 0);;
let rec the_filter_lh__d1 _lh_the_filter_arg1_0 =
  (match _lh_the_filter_arg1_0 with
    | `LH_C(_lh_the_filter_LH_C_0_0, _lh_the_filter_LH_C_1_0) -> 
      ((filter_lh__d1 (isdivs_lh__d1 _lh_the_filter_LH_C_0_0)) _lh_the_filter_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec head_lh__d1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec prime_lh__d1 _lh_prime_arg1_0 =
  ((atIndex_lz_lh__d1 _lh_prime_arg1_0) ((map_lz_lh__d1 head_lh__d1) ((iterate_lh__d1 the_filter_lh__d1) ((enumFromTo_lh__d1 2) (_lh_prime_arg1_0 * _lh_prime_arg1_0)))));;
let rec testPrime_nofib_lh__d1 _lh_testPrime_nofib_arg1_0 =
  (prime_lh__d1 _lh_testPrime_nofib_arg1_0);;
end;;

