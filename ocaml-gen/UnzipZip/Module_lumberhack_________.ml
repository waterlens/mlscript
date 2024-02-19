

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________(LH_Dum: sig end) = struct
let rec unzip ls_0 =
  (ls_0 99);;
let rec zip xs_0 ys_0 =
  (match xs_0 with
    | `C(x_0, xt_0) -> 
      (match ys_0 with
        | `C(y_0, yt_0) -> 
          (let rec t_0 = ((zip xt_0) yt_0) in
            (let rec h_0 = (let rec b_0 = y_0 in
              (let rec a_0 = x_0 in
                (fun t_1 -> 
                  (match (unzip t_1) with
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
let rec enumFromTo a_1 b_1 =
  (if (a_1 < b_1) then
    (`C(a_1, ((enumFromTo (a_1 + 1)) b_1)))
  else
    (`N));;
let rec testUnzipZip n_0 =
  (unzip ((zip ((enumFromTo 1) n_0)) ((enumFromTo 2) (n_0 + 3))));;
end;;

