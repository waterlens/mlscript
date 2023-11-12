
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec drop__d0 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 = 0) then
        (`LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2))
      else
        ((drop__d0 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 = 0) then
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1))
      else
        ((drop__d1 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec enumFromThenTo__d0 a_5 t_2_3 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, (((enumFromThenTo__d0 t_2_3) ((2 * t_2_3) - a_5)) b_2)))
  else
    (`LH_N));;
let rec enumFromThenTo__d1 a_6 t_2_4 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, (((enumFromThenTo__d1 t_2_4) ((2 * t_2_4) - a_6)) b_3)))
  else
    (`LH_N));;
let rec findk__d0 _lh_findk_arg1_1 _lh_findk_arg2_1 _lh_findk_arg3_1 _lh_findk_arg4_1 =
  (match _lh_findk_arg4_1 with
    | `LH_N -> 
      _lh_findk_arg2_1
    | `LH_C(_lh_findk_LH_C_0_1, _lh_findk_LH_C_1_1) -> 
      (match _lh_findk_LH_C_0_1 with
        | `LH_P2(_lh_findk_LH_P2_0_1, _lh_findk_LH_P2_1_1) -> 
          (if ((_lh_findk_LH_P2_0_1 + _lh_findk_LH_P2_1_1) >= _lh_findk_arg3_1) then
            ((((findk__d0 (_lh_findk_arg1_1 + 1)) _lh_findk_arg1_1) (_lh_findk_LH_P2_0_1 + _lh_findk_LH_P2_1_1)) _lh_findk_LH_C_1_1)
          else
            ((((findk__d0 (_lh_findk_arg1_1 + 1)) _lh_findk_arg2_1) _lh_findk_arg3_1) _lh_findk_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec inList__d0 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList__d0 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_2_8, t_3_3) -> 
      (1 + (length__d0 t_3_3))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_2, t_2_7) -> 
      (1 + (length__d1 t_2_7))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_2 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_1, t_2_6) -> 
      (`LH_C((f_1_2 h_2_1), ((map__d0 f_1_2) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_3 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_2_7, t_3_2) -> 
      (`LH_C((f_1_3 h_2_7), ((map__d1 f_1_3) t_3_2)))
    | `LH_N -> 
      (`LH_N));;
let rec max__d0 _lh_max_arg1_2 _lh_max_arg2_2 =
  (if (_lh_max_arg1_2 > _lh_max_arg2_2) then
    _lh_max_arg1_2
  else
    _lh_max_arg2_2);;
