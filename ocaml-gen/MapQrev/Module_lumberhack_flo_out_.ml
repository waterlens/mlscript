

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_(LH_Dum: sig end) = struct
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec qrev a_1 ys_0 =
  (match ys_0 with
    | `C(h_0, t_0) -> 
      ((qrev (let rec t_1 = a_1 in
        (let rec h_1 = h_0 in
          (fun f_1 -> 
            (`C((f_1 h_1), (t_1 f_1))))))) t_0)
    | `N -> 
      a_1);;
let rec testMapQrev ls_0 =
  (((qrev (fun f_2 -> 
    (`N))) ls_0) (fun x_0 -> 
    (x_0 + 1)));;
end;;

