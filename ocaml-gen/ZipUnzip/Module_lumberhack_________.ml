

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________ = struct
let rec zip__d0 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec unzip__d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip__d0 t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec xt_0 = atail_0 in
                (let rec x_0 = a_0 in
                  (fun ys_1 -> 
                    ((ys_1 xt_0) x_0)))), (let rec yt_0 = btail_0 in
                (let rec y_0 = b_0 in
                  (fun xt_1 x_1 -> 
                    (`C((`Pair(x_1, y_0)), ((zip__d0 xt_1) yt_0))))))))))
    | `N -> 
      (`Pair((fun ys_2 -> 
        (`N)), (fun xt_2 x_2 -> 
        (`N)))));;
let rec makeZippedList__d0 n_1 =
  (if (n_1 > 0) then
    (`C((`Pair(n_1, (n_1 + 1))), (makeZippedList__d0 (n_1 - 1))))
  else
    (`N));;
let rec testZipUnzip__d0 n_0 =
  (match (unzip__d0 (makeZippedList__d0 n_0)) with
    | `Pair(xs_0, ys_0) -> 
      ((zip__d0 xs_0) ys_0));;
end;;

