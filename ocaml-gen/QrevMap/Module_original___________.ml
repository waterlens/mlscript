
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original___________(LH_Dum: sig end): sig val run: unit -> int val run_manual: unit -> int end = struct
let rec _lhManualQrevMap f_1 xs_1 a_2 =
  (match xs_1 with
    | `C(h_2, t_2) -> 
      (((_lhManualQrevMap f_1) t_2) (`C((f_1 h_2), a_2)))
    | `N -> 
      a_2);;
let rec testManual ls_1 =
  (((_lhManualQrevMap (fun x_1 -> 
    (x_1 + 1))) ls_1) (`N));;
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec qrev a_1 ys_0 =
  (match ys_0 with
    | `C(h_1, t_1) -> 
      ((qrev (`C(h_1, a_1))) t_1)
    | `N -> 
      a_1);;
let rec map f_0 xs_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N));;
let rec testQrevMap ls_0 =
  ((qrev (`N)) ((map (fun x_0 -> 
    (x_0 + 1))) ls_0));;
let run () = 1 + (Obj.magic ((testQrevMap ((enumFromTo 1) 10000))));
let run_manual () = 1 + (Obj.magic ((testManual ((enumFromTo 1) 10000))));
end;;

