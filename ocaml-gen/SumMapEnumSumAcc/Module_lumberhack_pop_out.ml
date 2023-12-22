

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec summ__d0 acc_2 ls_2 =
  (ls_2 acc_2);;
let rec enumFromTo__d0 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec t_1 = ((map__d0 _lh_popOutId_0_0) t_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            ((summ__d0 (_lh_popOutId_1_0 + h_1)) t_1)))))
  else
    _lh_popOutId_1_0);;
let rec sum__d0 ls_1 =
  ((summ__d0 0) ls_1);;
let rec testSumMapEnumSumAcc__d0 n_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) n_0)));;
end;;

