

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec sumAux_lh__d1 ls_2 a_3 =
  (ls_2 a_3);;
let rec map_lh__d1 f_0 ls_1 =
  (ls_1 f_0);;
let rec enumFromTo_lh__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec t_1 = ((map_lh__d1 _lh_popOutId_0_0) t_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            ((sumAux_lh__d1 t_1) (_lh_popOutId_1_0 + h_1))))))
  else
    _lh_popOutId_1_0);;
let rec sum_lh__d1 ls_0 =
  ((sumAux_lh__d1 ls_0) 0);;
let rec testSumMapEnumBuiltInType_lh__d1 _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum_lh__d1 ((map_lh__d1 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_lh__d1 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
let run () = 1 + (Obj.magic ((testSumMapEnumBuiltInType_lh__d1 300000)));
end;;

