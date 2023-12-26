

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________ = struct
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_1 ls_2 =
  (match ls_2 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map__d1 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (fun f_2 -> 
            (`C((f_2 h_1), ((map__d0 f_2) t_1))))))
    | `N -> 
      (fun f_3 -> 
        (`N)));;
let rec testMapmap__d0 ls_1 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) ls_1));;
let rec enumFromTo__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`C(a_1, ((enumFromTo__d0 (a_1 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d1 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec _lhManual__d0 ls_4 f1_0 f2_0 =
  (match ls_4 with
    | `C(h_2, t_2) -> 
      (`C((f2_0 (f1_0 h_2)), (((_lhManual__d0 t_2) f1_0) f2_0)))
    | `N -> 
      (`N));;
let rec testManual__d0 ls_3 =
  (((_lhManual__d0 ls_3) (fun x_2 -> 
    (x_2 * x_2))) (fun x_3 -> 
    (x_3 + 1)));;
end;;

