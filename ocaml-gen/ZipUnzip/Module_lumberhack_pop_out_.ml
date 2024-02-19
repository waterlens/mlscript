

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_(LH_Dum: sig end) = struct
let rec makeZippedList n_0 =
  (if (n_0 > 0) then
    (`C((`Pair(n_0, (n_0 + 1))), (makeZippedList (n_0 - 1))))
  else
    (`N));;
let rec zip xs_0 ys_0 =
  (xs_0 ys_0);;
let rec unzip ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec xt_0 = atail_0 in
                (let rec x_0 = a_0 in
                  (fun ys_1 -> 
                    ((ys_1 xt_0) x_0)))), (let rec yt_0 = btail_0 in
                (let rec y_0 = b_0 in
                  (fun xt_1 x_1 -> 
                    (`C((`Pair(x_1, y_0)), ((zip xt_1) yt_0))))))))))
    | `N -> 
      (`Pair((fun ys_2 -> 
        (`N)), (fun xt_2 x_2 -> 
        (`N)))));;
let rec testZipUnzip n_1 =
  (match (unzip (makeZippedList n_1)) with
    | `Pair(xs_1, ys_3) -> 
      ((zip xs_1) ys_3));;
end;;

