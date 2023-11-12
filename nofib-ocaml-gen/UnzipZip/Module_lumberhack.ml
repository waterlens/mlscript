

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec enumFromTo__d0 a_2 b_2 =
  (if (a_2 < b_2) then
    (`C(a_2, ((enumFromTo__d0 (a_2 + 1)) b_2)))
  else
    (`N));;
let rec enumFromTo__d1 a_1 b_1 =
  (if (a_1 < b_1) then
    (`C(a_1, ((enumFromTo__d1 (a_1 + 1)) b_1)))
  else
    (`N));;
let rec unzip__d0 ls_0 =
  (ls_0 99);;
let rec testUnzipZip__d0 n_0 =
  (unzip__d0 ((zip__d0 ((enumFromTo__d0 1) n_0)) ((enumFromTo__d1 2) (n_0 + 3))))
and zip__d0 xs_0 ys_0 =
  (match xs_0 with
    | `C(x_0, xt_0) -> 
      (match ys_0 with
        | `C(y_0, yt_0) -> 
          (let rec t_0 = ((zip__d0 xt_0) yt_0) in
            (let rec h_0 = (let rec b_0 = y_0 in
              (let rec a_0 = x_0 in
                (fun t_1 -> 
                  (match (unzip__d0 t_1) with
                    | `Pair(atail_0, btail_0) -> 
                      (`Pair((`C(a_0, atail_0)), (`C(b_0, btail_0)))))))) in
              (fun _lh_dummy_0 -> 
                (h_0 t_0))))
        | `N -> 
          (fun _lh_dummy_1 -> 
            (`Pair((`N), (`N)))))
    | `N -> 
      (fun _lh_dummy_2 -> 
        (`Pair((`N), (`N)))));;
end;;

