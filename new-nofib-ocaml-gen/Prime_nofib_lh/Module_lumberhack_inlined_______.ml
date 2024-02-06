

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______ = struct
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec iterate_lh__d1 f_1 x_0 =
  (lazy (let rec t_0 = ((iterate_lh__d1 f_1) (f_1 x_0)) in
    (let rec h_0 = x_0 in
      (fun f_2 -> 
        (let rec t_1 = (lazy ((Lazy.force t_0) f_2)) in
          (let rec h_1 = (f_2 h_0) in
            (fun n_1 -> 
              (if (n_1 = 0) then
                h_1
              else
                (if ((n_1 - 1) < 0) then
                  (failwith "error")
                else
                  ((Lazy.force t_1) (n_1 - 1)))))))))));;
let rec head_lh__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec isdivs_lh__d1 _lh_isdivs_arg1_0 _lh_isdivs_arg2_0 =
  ((_lh_isdivs_arg2_0 mod _lh_isdivs_arg1_0) <> 0);;
let rec filter_lh__d1 f_3 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (if (f_3 h_2) then
        (`LH_C(h_2, ((filter_lh__d1 f_3) t_2)))
      else
        ((filter_lh__d1 f_3) t_2))
    | `LH_N -> 
      (`LH_N));;
let rec the_filter_lh__d1 _lh_the_filter_arg1_0 =
  (match _lh_the_filter_arg1_0 with
    | `LH_C(_lh_the_filter_LH_C_0_0, _lh_the_filter_LH_C_1_0) -> 
      ((filter_lh__d1 (isdivs_lh__d1 _lh_the_filter_LH_C_0_0)) _lh_the_filter_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec prime_lh__d1 _lh_prime_arg1_0 =
  (if (_lh_prime_arg1_0 < 0) then
    (failwith "error")
  else
    ((Lazy.force (lazy ((Lazy.force ((iterate_lh__d1 the_filter_lh__d1) ((enumFromTo_lh__d1 2) (_lh_prime_arg1_0 * _lh_prime_arg1_0)))) head_lh__d1))) _lh_prime_arg1_0));;
let rec testPrime_nofib_lh__d1 _lh_testPrime_nofib_arg1_0 =
  (prime_lh__d1 _lh_testPrime_nofib_arg1_0);;
end;;

