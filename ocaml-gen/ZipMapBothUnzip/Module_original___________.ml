
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original___________(LH_Dum: sig end) = struct
let rec map f_0 ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (`C((f_0 h_1), ((map f_0) t_1)))
    | `N -> 
      (`N));;
let rec makeZippedList n_0 =
  (if (n_0 > 0) then
    (`C((`Pair(n_0, (n_0 + 1))), (makeZippedList (n_0 - 1))))
  else
    (`N));;
let rec zip xs_0 ys_0 =
  (match xs_0 with
    | `C(x_0, xt_0) -> 
      (match ys_0 with
        | `C(y_0, yt_0) -> 
          (`C((`Pair(x_0, y_0)), ((zip xt_0) yt_0)))
        | `N -> 
          (`N))
    | `N -> 
      (`N));;
let rec unzip ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((`C(a_0, atail_0)), (`C(b_0, btail_0))))))
    | `N -> 
      (`Pair((`N), (`N))));;
let rec testZipMapBothUnzip n_1 =
  (match (unzip (makeZippedList n_1)) with
    | `Pair(xs_1, ys_1) -> 
      ((zip ((map (fun x_1 -> 
        (x_1 + 1))) xs_1)) ((map (fun x_2 -> 
        (x_2 * x_2))) ys_1)));;
end;;

