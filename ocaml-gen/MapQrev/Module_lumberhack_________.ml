

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________ = struct
let rec map__d0 f_2 xs_0 =
  (xs_0 f_2);;
let rec qrev__d0 a_1 ys_0 =
  (match ys_0 with
    | `C(h_0, t_0) -> 
      ((qrev__d0 (let rec t_1 = a_1 in
        (let rec h_1 = h_0 in
          (fun f_1 -> 
            (`C((f_1 h_1), ((map__d0 f_1) t_1))))))) t_0)
    | `N -> 
      a_1);;
let rec testMapQrev__d0 ls_0 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((qrev__d0 (fun f_0 -> 
    (`N))) ls_0));;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
end;;

