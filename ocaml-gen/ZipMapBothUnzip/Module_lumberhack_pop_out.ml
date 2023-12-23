

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec map__d0 f_4 ls_1 =
  (ls_1 f_4);;
let rec zip__d0 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec map__d1 f_5 ls_2 =
  (ls_2 f_5);;
let rec unzip__d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (match h_0 with
        | `Pair(a_0, b_0) -> 
          (match (unzip__d0 t_0) with
            | `Pair(atail_0, btail_0) -> 
              (`Pair((let rec t_1 = atail_0 in
                (let rec h_1 = a_0 in
                  (fun f_0 -> 
                    (let rec xt_0 = ((map__d0 f_0) t_1) in
                      (let rec x_0 = (f_0 h_1) in
                        (fun ys_0 -> 
                          ((ys_0 xt_0) x_0))))))), (let rec t_2 = btail_0 in
                (let rec h_2 = b_0 in
                  (fun f_1 -> 
                    (let rec yt_0 = ((map__d1 f_1) t_2) in
                      (let rec y_0 = (f_1 h_2) in
                        (fun xt_1 x_1 -> 
                          (`C((`Pair(x_1, y_0)), ((zip__d0 xt_1) yt_0)))))))))))))
    | `N -> 
      (`Pair((fun f_2 ys_1 -> 
        (`N)), (fun f_3 xt_2 x_2 -> 
        (`N)))));;
let rec makeZippedList__d0 n_0 =
  (if (n_0 > 0) then
    (`C((`Pair(n_0, (n_0 + 1))), (makeZippedList__d0 (n_0 - 1))))
  else
    (`N));;
let rec testZipMapBothUnzip__d0 n_1 =
  (match (unzip__d0 (makeZippedList__d0 n_1)) with
    | `Pair(xs_1, ys_3) -> 
      ((zip__d0 ((map__d0 (fun x_3 -> 
        (x_3 + 1))) xs_1)) ((map__d1 (fun x_4 -> 
        (x_4 * x_4))) ys_3)));;
end;;

