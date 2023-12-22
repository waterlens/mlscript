

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec sum__d0 ls_1 =
  (ls_1 99);;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_1 -> 
          (let rec t_1 = ((map__d0 f_1) t_0) in
            (let rec h_1 = (f_1 h_0) in
              (fun _lh_dummy_0 -> 
                (h_1 + (sum__d0 t_1))))))))
  else
    (fun f_2 _lh_dummy_1 -> 
      0));;
let rec testSumMapEnum__d0 n_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) n_0)));;
end;;

