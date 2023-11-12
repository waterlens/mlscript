

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec enumFromTo__d0 a_4 b_1 =
  (if (a_4 <= b_1) then
    (`C(a_4, ((enumFromTo__d0 (a_4 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo__d1 a_2 b_0 =
  (if (a_2 <= b_0) then
    (`C(a_2, ((enumFromTo__d1 (a_2 + 1)) b_0)))
  else
    (`N));;
let rec lastDrive__d0 ls_0 =
  (ls_0 99);;
let rec last__d0 a_5 ls_6 =
  (ls_6 a_5);;
let rec filter__d0 ls_2 f_1 =
  (match ls_2 with
    | `C(h_2, t_2) -> 
      (if (f_1 h_2) then
        (let rec t_3 = ((filter__d1 t_2) f_1) in
          (let rec h_3 = h_2 in
            (fun _lh_dummy_0 -> 
              (`Some(((last__d0 h_3) t_3))))))
      else
        ((filter__d0 t_2) f_1))
    | `N -> 
      (fun _lh_dummy_1 -> 
        (`None)))
and filter__d1 ls_1 f_0 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (let rec t_1 = ((filter__d1 t_0) f_0) in
          (let rec h_1 = h_0 in
            (fun a_0 -> 
              ((last__d0 h_1) t_1))))
      else
        ((filter__d1 t_0) f_0))
    | `N -> 
      (fun a_1 -> 
        a_1))
and testLastFilter__d0 ls_5 =
  (lastDrive__d0 ((filter__d0 ls_5) (fun x_1 -> 
    (x_1 < 1000))));;
end;;

