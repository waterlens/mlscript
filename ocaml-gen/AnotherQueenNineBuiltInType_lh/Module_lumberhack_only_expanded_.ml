

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec append_lh__d1 _lh_append_arg1_0 _lh_append_arg2_0 =
  (match _lh_append_arg1_0 with
    | `LH_N -> 
      _lh_append_arg2_0
    | `LH_C(_lh_append_LH_C_0_0, _lh_append_LH_C_1_0) -> 
      (`LH_C(_lh_append_LH_C_0_0, ((append_lh__d1 _lh_append_LH_C_1_0) _lh_append_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec length_lh__d2 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh__d2 t_0))
    | `LH_N -> 
      0);;
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d2 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec and_lh__d1 _lh_and_arg1_0 =
  (match _lh_and_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_and_LH_C_0_0, _lh_and_LH_C_1_0) -> 
      (if _lh_and_LH_C_0_0 then
        (and_lh__d1 _lh_and_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec zip_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lh__d1 tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec safe_lh__d1 _lh_safe_arg1_0 _lh_safe_arg2_0 =
  (let rec m_0 = ((length_lh__d2 _lh_safe_arg1_0) + 1) in
    (and_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
      (match _lh_listcomp_fun_para_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
          (match _lh_listcomp_fun_ls_h_0 with
            | `LH_P2(_lh_safe_LH_P2_0_0, _lh_safe_LH_P2_1_0) -> 
              (`LH_C((((_lh_safe_LH_P2_1_0 <> _lh_safe_arg2_0) && ((_lh_safe_LH_P2_0_0 + _lh_safe_LH_P2_1_0) <> (m_0 + _lh_safe_arg2_0))) && ((_lh_safe_LH_P2_0_0 - _lh_safe_LH_P2_1_0) <> (m_0 - _lh_safe_arg2_0))), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            | _ -> 
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_0 ((zip_lh__d1 ((enumFromTo_lh__d2 1) (m_0 - 1))) _lh_safe_arg1_0)))));;
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo_lh__d1 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec queens_lh__d1 _lh_queens_arg1_0 =
  (match _lh_queens_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
              (match _lh_listcomp_fun_para_2 with
                | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                  (if ((safe_lh__d1 _lh_listcomp_fun_ls_h_1) _lh_listcomp_fun_ls_h_2) then
                    (`LH_C(((append_lh__d1 _lh_listcomp_fun_ls_h_1) (`LH_C(_lh_listcomp_fun_ls_h_2, (`LH_N)))), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                  else
                    (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                | `LH_N -> 
                  (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))) in
              (_lh_listcomp_fun_2 ((enumFromTo_lh__d1 1) 9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 (queens_lh__d1 (_lh_queens_arg1_0 - 1)))));;
let rec length_lh__d1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh__d1 t_1))
    | `LH_N -> 
      0);;
let rec testAnotherQueenNineBuiltInType_lh__d1 _lh_testAnotherQueenNineBuiltInType_arg1_0 =
  (length_lh__d1 (queens_lh__d1 _lh_testAnotherQueenNineBuiltInType_arg1_0));;
end;;

