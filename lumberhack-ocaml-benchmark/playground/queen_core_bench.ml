(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let rec enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_d0_d0 (a_0 + 1)) b_0) in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1 -> 
          (if (((safe_d0_d0 _lh_listcomp_fun_ls_h_0) 1) _lh_listcomp_fun_ls_h_1) then
            ((let rec _lh_safe_LH_C_0_0 = _lh_listcomp_fun_ls_h_0 in
              (let rec _lh_safe_LH_C_1_0 = _lh_listcomp_fun_ls_h_1 in
                (fun _lh_safe_arg1_0 _lh_safe_arg2_0 -> 
                  ((((_lh_safe_arg1_0 != _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 != (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 != (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe_d0_d0 _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0)))))::(_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          else
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)))
and gen_d0_d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      ((fun _lh_safe_arg1_2 _lh_safe_arg2_2 -> 
        true)::[])
    | _ -> 
      (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | (_lh_listcomp_fun_ls_h_3 :: _lh_listcomp_fun_ls_t_3) -> 
            (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
              ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_5) _lh_listcomp_fun_4) _lh_listcomp_fun_ls_t_3)) in
              (_lh_listcomp_fun_5 ((enumFromTo_d0_d0 1) _lh_gen_arg2_0)))
          | [] -> 
            [])) in
        (_lh_listcomp_fun_4 ((gen_d0_d0 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0))))
and length_d0_d0 ls_0 =
  (match ls_0 with
    | (h_0 :: t_0) -> 
      (1 + (length_d0_d0 t_0))
    | [] -> 
      0)
and nsoln_d0_d0 _lh_nsoln_arg1_0 =
  (length_d0_d0 ((gen_d0_d0 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0))
and safe_d0_d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_0 =
  ((_lh_safe_arg3_0 _lh_safe_arg1_1) _lh_safe_arg2_1);;


let rec enumFromTo_d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (a_2::((enumFromTo_d0 (a_2 + 1)) b_2))
  else
    [])
and gen_d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      ([]::[])
    | _ -> 
      (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | (_lh_listcomp_fun_ls_h_2 :: _lh_listcomp_fun_ls_t_2) -> 
            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | (_lh_listcomp_fun_ls_h_3 :: _lh_listcomp_fun_ls_t_3) -> 
                  (if (((safe_d0 _lh_listcomp_fun_ls_h_3) 1) _lh_listcomp_fun_ls_h_2) then
                    ((_lh_listcomp_fun_ls_h_3::_lh_listcomp_fun_ls_h_2)::(_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                  else
                    (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                | [] -> 
                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
              (_lh_listcomp_fun_3 ((enumFromTo_d0 1) _lh_gen_arg2_1)))
          | [] -> 
            [])) in
        (_lh_listcomp_fun_2 ((gen_d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1))))
and length_d0 ls_7 =
  (match ls_7 with
    | (h_7 :: t_8) -> 
      (1 + (length_d0 t_8))
    | [] -> 
      0)
and nsoln_d0 _lh_nsoln_arg1_1 =
  (length_d0 ((gen_d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and safe_d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_1 =
  (match _lh_safe_arg3_1 with
    | [] -> 
      true
    | (_lh_safe_LH_C_0_1 :: _lh_safe_LH_C_1_1) -> 
      ((((_lh_safe_arg1_1 != _lh_safe_LH_C_0_1) && (_lh_safe_arg1_1 != (_lh_safe_LH_C_0_1 + _lh_safe_arg2_1))) && (_lh_safe_arg1_1 != (_lh_safe_LH_C_0_1 - _lh_safe_arg2_1))) && (((safe_d0 _lh_safe_arg1_1) (_lh_safe_arg2_1 + 1)) _lh_safe_LH_C_1_1))
    | _ -> 
      (failwith "match error"));;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"lumberhack" (fun () ->
    ignore (nsoln_d0_d0 12));
  Bench.Test.create ~name:"original" (fun () ->
    ignore (nsoln_d0 12));
])
