

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_1 -> 
          (let rec t_1 = (t_0 f_1) in
            (let rec h_1 = (f_1 h_0) in
              (fun _lh_dummy_0 -> 
                (h_1 + (t_1 99))))))))
  else
    (fun f_2 _lh_dummy_1 -> 
      0));;
let rec testSumMapEnum n_0 =
  ((((enumFromTo 1) n_0) (fun x_0 -> 
    (x_0 * x_0))) 99);;
let run () = 1 + (Obj.magic ((testSumMapEnum 300000)));
end;;

