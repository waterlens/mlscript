

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______ = struct
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec tx_2 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec hx_2 = a_1 in
        (fun ys_0 -> 
          ((ys_0 hx_2) tx_2))))
  else
    (fun ys_1 -> 
      (`LH_N)));;
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec ty_0 = ((enumFromTo_lh__d2 (a_0 + 1)) b_0) in
      (let rec hy_0 = a_0 in
        (fun hx_0 tx_0 -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), (tx_0 ty_0))))))
  else
    (fun hx_1 tx_1 -> 
      (`LH_N)));;
let rec testZipEnumEnum_lh__d1 _lh_testZipEnumEnum_arg1_0 =
  (((enumFromTo_lh__d1 1) _lh_testZipEnumEnum_arg1_0) ((enumFromTo_lh__d2 1) _lh_testZipEnumEnum_arg1_0));;
end;;

