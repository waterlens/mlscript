

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec genTree n_0 =
  (if (n_0 > 0) then
    (`T(n_0, (genTree (n_0 - 1)), (genTree (n_0 - 1))))
  else
    (`L));;
let rec sqTree t_0 =
  (match t_0 with
    | `T(v_0, l_0, r_0) -> 
      (let rec r_1 = (sqTree r_0) in
        (let rec l_1 = (sqTree l_0) in
          (let rec v_1 = (v_0 * v_0) in
            (fun _lh_dummy_0 -> 
              ((v_1 + (l_1 99)) + (r_1 99))))))
    | `L -> 
      (fun _lh_dummy_1 -> 
        0));;
let rec testSumSquareTree n_1 =
  ((sqTree (genTree n_1)) 99);;
let run () = 1 + (Obj.magic ((testSumSquareTree 18)));
end;;

