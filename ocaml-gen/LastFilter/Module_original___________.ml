
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original___________(LH_Dum: sig end): sig val run: unit -> int val run_manual: unit -> int end = struct
let rec _lhManualLastFilter ls_5 f_2 a_3 =
  (match ls_5 with
    | `C(h_4, t_4) -> 
      (if (f_2 h_4) then
        (((_lhManualLastFilter t_4) f_2) h_4)
      else
        (((_lhManualLastFilter t_4) f_2) a_3))
    | `N -> 
      a_3);;
let rec _lhManualLastFilterDrive ls_4 f_1 =
  (match ls_4 with
    | `C(h_3, t_3) -> 
      (if (f_1 h_3) then
        (let rec a_2 = (((_lhManualLastFilter t_3) f_1) h_3) in
          (`Some(a_2)))
      else
        ((_lhManualLastFilterDrive t_3) f_1))
    | `N -> 
      (`None));;
let rec testManual ls_6 =
  ((_lhManualLastFilterDrive ls_6) (fun x_1 -> 
    (x_1 < 1000)));;
let rec filter ls_0 f_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (`C(h_0, ((filter t_0) f_0)))
      else
        ((filter t_0) f_0))
    | `N -> 
      (`N));;
let rec last a_1 ls_2 =
  (match ls_2 with
    | `N -> 
      a_1
    | `C(h_2, t_2) -> 
      ((last h_2) t_2));;
let rec lastDrive ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (`Some(((last h_1) t_1)))
    | `N -> 
      (`None));;
let rec testLastFilter ls_3 =
  (lastDrive ((filter ls_3) (fun x_0 -> 
    (x_0 < 1000))));;
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let run () = 1 + (Obj.magic ((testLastFilter ((enumFromTo 1) 500000))));
let run_manual () = 1 + (Obj.magic ((testManual ((enumFromTo 1) 500000))));
end;;

