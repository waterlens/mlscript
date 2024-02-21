

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec genTree n_0 i_0 =
  (if (n_0 <= 0) then
    (`N(i_0))
  else
    (`T(((genTree (n_0 - 1)) i_0), ((genTree (n_0 - 1)) (i_0 + 1)))));;
let rec flip t_0 =
  (match t_0 with
    | `T(l_0, r_0) -> 
      (`T((flip r_0), (flip l_0)))
    | `N(v_0) -> 
      (`N(v_0)));;
let rec ff t_1 =
  (flip (flip t_1));;
let rec testFlipFlip t_2 =
  (ff t_2);;
let run () = 1 + (Obj.magic ((testFlipFlip ((genTree 17) 0))));
end;;

