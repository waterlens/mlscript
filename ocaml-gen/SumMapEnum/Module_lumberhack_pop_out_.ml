

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_(LH_Dum: sig end) = struct
let rec map f_0 ls_0 =
  (ls_0 f_0);;
let rec sum ls_1 =
  (ls_1 99);;
let rec enumFromTo a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec t_1 = ((map _lh_popOutId_0_0) t_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            (h_1 + (sum t_1))))))
  else
    0);;
let rec testSumMapEnum n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)));;
end;;

