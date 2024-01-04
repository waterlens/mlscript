

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec zip_lh__d1 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec enumFromTo_lh__d2 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec ty_0 = ((enumFromTo_lh__d2 (a_0 + 1)) b_0) in
      (let rec hy_0 = a_0 in
        (`LH_C((`LH_P2(_lh_popOutId_0_0, hy_0)), ((zip_lh__d1 _lh_popOutId_1_0) ty_0)))))
  else
    (`LH_N));;
let rec enumFromTo_lh__d1 a_1 b_1 _lh_popOutId_0_1 =
  (if (a_1 <= b_1) then
    (let rec tx_2 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec hx_2 = a_1 in
        ((_lh_popOutId_0_1 hx_2) tx_2)))
  else
    (`LH_N));;
let rec testZipEnumEnum_lh__d1 _lh_testZipEnumEnum_arg1_0 =
  ((zip_lh__d1 ((enumFromTo_lh__d1 1) _lh_testZipEnumEnum_arg1_0)) ((enumFromTo_lh__d2 1) _lh_testZipEnumEnum_arg1_0));;
end;;

