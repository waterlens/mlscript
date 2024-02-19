

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_(LH_Dum: sig end) = struct
let rec sum ls_1 =
  (ls_1 0);;
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_1 -> 
          (let rec t_1 = (t_0 f_1) in
            (let rec h_1 = (f_1 h_0) in
              (fun acc_1 -> 
                (t_1 (acc_1 + h_1))))))))
  else
    (fun f_2 acc_2 -> 
      acc_2));;
let rec testSumMapEnumSumAcc n_0 =
  (sum (((enumFromTo 1) n_0) (fun x_0 -> 
    (x_0 * x_0))));;
end;;

