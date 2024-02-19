

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_(LH_Dum: sig end) = struct
let rec _lhManualQrevMap f_1 xs_1 a_2 =
  (match xs_1 with
    | `C(h_2, t_2) -> 
      (((_lhManualQrevMap f_1) t_2) (`C((f_1 h_2), a_2)))
    | `N -> 
      a_2);;
let rec testManual ls_1 =
  (((_lhManualQrevMap (fun x_1 -> 
    (x_1 + 1))) ls_1) (`N));;
let rec map f_0 xs_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (fun a_0 -> 
            (t_1 (`C(h_1, a_0))))))
    | `N -> 
      (fun a_1 -> 
        a_1));;
let rec testQrevMap ls_0 =
  (((map (fun x_0 -> 
    (x_0 + 1))) ls_0) (`N));;
let rec enumFromTo a_4 b_0 =
  (if (a_4 <= b_0) then
    (`C(a_4, ((enumFromTo (a_4 + 1)) b_0)))
  else
    (`N));;
end;;

