

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec enumFromThenTo_lh a_0 t_1 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, (((enumFromThenTo_lh t_1) ((2 * t_1) - a_0)) b_0)))
  else
    (`LH_N));;
let rec length_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_3) -> 
      (1 + (length_lh t_3))
    | `LH_N -> 
      0);;
let rec drop_lh _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 = 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop_lh (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh ls_4 a_1 =
  (match ls_4 with
    | `LH_C(h_3, t_4) -> 
      ((reverse_helper_lh t_4) (`LH_C(h_3, a_1)))
    | `LH_N -> 
      a_1);;
let rec reverse_lh ls_3 =
  ((reverse_helper_lh ls_3) (`LH_N));;
let rec inList_lh _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec findk_lh _lh_findk_arg1_0 _lh_findk_arg2_0 _lh_findk_arg3_0 _lh_findk_arg4_0 =
  (match _lh_findk_arg4_0 with
    | `LH_N -> 
      _lh_findk_arg2_0
    | `LH_C(_lh_findk_LH_C_0_0, _lh_findk_LH_C_1_0) -> 
      (match _lh_findk_LH_C_0_0 with
        | `LH_P2(_lh_findk_LH_P2_0_0, _lh_findk_LH_P2_1_0) -> 
          (if ((_lh_findk_LH_P2_0_0 + _lh_findk_LH_P2_1_0) >= _lh_findk_arg3_0) then
            ((((findk_lh (_lh_findk_arg1_0 + 1)) _lh_findk_arg1_0) (_lh_findk_LH_P2_0_0 + _lh_findk_LH_P2_1_0)) _lh_findk_LH_C_1_0)
          else
            ((((findk_lh (_lh_findk_arg1_0 + 1)) _lh_findk_arg2_0) _lh_findk_arg3_0) _lh_findk_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec zip_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lh tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec take_lh n_0 ls_1 =
  (if (n_0 > 0) then
    (match ls_1 with
      | `LH_C(h_1, t_2) -> 
        (`LH_C(h_1, ((take_lh (n_0 - 1)) t_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec snd_lh _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec max_lh _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec algb2_lh _lh_algb2_arg1_0 _lh_algb2_arg2_0 _lh_algb2_arg3_0 _lh_algb2_arg4_0 =
  (match _lh_algb2_arg4_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_0, _lh_algb2_LH_C_1_0) -> 
      (match _lh_algb2_LH_C_0_0 with
        | `LH_P2(_lh_algb2_LH_P2_0_0, _lh_algb2_LH_P2_1_0) -> 
          (let rec kjcurr_0 = (if (_lh_algb2_arg1_0 = _lh_algb2_LH_P2_0_0) then
            (_lh_algb2_arg2_0 + 1)
          else
            ((max_lh _lh_algb2_arg3_0) _lh_algb2_LH_P2_1_0)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_0, kjcurr_0)), ((((algb2_lh _lh_algb2_arg1_0) _lh_algb2_LH_P2_1_0) kjcurr_0) _lh_algb2_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec algb1_lh _lh_algb1_arg1_0 _lh_algb1_arg2_0 =
  (match _lh_algb1_arg1_0 with
    | `LH_N -> 
      ((map_lh snd_lh) _lh_algb1_arg2_0)
    | `LH_C(_lh_algb1_LH_C_0_0, _lh_algb1_LH_C_1_0) -> 
      ((algb1_lh _lh_algb1_LH_C_1_0) ((((algb2_lh _lh_algb1_LH_C_0_0) 0) 0) _lh_algb1_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec algb_lh _lh_algb_arg1_0 _lh_algb_arg2_0 =
  (`LH_C(0, ((algb1_lh _lh_algb_arg1_0) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_0, 0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_algb_arg2_0)))));;
let rec algc_lh _lh_algc_arg1_0 _lh_algc_arg2_0 _lh_algc_arg3_0 _lh_algc_arg4_0 =
  (match _lh_algc_arg4_0 with
    | `LH_N -> 
      (fun x_0 -> 
        x_0)
    | _ -> 
      (match _lh_algc_arg3_0 with
        | `LH_C(_lh_algc_LH_C_0_0, _lh_algc_LH_C_1_0) -> 
          (match _lh_algc_LH_C_1_0 with
            | `LH_N -> 
              (if ((inList_lh _lh_algc_LH_C_0_0) _lh_algc_arg4_0) then
                (fun t_5 -> 
                  (`LH_C(_lh_algc_LH_C_0_0, t_5)))
              else
                (fun x_1 -> 
                  x_1))
            | _ -> 
              (let rec m2_0 = (_lh_algc_arg1_0 / 2) in
                (let rec xs1_0 = ((take_lh m2_0) _lh_algc_arg3_0) in
                  (let rec xs2_0 = ((drop_lh m2_0) _lh_algc_arg3_0) in
                    (let rec l1_0 = ((algb_lh xs1_0) _lh_algc_arg4_0) in
                      (let rec l2_0 = (reverse_lh ((algb_lh (reverse_lh xs2_0)) (reverse_lh _lh_algc_arg4_0))) in
                        (let rec k_0 = ((((findk_lh 0) 0) (0 - 1)) ((zip_lh l1_0) l2_0)) in
                          (fun _lh_funcomp_x_0 -> 
                            (((((algc_lh m2_0) k_0) xs1_0) ((take_lh k_0) _lh_algc_arg4_0)) (((((algc_lh (_lh_algc_arg1_0 - m2_0)) (_lh_algc_arg2_0 - k_0)) xs2_0) ((drop_lh k_0) _lh_algc_arg4_0)) _lh_funcomp_x_0))))))))))
        | _ -> 
          (let rec m2_1 = (_lh_algc_arg1_0 / 2) in
            (let rec xs1_1 = ((take_lh m2_1) _lh_algc_arg3_0) in
              (let rec xs2_1 = ((drop_lh m2_1) _lh_algc_arg3_0) in
                (let rec l1_1 = ((algb_lh xs1_1) _lh_algc_arg4_0) in
                  (let rec l2_1 = (reverse_lh ((algb_lh (reverse_lh xs2_1)) (reverse_lh _lh_algc_arg4_0))) in
                    (let rec k_1 = ((((findk_lh 0) 0) (0 - 1)) ((zip_lh l1_1) l2_1)) in
                      (fun _lh_funcomp_x_1 -> 
                        (((((algc_lh m2_1) k_1) xs1_1) ((take_lh k_1) _lh_algc_arg4_0)) (((((algc_lh (_lh_algc_arg1_0 - m2_1)) (_lh_algc_arg2_0 - k_1)) xs2_1) ((drop_lh k_1) _lh_algc_arg4_0)) _lh_funcomp_x_1)))))))))));;
let rec lcss_lh _lh_lcss_arg1_0 _lh_lcss_arg2_0 =
  (((((algc_lh (length_lh _lh_lcss_arg1_0)) (length_lh _lh_lcss_arg2_0)) _lh_lcss_arg1_0) _lh_lcss_arg2_0) (`LH_N));;
let rec lcssMain_lh _lh_lcssMain_arg1_0 _lh_lcssMain_arg2_0 _lh_lcssMain_arg3_0 _lh_lcssMain_arg4_0 _lh_lcssMain_arg5_0 _lh_lcssMain_arg6_0 =
  ((lcss_lh (((enumFromThenTo_lh _lh_lcssMain_arg1_0) _lh_lcssMain_arg2_0) _lh_lcssMain_arg3_0)) (((enumFromThenTo_lh _lh_lcssMain_arg4_0) _lh_lcssMain_arg5_0) _lh_lcssMain_arg6_0));;
let rec testLCSS_nofib_lh _lh_testLCSS_nofib_arg1_0 =
  ((((((lcssMain_lh 1) 2) 60) 30) 31) 90);;
end;;

