
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec sqTree t_0 =
  (match t_0 with
    | `T(v_0, l_0, r_0) -> 
      (`T((v_0 * v_0), (sqTree l_0), (sqTree r_0)))
    | `L -> 
      (`L));;
let rec sumTree t_1 =
  (match t_1 with
    | `T(v_1, l_1, r_1) -> 
      ((v_1 + (sumTree l_1)) + (sumTree r_1))
    | `L -> 
      0);;
let rec genTree n_0 =
  (if (n_0 > 0) then
    (`T(n_0, (genTree (n_0 - 1)), (genTree (n_0 - 1))))
  else
    (`L));;
let rec testSumSquareTree n_1 =
  (sumTree (sqTree (genTree n_1)));;
end;;

