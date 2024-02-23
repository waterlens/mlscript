
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec sumAux_lh ls_1 a_1 =
  (match ls_1 with
    | `LH_N -> 
      a_1
    | `LH_C(h_0, t_0) -> 
      ((sumAux_lh t_0) (a_1 + h_0)));;
let rec sum_lh ls_0 =
  ((sumAux_lh ls_0) 0);;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec testSumListComprehensionBuiltInType_lh _lh_testSumListComprehensionBuiltInType_arg1_0 =
  (sum_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
          (match _lh_listcomp_fun_para_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
              (`LH_C((_lh_listcomp_fun_ls_h_0 * _lh_listcomp_fun_ls_h_1), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            | `LH_N -> 
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
          (_lh_listcomp_fun_1 ((enumFromTo_lh 1) _lh_listcomp_fun_ls_h_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 ((enumFromTo_lh 1) _lh_testSumListComprehensionBuiltInType_arg1_0))));;
let run () = 1 + (Obj.magic ((testSumListComprehensionBuiltInType_lh 1000)));
end;;

