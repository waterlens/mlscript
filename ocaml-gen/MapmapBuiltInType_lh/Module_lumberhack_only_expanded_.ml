

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map_lh__d2 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d2 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d1 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_1 h_1), ((map_lh__d1 f_1) t_1)))
    | `LH_N -> 
      (`LH_N));;
let rec testMapmapBuiltInType_lh__d1 _lh_testMapmapBuiltInType_arg1_0 =
  ((map_lh__d2 (fun x_0 -> 
    (x_0 + 1))) ((map_lh__d1 (fun x_1 -> 
    (x_1 * x_1))) _lh_testMapmapBuiltInType_arg1_0));;
let run () = 1 + (Obj.magic ((testMapmapBuiltInType_lh__d1 ((enumFromTo_lh__d1 1) 100000))));
end;;

