

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec and__d0 _lh_and_arg1_1 =
  (match _lh_and_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_and_LH_C_0_1, _lh_and_LH_C_1_1) -> 
      (if _lh_and_LH_C_0_1 then
        (and__d0 _lh_and_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec append__d0 _lh_append_arg1_1 _lh_append_arg2_1 =
  (match _lh_append_arg1_1 with
    | `LH_N -> 
      _lh_append_arg2_1
    | `LH_C(_lh_append_LH_C_0_1, _lh_append_LH_C_1_1) -> 
      (`LH_C(_lh_append_LH_C_0_1, ((append__d0 _lh_append_LH_C_1_1) _lh_append_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d1 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec length__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (1 + (length__d0 t_2_3))
    | `LH_N -> 
      0);;
let rec length__d1 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length__d1 t_2_2))
    | `LH_N -> 
      0);;
let rec zip__d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_9 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C((`LH_P2(hx_8, hy_8)), ((zip__d0 tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec queens__d0 _lh_queens_arg1_1 =
  (match _lh_queens_arg1_1 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
              (match _lh_listcomp_fun_para_4 with
                | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                  (if ((safe__d0 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_ls_h_4) then
                    (`LH_C(((append__d0 _lh_listcomp_fun_ls_h_3) (`LH_C(_lh_listcomp_fun_ls_h_4, (`LH_N)))), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
                  else
                    (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))
                | `LH_N -> 
                  (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))) in
              (_lh_listcomp_fun_4 ((enumFromTo__d0 1) 9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 (queens__d0 (_lh_queens_arg1_1 - 1)))))
and safe__d0 _lh_safe_arg1_1 _lh_safe_arg2_1 =
  (let rec m_1 = ((length__d1 _lh_safe_arg1_1) + 1) in
    (and__d0 (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
      (match _lh_listcomp_fun_para_5 with
        | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
          (match _lh_listcomp_fun_ls_h_5 with
            | `LH_P2(_lh_safe_LH_P2_0_1, _lh_safe_LH_P2_1_1) -> 
              (`LH_C((((_lh_safe_LH_P2_1_1 <> _lh_safe_arg2_1) && ((_lh_safe_LH_P2_0_1 + _lh_safe_LH_P2_1_1) <> (m_1 + _lh_safe_arg2_1))) && ((_lh_safe_LH_P2_0_1 - _lh_safe_LH_P2_1_1) <> (m_1 - _lh_safe_arg2_1))), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
            | _ -> 
              (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_5 ((zip__d0 ((enumFromTo__d1 1) (m_1 - 1))) _lh_safe_arg1_1)))))
and testAnotherQueenNineBuiltInType__d0 _lh_testAnotherQueenNineBuiltInType_arg1_1 =
  (length__d0 (queens__d0 _lh_testAnotherQueenNineBuiltInType_arg1_1));;
end;;

