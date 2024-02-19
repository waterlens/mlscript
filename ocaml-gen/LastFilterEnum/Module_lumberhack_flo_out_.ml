

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_(LH_Dum: sig end) = struct
let rec last a_0 ls_1 =
  (match ls_1 with
    | `N -> 
      a_0
    | `C(h_1, t_1) -> 
      ((last h_1) t_1));;
let rec lastDrive ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`Some(((last h_0) t_0)))
    | `N -> 
      (`None));;
let rec enumFromTo a_1 b_0 _lh_popOutId_0_0 =
  (if (a_1 <= b_0) then
    (let rec t_2 = ((enumFromTo (a_1 + 1)) b_0) in
      (let rec h_2 = a_1 in
        (if (_lh_popOutId_0_0 h_2) then
          (`C(h_2, (t_2 _lh_popOutId_0_0)))
        else
          (t_2 _lh_popOutId_0_0))))
  else
    (`N));;
let rec testLastFilterEnum n_0 =
  (lastDrive (((enumFromTo 1) n_0) (fun x_0 -> 
    (x_0 < 1000))));;
end;;

