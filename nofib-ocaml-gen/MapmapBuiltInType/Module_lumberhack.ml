

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map__d1 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (fun f_2 -> 
            (`LH_C((f_2 h_1), ((map__d0 f_2) t_1))))))
    | `LH_N -> 
      (fun f_3 -> 
        (`LH_N)))
and testMapmapBuiltInType__d0 _lh_testMapmapBuiltInType_arg1_0 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) _lh_testMapmapBuiltInType_arg1_0));;
end;;

