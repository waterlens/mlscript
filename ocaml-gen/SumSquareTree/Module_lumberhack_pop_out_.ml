

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_(LH_Dum: sig end) = struct
let rec sumTree t_1 =
  (t_1 99);;
let rec sqTree t_0 _lh_popOutId_0_0 =
  (match t_0 with
    | `T(v_0, l_0, r_0) -> 
      (let rec r_1 = (sqTree r_0) in
        (let rec l_1 = (sqTree l_0) in
          (let rec v_1 = (v_0 * v_0) in
            ((v_1 + (sumTree l_1)) + (sumTree r_1)))))
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

