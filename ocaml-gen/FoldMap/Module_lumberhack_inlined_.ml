

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_(LH_Dum: sig end) = struct
let rec map f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (fun f_1 s_0 -> 
            ((t_1 f_1) ((f_1 s_0) h_1)))))
    | `N -> 
      (fun f_2 s_1 -> 
        s_1));;
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec testFoldMap n_0 =
  ((((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)) (fun i_0 x_1 -> 
    (i_0 + x_1))) 0);;
end;;

