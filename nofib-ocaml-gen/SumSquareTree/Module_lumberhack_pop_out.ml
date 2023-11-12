

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec genTree__d0 n_1 =
  (if (n_1 > 0) then
    (`T(n_1, (genTree__d0 (n_1 - 1)), (genTree__d0 (n_1 - 1))))
  else
    (`L));;
let rec sumTree__d0 t_0 =
  (t_0 99);;
let rec sqTree__d0 t_1 _lh_popOutId_0_0 =
  (match t_1 with
    | `T(v_0, l_0, r_0) -> 
      (let rec r_1 = (sqTree__d0 r_0) in
        (let rec l_1 = (sqTree__d0 l_0) in
          (let rec v_1 = (v_0 * v_0) in
            ((v_1 + (sumTree__d0 l_1)) + (sumTree__d0 r_1)))))
    | `L -> 
      0)
and testSumSquareTree__d0 n_0 =
  (sumTree__d0 (sqTree__d0 (genTree__d0 n_0)));;
end;;

