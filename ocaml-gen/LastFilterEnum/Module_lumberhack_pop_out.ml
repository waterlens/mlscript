

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec filter__d0 ls_1 f_0 =
  (ls_1 f_0);;
let rec last__d0 a_0 ls_2 =
  (match ls_2 with
    | `N -> 
      a_0
    | `C(h_1, t_1) -> 
      ((last__d0 h_1) t_1));;
let rec lastDrive__d0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`Some(((last__d0 h_0) t_0)))
    | `N -> 
      (`None));;
let rec enumFromTo__d0 a_1 b_0 _lh_popOutId_0_0 =
  (if (a_1 <= b_0) then
    (let rec t_2 = ((enumFromTo__d0 (a_1 + 1)) b_0) in
      (let rec h_2 = a_1 in
        (if (_lh_popOutId_0_0 h_2) then
          (`C(h_2, ((filter__d0 t_2) _lh_popOutId_0_0)))
        else
          ((filter__d0 t_2) _lh_popOutId_0_0))))
  else
    (`N));;
let rec testLastFilterEnum__d0 n_0 =
  (lastDrive__d0 ((filter__d0 ((enumFromTo__d0 1) n_0)) (fun x_0 -> 
    (x_0 < 1000))));;
end;;

