
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec sumAux_lh ls_2 a_1 =
  (match ls_2 with
    | `LH_N -> 
      a_1
    | `LH_C(h_1, t_1) -> 
      ((sumAux_lh t_1) (a_1 + h_1)));;
let rec sum_lh ls_1 =
  ((sumAux_lh ls_1) 0);;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec testSumMapEnumBuiltInType_lh _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum_lh ((map_lh (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_lh 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
let run () = 1 + (Obj.magic ((testSumMapEnumBuiltInType_lh 300000)));
end;;

