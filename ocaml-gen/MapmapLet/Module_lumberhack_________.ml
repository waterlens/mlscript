

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________ = struct
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (let rec r_0 = (f_0 h_0) in
        (`C(r_0, ((map f_0) t_0))))
    | `N -> 
      (`N));;
let rec testMapmapLet ls_1 =
  ((map (fun x_0 -> 
    (x_0 + 1))) ((map (fun x_1 -> 
    (x_1 * x_1))) ls_1));;
end;;

