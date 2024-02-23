

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec map_lh__d1 f_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_0 h_1), ((map_lh__d1 f_0) t_1)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d1 a_1 b_0 =
  (if (a_1 <= b_0) then
    (`LH_C(a_1, ((enumFromTo_lh__d1 (a_1 + 1)) b_0)))
  else
    (`LH_N));;
let rec sumAux_lh__d1 ls_0 a_0 =
  (match ls_0 with
    | `LH_N -> 
      a_0
    | `LH_C(h_0, t_0) -> 
      ((sumAux_lh__d1 t_0) (a_0 + h_0)));;
let rec sum_lh__d1 ls_2 =
  ((sumAux_lh__d1 ls_2) 0);;
let rec testSumMapEnumBuiltInType_lh__d1 _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum_lh__d1 ((map_lh__d1 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_lh__d1 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
let run () = 1 + (Obj.magic ((testSumMapEnumBuiltInType_lh__d1 300000)));
end;;

