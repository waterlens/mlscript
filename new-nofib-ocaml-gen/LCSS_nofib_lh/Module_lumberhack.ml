

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec algb1__d1 _lh_algb1_arg1_0 _lh_algb1_arg2_0 =
  (_lh_algb1_arg1_0 _lh_algb1_arg2_0);;
let rec drop__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 = 0) then
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1))
      else
        ((drop__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 = 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromThenTo__d0 a_3 t_5 b_1 =
  (if (a_3 <= b_1) then
    (`LH_C(a_3, (((enumFromThenTo__d0 t_5) ((2 * t_5) - a_3)) b_1)))
  else
    (`LH_N));;
let rec enumFromThenTo__d1 a_2 t_4 b_0 =
  (if (a_2 <= b_0) then
    (`LH_C(a_2, (((enumFromThenTo__d1 t_4) ((2 * t_4) - a_2)) b_0)))
  else
    (`LH_N));;
let rec findk__d0 _lh_findk_arg1_1 _lh_findk_arg2_1 _lh_findk_arg3_1 _lh_findk_arg4_0 =
  (((_lh_findk_arg4_0 _lh_findk_arg2_1) _lh_findk_arg1_1) _lh_findk_arg3_1);;
let rec inList__d0 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList__d0 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length__d0 t_3))
    | `LH_N -> 
      0);;
let rec length__d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_7, t_1_0) -> 
      (1 + (length__d1 t_1_0))
    | `LH_N -> 
      0);;
let rec map__d0 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (let rec tx_0 = ((map__d0 f_0) t_0) in
        (let rec hx_0 = (f_0 h_0) in
          (fun ys_0 -> 
            ((ys_0 hx_0) tx_0))))
    | `LH_N -> 
      (fun ys_1 _lh_findk_arg2_0 _lh_findk_arg1_0 _lh_findk_arg3_0 -> 
        _lh_findk_arg2_0));;
let rec max__d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec max__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec reverse_helper__d0 ls_8 a_5 =
  (ls_8 a_5);;
let rec reverse_helper__d2 ls_1 a_0 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((reverse_helper__d2 t_1) (let rec _lh_listcomp_fun_ls_t_0 = a_0 in
        (let rec _lh_listcomp_fun_ls_h_0 = h_1 in
          (fun _lh_listcomp_fun_0 -> 
            (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_0, 0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))))))
    | `LH_N -> 
      a_0);;