let rec max__d1 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec reverse_helper__d0 ls_2_0 a_7 =
  (match ls_2_0 with
    | `LH_C(h_2_0, t_2_5) -> 
      ((reverse_helper__d0 t_2_5) (`LH_C(h_2_0, a_7)))
    | `LH_N -> 
      a_7);;
let rec reverse_helper__d1 ls_2_6 a_8 =
  (match ls_2_6 with
    | `LH_C(h_2_4, t_2_9) -> 
      ((reverse_helper__d1 t_2_9) (`LH_C(h_2_4, a_8)))
    | `LH_N -> 
      a_8);;
let rec reverse_helper__d2 ls_2_8 a_9 =
  (match ls_2_8 with
    | `LH_C(h_2_6, t_3_1) -> 
      ((reverse_helper__d2 t_3_1) (`LH_C(h_2_6, a_9)))
    | `LH_N -> 
      a_9);;
let rec snd__d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd__d1 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec take__d0 n_5 ls_2_7 =
  (if (n_5 > 0) then
    (match ls_2_7 with
      | `LH_C(h_2_5, t_3_0) -> 
        (`LH_C(h_2_5, ((take__d0 (n_5 - 1)) t_3_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_4 ls_2_5 =
  (if (n_4 > 0) then
    (match ls_2_5 with
      | `LH_C(h_2_3, t_2_8) -> 
        (`LH_C(h_2_3, ((take__d1 (n_4 - 1)) t_2_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
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
let rec algb1__d0 _lh_algb1_arg1_2 _lh_algb1_arg2_2 =
  (match _lh_algb1_arg1_2 with
    | `LH_N -> 
      ((map__d0 snd__d0) _lh_algb1_arg2_2)
    | `LH_C(_lh_algb1_LH_C_0_2, _lh_algb1_LH_C_1_2) -> 
      ((algb1__d0 _lh_algb1_LH_C_1_2) ((((algb2__d0 _lh_algb1_LH_C_0_2) 0) 0) _lh_algb1_arg2_2))
    | _ -> 
      (failwith "error"))
and algb1__d1 _lh_algb1_arg1_1 _lh_algb1_arg2_1 =
  (match _lh_algb1_arg1_1 with
    | `LH_N -> 
      ((map__d1 snd__d1) _lh_algb1_arg2_1)
    | `LH_C(_lh_algb1_LH_C_0_1, _lh_algb1_LH_C_1_1) -> 
      ((algb1__d1 _lh_algb1_LH_C_1_1) ((((algb2__d1 _lh_algb1_LH_C_0_1) 0) 0) _lh_algb1_arg2_1))
    | _ -> 
      (failwith "error"))
and algb2__d0 _lh_algb2_arg1_1 _lh_algb2_arg2_1 _lh_algb2_arg3_1 _lh_algb2_arg4_1 =
  (match _lh_algb2_arg4_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_1, _lh_algb2_LH_C_1_1) -> 
      (match _lh_algb2_LH_C_0_1 with
        | `LH_P2(_lh_algb2_LH_P2_0_1, _lh_algb2_LH_P2_1_1) -> 
          (let rec kjcurr_1 = (if (_lh_algb2_arg1_1 = _lh_algb2_LH_P2_0_1) then
            (_lh_algb2_arg2_1 + 1)
          else
            ((max__d0 _lh_algb2_arg3_1) _lh_algb2_LH_P2_1_1)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_1, kjcurr_1)), ((((algb2__d0 _lh_algb2_arg1_1) _lh_algb2_LH_P2_1_1) kjcurr_1) _lh_algb2_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and algb2__d1 _lh_algb2_arg1_2 _lh_algb2_arg2_2 _lh_algb2_arg3_2 _lh_algb2_arg4_2 =
  (match _lh_algb2_arg4_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_2, _lh_algb2_LH_C_1_2) -> 
      (match _lh_algb2_LH_C_0_2 with
        | `LH_P2(_lh_algb2_LH_P2_0_2, _lh_algb2_LH_P2_1_2) -> 
          (let rec kjcurr_2 = (if (_lh_algb2_arg1_2 = _lh_algb2_LH_P2_0_2) then
            (_lh_algb2_arg2_2 + 1)
          else
            ((max__d1 _lh_algb2_arg3_2) _lh_algb2_LH_P2_1_2)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_2, kjcurr_2)), ((((algb2__d1 _lh_algb2_arg1_2) _lh_algb2_LH_P2_1_2) kjcurr_2) _lh_algb2_LH_C_1_2))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and algb__d0 _lh_algb_arg1_2 _lh_algb_arg2_2 =
  (`LH_C(0, ((algb1__d0 _lh_algb_arg1_2) (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_2, 0)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 _lh_algb_arg2_2)))))
and algb__d1 _lh_algb_arg1_1 _lh_algb_arg2_1 =
  (`LH_C(0, ((algb1__d1 _lh_algb_arg1_1) (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1, 0)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 _lh_algb_arg2_1)))))
and algc__d0 _lh_algc_arg1_1 _lh_algc_arg2_1 _lh_algc_arg3_1 _lh_algc_arg4_1 =
  (match _lh_algc_arg4_1 with
    | `LH_N -> 
      (fun x_4 -> 
        x_4)
    | _ -> 
      (match _lh_algc_arg3_1 with
        | `LH_C(_lh_algc_LH_C_0_1, _lh_algc_LH_C_1_1) -> 
          (match _lh_algc_LH_C_1_1 with
            | `LH_N -> 
              (if ((inList__d0 _lh_algc_LH_C_0_1) _lh_algc_arg4_1) then
                (fun t_3_4 -> 
                  (`LH_C(_lh_algc_LH_C_0_1, t_3_4)))
              else
                (fun x_5 -> 
                  x_5))
            | _ -> 
              (let rec m2_2 = (_lh_algc_arg1_1 / 2) in
                (let rec xs1_2 = ((take__d0 m2_2) _lh_algc_arg3_1) in
                  (let rec xs2_2 = ((drop__d0 m2_2) _lh_algc_arg3_1) in
                    (let rec l1_2 = ((algb__d0 xs1_2) _lh_algc_arg4_1) in
                      (let rec l2_2 = (reverse__d0 ((algb__d1 (reverse__d1 xs2_2)) (reverse__d2 _lh_algc_arg4_1))) in
                        (let rec k_2 = ((((findk__d0 0) 0) (0 - 1)) ((zip__d0 l1_2) l2_2)) in
                          (fun _lh_funcomp_x_2 -> 
                            (((((algc__d0 m2_2) k_2) xs1_2) ((take__d1 k_2) _lh_algc_arg4_1)) (((((algc__d0 (_lh_algc_arg1_1 - m2_2)) (_lh_algc_arg2_1 - k_2)) xs2_2) ((drop__d1 k_2) _lh_algc_arg4_1)) _lh_funcomp_x_2))))))))))
        | _ -> 
          (let rec m2_3 = (_lh_algc_arg1_1 / 2) in
            (let rec xs1_3 = ((take__d0 m2_3) _lh_algc_arg3_1) in
              (let rec xs2_3 = ((drop__d0 m2_3) _lh_algc_arg3_1) in
                (let rec l1_3 = ((algb__d0 xs1_3) _lh_algc_arg4_1) in
                  (let rec l2_3 = (reverse__d0 ((algb__d1 (reverse__d1 xs2_3)) (reverse__d2 _lh_algc_arg4_1))) in
                    (let rec k_3 = ((((findk__d0 0) 0) (0 - 1)) ((zip__d0 l1_3) l2_3)) in
                      (fun _lh_funcomp_x_3 -> 
                        (((((algc__d0 m2_3) k_3) xs1_3) ((take__d1 k_3) _lh_algc_arg4_1)) (((((algc__d0 (_lh_algc_arg1_1 - m2_3)) (_lh_algc_arg2_1 - k_3)) xs2_3) ((drop__d1 k_3) _lh_algc_arg4_1)) _lh_funcomp_x_3)))))))))))
and lcssMain__d0 _lh_lcssMain_arg1_1 _lh_lcssMain_arg2_1 _lh_lcssMain_arg3_1 _lh_lcssMain_arg4_1 _lh_lcssMain_arg5_1 _lh_lcssMain_arg6_1 =
  ((lcss__d0 (((enumFromThenTo__d0 _lh_lcssMain_arg1_1) _lh_lcssMain_arg2_1) _lh_lcssMain_arg3_1)) (((enumFromThenTo__d1 _lh_lcssMain_arg4_1) _lh_lcssMain_arg5_1) _lh_lcssMain_arg6_1))
and lcss__d0 _lh_lcss_arg1_1 _lh_lcss_arg2_1 =
  (((((algc__d0 (length__d0 _lh_lcss_arg1_1)) (length__d1 _lh_lcss_arg2_1)) _lh_lcss_arg1_1) _lh_lcss_arg2_1) (`LH_N))
and reverse__d0 ls_1_9 =
  ((reverse_helper__d0 ls_1_9) (`LH_N))
and reverse__d1 ls_2_2 =
  ((reverse_helper__d1 ls_2_2) (`LH_N))
and reverse__d2 ls_2_4 =
  ((reverse_helper__d2 ls_2_4) (`LH_N))
and testLCSS_nofib__d0 _lh_testLCSS_nofib_arg1_1 =
  ((((((lcssMain__d0 1) 2) 60) 30) 31) 90);;
end;;

