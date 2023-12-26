

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________ = struct
let rec qrev__d0 a_5 ys_0 =
  (ys_0 a_5);;
let rec map__d0 f_0 xs_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map__d0 f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (fun a_0 -> 
            ((qrev__d0 (`C(h_1, a_0))) t_1))))
    | `N -> 
      (fun a_1 -> 
        a_1));;
let rec testQrevMap__d0 ls_0 =
  ((qrev__d0 (`N)) ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ls_0));;
let rec enumFromTo__d0 a_3 b_1 =
  (if (a_3 <= b_1) then
    (`C(a_3, ((enumFromTo__d0 (a_3 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo__d1 a_2 b_0 =
  (if (a_2 <= b_0) then
    (`C(a_2, ((enumFromTo__d1 (a_2 + 1)) b_0)))
  else
    (`N));;
let rec _lhManualQrevMap__d0 f_1 xs_1 a_4 =
  (match xs_1 with
    | `C(h_2, t_2) -> 
      (((_lhManualQrevMap__d0 f_1) t_2) (`C((f_1 h_2), a_4)))
    | `N -> 
      a_4);;
let rec testManual__d0 ls_1 =
  (((_lhManualQrevMap__d0 (fun x_1 -> 
    (x_1 + 1))) ls_1) (`N));;
end;;

