

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec enumFromTo a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec t_1 = (t_0 _lh_popOutId_0_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            (h_1 + (t_1 99))))))
  else
    0);;
let rec testSumMapEnum n_0 =
  ((((enumFromTo 1) n_0) (fun x_0 -> 
    (x_0 * x_0))) 99);;
let run () = 1 + (Obj.magic ((testSumMapEnum 300000)));
end;;

