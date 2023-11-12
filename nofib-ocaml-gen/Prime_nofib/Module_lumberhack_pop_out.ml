

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
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

