

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_ = struct
let rec map f_0 ls_0 =
  (ls_0 f_0);;
let rec summ acc_0 ls_2 =
  (ls_2 acc_0);;
let rec enumFromTo a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec t_1 = ((map _lh_popOutId_0_0) t_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            ((summ (_lh_popOutId_1_0 + h_1)) t_1)))))
  else
    _lh_popOutId_1_0);;
let rec sum ls_1 =
  ((summ 0) ls_1);;
let rec testSumMapEnumSumAcc n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)));;
end;;

