

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________ = struct
let rec enumFromTo__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d1 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec enumFromTo__d0 a_2 b_1 =
  (if (a_2 <= b_1) then
    (`C(a_2, ((enumFromTo__d0 (a_2 + 1)) b_1)))
  else
    (`N));;
let rec _lhManualLastFilter__d0 ls_6 f_2 a_4 =
  (match ls_6 with
    | `C(h_4, t_4) -> 
      (if (f_2 h_4) then
        (((_lhManualLastFilter__d0 t_4) f_2) h_4)
      else
        (((_lhManualLastFilter__d0 t_4) f_2) a_4))
    | `N -> 
      a_4);;
let rec _lhManualLastFilterDrive__d0 ls_3 f_1 =
  (match ls_3 with
    | `C(h_2, t_2) -> 
      (if (f_1 h_2) then
        (let rec a_1 = (((_lhManualLastFilter__d0 t_2) f_1) h_2) in
          (`Some(a_1)))
      else
        ((_lhManualLastFilterDrive__d0 t_2) f_1))
    | `N -> 
      (`None));;
let rec testManual__d0 ls_2 =
  ((_lhManualLastFilterDrive__d0 ls_2) (fun x_0 -> 
    (x_0 < 1000)));;
let rec last__d0 a_3 ls_5 =
  (match ls_5 with
    | `N -> 
      a_3
    | `C(h_3, t_3) -> 
      ((last__d0 h_3) t_3));;
let rec lastDrive__d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`Some(((last__d0 h_0) t_0)))
    | `N -> 
      (`None));;
let rec filter__d0 ls_1 f_0 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (if (f_0 h_1) then
        (`C(h_1, ((filter__d0 t_1) f_0)))
      else
        ((filter__d0 t_1) f_0))
    | `N -> 
      (`N));;
let rec testLastFilter__d0 ls_4 =
  (lastDrive__d0 ((filter__d0 ls_4) (fun x_1 -> 
    (x_1 < 1000))));;
end;;

