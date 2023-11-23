

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec flip__d0 t_0 =
  (t_0 99);;
let rec genTree__d0 n_0 i_0 =
  (if (n_0 <= 0) then
    (`N(i_0))
  else
    (`T(((genTree__d0 (n_0 - 1)) i_0), ((genTree__d0 (n_0 - 1)) (i_0 + 1)))));;
let rec ff__d0 t_2 =
  (flip__d0 (flip__d1 t_2))
and flip__d1 t_1 =
  (match t_1 with
    | `T(l_0, r_0) -> 
      (let rec r_1 = (flip__d1 l_0) in
        (let rec l_1 = (flip__d1 r_0) in
          (fun _lh_dummy_0 -> 
            (`T((flip__d0 r_1), (flip__d0 l_1))))))
    | `N(v_0) -> 
      (let rec v_1 = v_0 in
        (fun _lh_dummy_1 -> 
          (`N(v_1)))))
and testFlipFlip__d0 t_3 =
  (ff__d0 t_3);;
end;;

