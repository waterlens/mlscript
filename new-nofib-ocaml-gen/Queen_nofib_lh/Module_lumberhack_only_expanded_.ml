

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec length_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh t_0))
    | `LH_N -> 
      0);;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec safe_lh _lh_safe_arg1_0 _lh_safe_arg2_0 _lh_safe_arg3_0 =
  (match _lh_safe_arg3_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_0, _lh_safe_LH_C_1_0) -> 
      ((((_lh_safe_arg1_0 <> _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe_lh _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec gen_lh _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (if (((safe_lh _lh_listcomp_fun_ls_h_1) 1) _lh_listcomp_fun_ls_h_0) then
                    (`LH_C((`LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_h_0)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                  else
                    (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                | `LH_N -> 
                  (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
              (_lh_listcomp_fun_1 ((enumFromTo_lh 1) _lh_gen_arg2_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ((gen_lh (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0))));;
let rec nsoln_lh _lh_nsoln_arg1_0 =
  (length_lh ((gen_lh _lh_nsoln_arg1_0) _lh_nsoln_arg1_0));;
let rec testQueen_nofib_lh _lh_testQueen_nofib_arg1_0 =
  (nsoln_lh _lh_testQueen_nofib_arg1_0);;
end;;

