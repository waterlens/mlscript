

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_(LH_Dum: sig end) = struct
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec foldl f_3 s_2 ls_1 =
  ((ls_1 f_3) s_2);;
let rec map f_0 ls_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (((foldl _lh_popOutId_0_0) ((_lh_popOutId_0_0 _lh_popOutId_1_0) h_1)) t_1)))
    | `N -> 
      _lh_popOutId_1_0);;
let rec testFoldMap n_0 =
  (((foldl (fun i_0 x_0 -> 
    (i_0 + x_0))) 0) ((map (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo 1) n_0)));;
end;;