let rec snd__d0 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec snd__d1 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec take__d0 n_0 ls_7 =
  (if (n_0 > 0) then
    (match ls_7 with
      | `LH_C(h_5, t_7) -> 
        (`LH_C(h_5, ((take__d0 (n_0 - 1)) t_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_1 ls_9 =
  (if (n_1 > 0) then
    (match ls_9 with
      | `LH_C(h_6, t_9) -> 
        (`LH_C(h_6, ((take__d1 (n_1 - 1)) t_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip__d0 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec algb1__d0 _lh_algb1_arg1_1 _lh_algb1_arg2_1 =
  (match _lh_algb1_arg1_1 with
    | `LH_N -> 
      ((map__d0 snd__d0) _lh_algb1_arg2_1)
    | `LH_C(_lh_algb1_LH_C_0_0, _lh_algb1_LH_C_1_0) -> 
      ((algb1__d0 _lh_algb1_LH_C_1_0) ((((algb2__d0 _lh_algb1_LH_C_0_0) 0) 0) _lh_algb1_arg2_1))
    | _ -> 
      (failwith "error"))
and algb2__d0 _lh_algb2_arg1_0 _lh_algb2_arg2_0 _lh_algb2_arg3_0 _lh_algb2_arg4_0 =
  (match _lh_algb2_arg4_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_0, _lh_algb2_LH_C_1_0) -> 
      (match _lh_algb2_LH_C_0_0 with
        | `LH_P2(_lh_algb2_LH_P2_0_0, _lh_algb2_LH_P2_1_0) -> 
          (let rec kjcurr_0 = (if (_lh_algb2_arg1_0 = _lh_algb2_LH_P2_0_0) then
            (_lh_algb2_arg2_0 + 1)
          else
            ((max__d0 _lh_algb2_arg3_0) _lh_algb2_LH_P2_1_0)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_0, kjcurr_0)), ((((algb2__d0 _lh_algb2_arg1_0) _lh_algb2_LH_P2_1_0) kjcurr_0) _lh_algb2_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and algb2__d1 _lh_algb2_arg1_1 _lh_algb2_arg2_1 _lh_algb2_arg3_1 _lh_algb2_arg4_1 =
  (match _lh_algb2_arg4_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_1, _lh_algb2_LH_C_1_1) -> 
      (match _lh_algb2_LH_C_0_1 with
        | `LH_P2(_lh_algb2_LH_P2_0_1, _lh_algb2_LH_P2_1_1) -> 
          (let rec kjcurr_1 = (if (_lh_algb2_arg1_1 = _lh_algb2_LH_P2_0_1) then
            (_lh_algb2_arg2_1 + 1)
          else
            ((max__d1 _lh_algb2_arg3_1) _lh_algb2_LH_P2_1_1)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_1, kjcurr_1)), ((((algb2__d1 _lh_algb2_arg1_1) _lh_algb2_LH_P2_1_1) kjcurr_1) _lh_algb2_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and algb__d0 _lh_algb_arg1_1 _lh_algb_arg2_1 =
  (let rec tx_3 = ((algb1__d0 _lh_algb_arg1_1) (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1, 0)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 _lh_algb_arg2_1))) in
    (let rec hx_3 = 0 in
      (fun ys_3 -> 
        ((ys_3 hx_3) tx_3))))
and algb__d1 _lh_algb_arg1_0 _lh_algb_arg2_0 =
  (let rec t_6 = ((algb1__d1 _lh_algb_arg1_0) (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_1)) in
    (_lh_listcomp_fun_1 _lh_algb_arg2_0))) in
    (let rec h_4 = 0 in
      (fun a_4 -> 
        ((reverse_helper__d0 t_6) (let rec ty_0 = a_4 in
          (let rec hy_0 = h_4 in
            (fun hx_1 tx_1 -> 
              (let rec _lh_findk_LH_C_1_0 = ((zip__d0 tx_1) ty_0) in
                (let rec _lh_findk_LH_C_0_0 = (let rec _lh_findk_LH_P2_1_0 = hy_0 in
                  (let rec _lh_findk_LH_P2_0_0 = hx_1 in
                    (fun _lh_findk_LH_C_1_1 _lh_findk_arg1_2 _lh_findk_arg2_2 _lh_findk_arg3_2 -> 
                      (if ((_lh_findk_LH_P2_0_0 + _lh_findk_LH_P2_1_0) >= _lh_findk_arg3_2) then
                        ((((findk__d0 (_lh_findk_arg1_2 + 1)) _lh_findk_arg1_2) (_lh_findk_LH_P2_0_0 + _lh_findk_LH_P2_1_0)) _lh_findk_LH_C_1_1)
                      else
                        ((((findk__d0 (_lh_findk_arg1_2 + 1)) _lh_findk_arg2_2) _lh_findk_arg3_2) _lh_findk_LH_C_1_1))))) in
                  (fun _lh_findk_arg2_3 _lh_findk_arg1_3 _lh_findk_arg3_3 -> 
                    ((((_lh_findk_LH_C_0_0 _lh_findk_LH_C_1_0) _lh_findk_arg1_3) _lh_findk_arg2_3) _lh_findk_arg3_3)))))))))))
and algc__d0 _lh_algc_arg1_0 _lh_algc_arg2_0 _lh_algc_arg3_0 _lh_algc_arg4_0 =
  (match _lh_algc_arg4_0 with
    | `LH_N -> 
      (fun x_0 -> 
        x_0)
    | _ -> 
      (match _lh_algc_arg3_0 with
        | `LH_C(_lh_algc_LH_C_0_0, _lh_algc_LH_C_1_0) -> 
          (match _lh_algc_LH_C_1_0 with
            | `LH_N -> 
              (if ((inList__d0 _lh_algc_LH_C_0_0) _lh_algc_arg4_0) then
                (fun t_8 -> 
                  (`LH_C(_lh_algc_LH_C_0_0, t_8)))
              else
                (fun x_1 -> 
                  x_1))
            | _ -> 
              (let rec m2_0 = (_lh_algc_arg1_0 / 2) in
                (let rec xs1_0 = ((take__d0 m2_0) _lh_algc_arg3_0) in
                  (let rec xs2_0 = ((drop__d0 m2_0) _lh_algc_arg3_0) in
                    (let rec l1_0 = ((algb__d0 xs1_0) _lh_algc_arg4_0) in
                      (let rec l2_0 = (reverse__d0 ((algb__d1 (reverse__d1 xs2_0)) (reverse__d2 _lh_algc_arg4_0))) in
                        (let rec k_0 = ((((findk__d0 0) 0) (0 - 1)) ((zip__d0 l1_0) l2_0)) in
                          (fun _lh_funcomp_x_0 -> 
                            (((((algc__d0 m2_0) k_0) xs1_0) ((take__d1 k_0) _lh_algc_arg4_0)) (((((algc__d0 (_lh_algc_arg1_0 - m2_0)) (_lh_algc_arg2_0 - k_0)) xs2_0) ((drop__d1 k_0) _lh_algc_arg4_0)) _lh_funcomp_x_0))))))))))
        | _ -> 
          (let rec m2_1 = (_lh_algc_arg1_0 / 2) in
            (let rec xs1_1 = ((take__d0 m2_1) _lh_algc_arg3_0) in
              (let rec xs2_1 = ((drop__d0 m2_1) _lh_algc_arg3_0) in
                (let rec l1_1 = ((algb__d0 xs1_1) _lh_algc_arg4_0) in
                  (let rec l2_1 = (reverse__d0 ((algb__d1 (reverse__d1 xs2_1)) (reverse__d2 _lh_algc_arg4_0))) in
                    (let rec k_1 = ((((findk__d0 0) 0) (0 - 1)) ((zip__d0 l1_1) l2_1)) in
                      (fun _lh_funcomp_x_1 -> 
                        (((((algc__d0 m2_1) k_1) xs1_1) ((take__d1 k_1) _lh_algc_arg4_0)) (((((algc__d0 (_lh_algc_arg1_0 - m2_1)) (_lh_algc_arg2_0 - k_1)) xs2_1) ((drop__d1 k_1) _lh_algc_arg4_0)) _lh_funcomp_x_1)))))))))))
and lcssMain__d0 _lh_lcssMain_arg1_0 _lh_lcssMain_arg2_0 _lh_lcssMain_arg3_0 _lh_lcssMain_arg4_0 _lh_lcssMain_arg5_0 _lh_lcssMain_arg6_0 =
  ((lcss__d0 (((enumFromThenTo__d0 _lh_lcssMain_arg1_0) _lh_lcssMain_arg2_0) _lh_lcssMain_arg3_0)) (((enumFromThenTo__d1 _lh_lcssMain_arg4_0) _lh_lcssMain_arg5_0) _lh_lcssMain_arg6_0))
and lcss__d0 _lh_lcss_arg1_0 _lh_lcss_arg2_0 =
  (((((algc__d0 (length__d0 _lh_lcss_arg1_0)) (length__d1 _lh_lcss_arg2_0)) _lh_lcss_arg1_0) _lh_lcss_arg2_0) (`LH_N))
and map__d1 f_1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_8, t_1_1) -> 
      (let rec t_1_2 = ((map__d1 f_1) t_1_1) in
        (let rec h_9 = (f_1 h_8) in
          (fun a_6 -> 
            ((reverse_helper__d0 t_1_2) (let rec ty_1 = a_6 in
              (let rec hy_1 = h_9 in
                (fun hx_4 tx_4 -> 
                  (let rec _lh_findk_LH_C_1_2 = ((zip__d0 tx_4) ty_1) in
                    (let rec _lh_findk_LH_C_0_1 = (let rec _lh_findk_LH_P2_1_1 = hy_1 in
                      (let rec _lh_findk_LH_P2_0_1 = hx_4 in
                        (fun _lh_findk_LH_C_1_3 _lh_findk_arg1_5 _lh_findk_arg2_5 _lh_findk_arg3_5 -> 
                          (if ((_lh_findk_LH_P2_0_1 + _lh_findk_LH_P2_1_1) >= _lh_findk_arg3_5) then
                            ((((findk__d0 (_lh_findk_arg1_5 + 1)) _lh_findk_arg1_5) (_lh_findk_LH_P2_0_1 + _lh_findk_LH_P2_1_1)) _lh_findk_LH_C_1_3)
                          else
                            ((((findk__d0 (_lh_findk_arg1_5 + 1)) _lh_findk_arg2_5) _lh_findk_arg3_5) _lh_findk_LH_C_1_3))))) in
                      (fun _lh_findk_arg2_6 _lh_findk_arg1_6 _lh_findk_arg3_6 -> 
                        ((((_lh_findk_LH_C_0_1 _lh_findk_LH_C_1_2) _lh_findk_arg1_6) _lh_findk_arg2_6) _lh_findk_arg3_6)))))))))))
    | `LH_N -> 
      (fun a_7 -> 
        a_7))
and reverse_helper__d1 ls_2 a_1 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      ((reverse_helper__d1 t_2) (let rec _lh_algb1_LH_C_1_1 = a_1 in
        (let rec _lh_algb1_LH_C_0_1 = h_2 in
          (fun _lh_algb1_arg2_2 -> 
            ((algb1__d1 _lh_algb1_LH_C_1_1) ((((algb2__d1 _lh_algb1_LH_C_0_1) 0) 0) _lh_algb1_arg2_2))))))
    | `LH_N -> 
      a_1)
and reverse__d0 ls_5 =
  ((reverse_helper__d0 ls_5) (fun hx_2 tx_2 _lh_findk_arg2_4 _lh_findk_arg1_4 _lh_findk_arg3_4 -> 
    _lh_findk_arg2_4))
and reverse__d1 ls_6 =
  ((reverse_helper__d1 ls_6) (fun _lh_algb1_arg2_3 -> 
    ((map__d1 snd__d1) _lh_algb1_arg2_3)))
and reverse__d2 ls_4 =
  ((reverse_helper__d2 ls_4) (fun _lh_listcomp_fun_2 -> 
    (`LH_N)))
and testLCSS_nofib__d0 _lh_testLCSS_nofib_arg1_0 =
  ((((((lcssMain__d0 1) 2) 60) 30) 31) 90);;
end;;

