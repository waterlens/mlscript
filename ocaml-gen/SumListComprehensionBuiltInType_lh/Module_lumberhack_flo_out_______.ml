

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d2 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_2 -> 
          (let rec _lh_sum_LH_C_1_0 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_0) in
            (let rec _lh_sum_LH_C_0_0 = (_lh_listcomp_fun_ls_h_1 * _lh_listcomp_fun_ls_h_0) in
              (fun _lh_dummy_0 -> 
                (_lh_sum_LH_C_0_0 + (_lh_sum_LH_C_1_0 99))))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_4 -> 
      (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2)));;
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (fun _lh_listcomp_fun_5 -> 
          (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
            ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_5)) in
            (_lh_listcomp_fun_6 ((enumFromTo_lh__d2 1) _lh_listcomp_fun_ls_h_3))))))
  else
    (fun _lh_listcomp_fun_7 _lh_dummy_1 -> 
      0));;
let run () = 1 + (Obj.magic (((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (_lh_listcomp_fun_para_0 _lh_listcomp_fun_0)) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh__d1 1) 1000))) 99)));
end;;

