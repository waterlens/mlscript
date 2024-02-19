

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________(LH_Dum: sig end) = struct
let rec map f_0 ls_0 =
  (ls_0 f_0);;
let rec summ acc_0 ls_2 =
  (ls_2 acc_0);;
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_1 -> 
          (let rec t_1 = ((map f_1) t_0) in
            (let rec h_1 = (f_1 h_0) in
              (fun acc_1 -> 
                ((summ (acc_1 + h_1)) t_1)))))))
  else
    (fun f_2 acc_2 -> 
      acc_2));;
let rec sum ls_1 =
  ((summ 0) ls_1);;
let rec testSumMapEnumSumAcc n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)));;
end;;

