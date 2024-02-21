

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_________(LH_Dum: sig end): sig val run: unit -> int end = struct
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
let rec filter ls_2 f_0 =
  (ls_2 f_0);;
let rec enumFromTo a_1 b_0 =
  (if (a_1 <= b_0) then
    (let rec t_2 = ((enumFromTo (a_1 + 1)) b_0) in
      (let rec h_2 = a_1 in
        (fun f_1 -> 
          (if (f_1 h_2) then
            (`C(h_2, ((filter t_2) f_1)))
          else
            ((filter t_2) f_1)))))
  else
    (fun f_2 -> 
      (`N)));;
let rec testLastFilterEnum n_0 =
  (lastDrive ((filter ((enumFromTo 1) n_0)) (fun x_0 -> 
    (x_0 < 1000))));;
let run () = 1 + (Obj.magic ((testLastFilterEnum 500000)));
end;;

