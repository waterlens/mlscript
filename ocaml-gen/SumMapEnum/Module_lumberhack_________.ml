

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec map f_0 ls_0 =
  (ls_0 f_0);;
let rec sum ls_1 =
  (ls_1 99);;
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_1 -> 
          (let rec t_1 = ((map f_1) t_0) in
            (let rec h_1 = (f_1 h_0) in
              (fun _lh_dummy_0 -> 
                (h_1 + (sum t_1))))))))
  else
    (fun f_2 _lh_dummy_1 -> 
      0));;
let rec testSumMapEnum n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)));;
let run () = 1 + (Obj.magic ((testSumMapEnum 300000)));
end;;

