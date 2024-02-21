

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec _lhManualQrevMap f_1 xs_1 a_0 =
  (match xs_1 with
    | `C(h_2, t_2) -> 
      (((_lhManualQrevMap f_1) t_2) (`C((f_1 h_2), a_0)))
    | `N -> 
      a_0);;
let rec testManual ls_1 =
  (((_lhManualQrevMap (fun x_1 -> 
    (x_1 + 1))) ls_1) (`N));;
let rec map f_0 xs_0 _lh_popOutId_0_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (t_1 (`C(h_1, _lh_popOutId_0_0)))))
    | `N -> 
      _lh_popOutId_0_0);;
let rec testQrevMap ls_0 =
  (((map (fun x_0 -> 
    (x_0 + 1))) ls_0) (`N));;
let rec enumFromTo a_2 b_0 =
  (if (a_2 <= b_0) then
    (`C(a_2, ((enumFromTo (a_2 + 1)) b_0)))
  else
    (`N));;
let run () = 1 + (Obj.magic ((testQrevMap ((enumFromTo 1) 10000))));
end;;

