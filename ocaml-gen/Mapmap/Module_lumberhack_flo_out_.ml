

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_(LH_Dum: sig end) = struct
let rec _lhManual ls_2 f1_0 f2_0 =
  (match ls_2 with
    | `C(h_1, t_1) -> 
      (`C((f2_0 (f1_0 h_1)), (((_lhManual t_1) f1_0) f2_0)))
    | `N -> 
      (`N));;
let rec testManual ls_3 =
  (((_lhManual ls_3) (fun x_2 -> 
    (x_2 * x_2))) (fun x_3 -> 
    (x_3 + 1)));;
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N));;
let rec testMapmap ls_1 =
  ((map (fun x_0 -> 
    (x_0 + 1))) ((map (fun x_1 -> 
    (x_1 * x_1))) ls_1));;
end;;

