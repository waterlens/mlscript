

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_(LH_Dum: sig end) = struct
let rec unzip ls_1 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec t_1 = atail_0 in
                (let rec h_1 = a_0 in
                  (fun f_1 -> 
                    (`C((f_1 h_1), (t_1 f_1)))))), (let rec t_2 = btail_0 in
                (let rec h_2 = b_0 in
                  (fun f_2 -> 
                    (`C((f_2 h_2), (t_2 f_2))))))))))
    | `N -> 
      (`Pair((fun f_3 -> 
        (`N)), (fun f_4 -> 
        (`N)))));;
let rec zip xs_1 ys_1 =
  (match xs_1 with
    | `C(x_2, xt_0) -> 
      (match ys_1 with
        | `C(y_0, yt_0) -> 
          (`C((`Pair(x_2, y_0)), ((zip xt_0) yt_0)))
        | `N -> 
          (`N))
    | `N -> 
      (`N));;
let rec makeZippedList n_1 =
  (if (n_1 > 0) then
    (`C((`Pair(n_1, (n_1 + 1))), (makeZippedList (n_1 - 1))))
  else
    (`N));;
let rec testZipMapBothUnzip n_0 =
  (match (unzip (makeZippedList n_0)) with
    | `Pair(xs_0, ys_0) -> 
      ((zip (xs_0 (fun x_0 -> 
        (x_0 + 1)))) (ys_0 (fun x_1 -> 
        (x_1 * x_1)))));;
end;;

