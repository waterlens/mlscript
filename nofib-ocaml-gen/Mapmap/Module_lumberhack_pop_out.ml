

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
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
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_1 ls_2 _lh_popOutId_0_0 =
  (match ls_2 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map__d1 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (`C((_lh_popOutId_0_0 h_1), ((map__d0 _lh_popOutId_0_0) t_1)))))
    | `N -> 
      (`N))
and testMapmap__d0 ls_1 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) ls_1));;
end;;

