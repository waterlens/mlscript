

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec summ__d0 acc_2 ls_2 =
  (ls_2 acc_2);;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_1 -> 
          (let rec t_1 = ((map__d0 f_1) t_0) in
            (let rec h_1 = (f_1 h_0) in
              (fun acc_0 -> 
                ((summ__d0 (acc_0 + h_1)) t_1)))))))
  else
    (fun f_2 acc_1 -> 
      acc_1))
and sum__d0 ls_1 =
  ((summ__d0 0) ls_1)
and testSumMapEnumSumAcc__d0 n_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) n_0)));;
end;;

