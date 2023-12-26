

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map_lz_lh f_2 ls_1 =
  (lazy ((Lazy.force ls_1) f_2));;
let rec atIndex_lz_lh n_1 ls_2 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_2) n_1));;
let rec iterate_lh f_0 x_0 =
  (lazy (let rec t_0 = ((iterate_lh f_0) (f_0 x_0)) in
    (let rec h_0 = x_0 in
      (fun f_1 -> 
        (let rec t_1 = ((map_lz_lh f_1) t_0) in
          (let rec h_1 = (f_1 h_0) in
            (fun n_0 -> 
              (if (n_0 = 0) then
                h_1
              else
                ((atIndex_lz_lh (n_0 - 1)) t_1)))))))));;
let rec filter_lh f_3 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (if (f_3 h_3) then
        (`LH_C(h_3, ((filter_lh f_3) t_3)))
      else
        ((filter_lh f_3) t_3))
    | `LH_N -> 
      (`LH_N));;
let rec isdivs_lh _lh_isdivs_arg1_0 _lh_isdivs_arg2_0 =
  ((_lh_isdivs_arg2_0 mod _lh_isdivs_arg1_0) <> 0);;
let rec the_filter_lh _lh_the_filter_arg1_0 =
  (match _lh_the_filter_arg1_0 with
    | `LH_C(_lh_the_filter_LH_C_0_0, _lh_the_filter_LH_C_1_0) -> 
      ((filter_lh (isdivs_lh _lh_the_filter_LH_C_0_0)) _lh_the_filter_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec head_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_2, t_2) -> 
      h_2
    | `LH_N -> 
      (failwith "error"));;
let rec prime_lh _lh_prime_arg1_0 =
  ((atIndex_lz_lh _lh_prime_arg1_0) ((map_lz_lh head_lh) ((iterate_lh the_filter_lh) ((enumFromTo_lh 2) (_lh_prime_arg1_0 * _lh_prime_arg1_0)))));;
let rec testPrime_nofib_lh _lh_testPrime_nofib_arg1_0 =
  (prime_lh _lh_testPrime_nofib_arg1_0);;
end;;

