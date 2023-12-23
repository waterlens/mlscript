

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec length_lh__d1 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh__d1 t_0))
    | `LH_N -> 
      0);;
let rec and_lh__d1 _lh_and_arg1_0 =
  (_lh_and_arg1_0 99);;
let rec zip_lh__d0 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec tx_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec hx_0 = a_0 in
        (fun ys_0 -> 
          (match ys_0 with
            | `LH_C(hy_0, ty_0) -> 
              (let rec _lh_listcomp_fun_ls_t_1 = ((zip_lh__d0 tx_0) ty_0) in
                (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_safe_LH_P2_1_0 = hy_0 in
                  (let rec _lh_safe_LH_P2_0_0 = hx_0 in
                    (fun _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 _lh_safe_arg2_1 m_1 -> 
                      (let rec _lh_and_LH_C_1_0 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2) in
                        (let rec _lh_and_LH_C_0_0 = (((_lh_safe_LH_P2_1_0 <> _lh_safe_arg2_1) && ((_lh_safe_LH_P2_0_0 + _lh_safe_LH_P2_1_0) <> (m_1 + _lh_safe_arg2_1))) && ((_lh_safe_LH_P2_0_0 - _lh_safe_LH_P2_1_0) <> (m_1 - _lh_safe_arg2_1))) in
                          (fun _lh_dummy_0 -> 
                            (if _lh_and_LH_C_0_0 then
                              (and_lh__d1 _lh_and_LH_C_1_0)
                            else
                              false))))))) in
                  (fun _lh_listcomp_fun_4 _lh_safe_arg2_2 m_2 -> 
                    ((((_lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_4) _lh_safe_arg2_2) m_2))))
            | `LH_N -> 
              (fun _lh_listcomp_fun_5 _lh_safe_arg2_3 m_3 _lh_dummy_1 -> 
                true)))))
  else
    (fun ys_1 _lh_listcomp_fun_6 _lh_safe_arg2_4 m_4 _lh_dummy_2 -> 
      true));;
let rec and_lh__d0 _lh_and_arg1_1 =
  (_lh_and_arg1_1 99);;
let rec safe_lh__d0 _lh_safe_arg1_0 _lh_safe_arg2_0 =
  (let rec m_0 = ((length_lh__d1 _lh_safe_arg1_0) + 1) in
    (and_lh__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
      (((_lh_listcomp_fun_para_2 _lh_listcomp_fun_2) _lh_safe_arg2_0) m_0)) in
      (_lh_listcomp_fun_2 ((zip_lh__d0 ((enumFromTo_lh__d1 1) (m_0 - 1))) _lh_safe_arg1_0)))));;
let rec append_lh__d0 _lh_append_arg1_0 _lh_append_arg2_0 =
  (match _lh_append_arg1_0 with
    | `LH_N -> 
      _lh_append_arg2_0
    | `LH_C(_lh_append_LH_C_0_0, _lh_append_LH_C_1_0) -> 
      (`LH_C(_lh_append_LH_C_0_0, ((append_lh__d0 _lh_append_LH_C_1_0) _lh_append_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_lh__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_2 = a_1 in
        (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_4 _lh_listcomp_fun_8 -> 
          (if ((safe_lh__d0 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_ls_h_2) then
            (`LH_C(((append_lh__d0 _lh_listcomp_fun_ls_h_3) (`LH_C(_lh_listcomp_fun_ls_h_2, (`LH_N)))), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_3)))
          else
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_3)))))
  else
    (fun _lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_5 _lh_listcomp_fun_1_0 -> 
      (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_5)));;
let rec queens_lh__d0 _lh_queens_arg1_0 =
  (match _lh_queens_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_1) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_0)) in
              (_lh_listcomp_fun_1 ((enumFromTo_lh__d0 1) 9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 (queens_lh__d0 (_lh_queens_arg1_0 - 1)))));;
let rec length_lh__d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh__d0 t_1))
    | `LH_N -> 
      0);;
let rec testAnotherQueenNineBuiltInType_lh__d0 _lh_testAnotherQueenNineBuiltInType_arg1_0 =
  (length_lh__d0 (queens_lh__d0 _lh_testAnotherQueenNineBuiltInType_arg1_0));;
end;;

