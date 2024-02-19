
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original___________(LH_Dum: sig end) = struct
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map f_0 xs_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N));;
let rec qrev a_1 ys_0 =
  (match ys_0 with
    | `C(h_1, t_1) -> 
      ((qrev (`C(h_1, a_1))) t_1)
    | `N -> 
      a_1);;
let rec testMapQrev ls_0 =
  ((map (fun x_0 -> 
    (x_0 + 1))) ((qrev (`N)) ls_0));;
end;;

