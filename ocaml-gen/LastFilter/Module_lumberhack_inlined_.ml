

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec filter ls_5 f_2 =
  (match ls_5 with
    | `C(h_4, t_4) -> 
      (if (f_2 h_4) then
        (`C(h_4, ((filter t_4) f_2)))
      else
        ((filter t_4) f_2))
    | `N -> 
      (`N));;
let rec last a_2 ls_4 =
  (match ls_4 with
    | `N -> 
      a_2
    | `C(h_3, t_3) -> 
      ((last h_3) t_3));;
let rec lastDrive ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`Some(((last h_0) t_0)))
    | `N -> 
      (`None));;
let rec testLastFilter ls_1 =
  (lastDrive ((filter ls_1) (fun x_0 -> 
    (x_0 < 1000))));;
let rec _lhManualLastFilter ls_2 f_0 a_0 =
  (match ls_2 with
    | `C(h_1, t_1) -> 
      (if (f_0 h_1) then
        (((_lhManualLastFilter t_1) f_0) h_1)
      else
        (((_lhManualLastFilter t_1) f_0) a_0))
    | `N -> 
      a_0);;
let rec _lhManualLastFilterDrive ls_3 f_1 =
  (match ls_3 with
    | `C(h_2, t_2) -> 
      (if (f_1 h_2) then
        (let rec a_1 = (((_lhManualLastFilter t_2) f_1) h_2) in
          (`Some(a_1)))
      else
        ((_lhManualLastFilterDrive t_2) f_1))
    | `N -> 
      (`None));;
let rec testManual ls_6 =
  ((_lhManualLastFilterDrive ls_6) (fun x_1 -> 
    (x_1 < 1000)));;
let rec enumFromTo a_3 b_0 =
  (if (a_3 <= b_0) then
    (`C(a_3, ((enumFromTo (a_3 + 1)) b_0)))
  else
    (`N));;
let run () = 1 + (Obj.magic ((testLastFilter ((enumFromTo 1) 500000))));
end;;

