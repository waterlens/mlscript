

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec foldl__d0 f_0 s_0 ls_0 =
  ((ls_0 f_0) s_0);;
let rec map__d0 f_1 ls_1 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map__d0 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (((foldl__d0 _lh_popOutId_0_0) ((_lh_popOutId_0_0 _lh_popOutId_1_0) h_1)) t_1)))
    | `N -> 
      _lh_popOutId_1_0);;
let rec testFoldMap__d0 n_0 =
  (((foldl__d0 (fun i_0 x_0 -> 
    (i_0 + x_0))) 0) ((map__d0 (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo__d0 1) n_0)));;
end;;

