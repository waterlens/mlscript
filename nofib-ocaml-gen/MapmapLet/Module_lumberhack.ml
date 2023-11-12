

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map__d0 f_3 ls_2 =
  (ls_2 f_3);;
let rec map__d1 f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (let rec r_0 = (f_0 h_0) in
        (let rec t_1 = ((map__d1 f_0) t_0) in
          (let rec h_1 = r_0 in
            (fun f_1 -> 
              (let rec r_1 = (f_1 h_1) in
                (`C(r_1, ((map__d0 f_1) t_1))))))))
    | `N -> 
      (fun f_2 -> 
        (`N)))
and testMapmapLet__d0 ls_1 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) ls_1));;
end;;

