

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec testMapmapBuiltInType_lh _lh_testMapmapBuiltInType_arg1_0 =
  ((map_lh (fun x_0 -> 
    (x_0 + 1))) ((map_lh (fun x_1 -> 
    (x_1 * x_1))) _lh_testMapmapBuiltInType_arg1_0));;
end;;

