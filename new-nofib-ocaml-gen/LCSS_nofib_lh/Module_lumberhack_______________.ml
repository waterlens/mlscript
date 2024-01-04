

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________ = struct
let rec length_lh__d2__d0 ls_6 =
  (match ls_6 with
    | `LH_C(h_5, t_6) -> 
      (1 + (length_lh__d2__d0 t_6))
    | `LH_N -> 
      0);;
let rec length_lh__d1__d0 ls_9 =
  (match ls_9 with
    | `LH_C(h_9, t_1_0) -> 
      (1 + (length_lh__d1__d0 t_1_0))
    | `LH_N -> 
      0);;
let rec reverse_helper_lh__d1__d0 ls_2_1 a_1_3 =
  (match ls_2_1 with
    | `LH_C(h_1_7, t_2_0) -> 
      ((reverse_helper_lh__d1__d0 t_2_0) (let rec _lh_listcomp_fun_ls_t_3 = a_1_3 in
        (let rec _lh_listcomp_fun_ls_h_3 = h_1_7 in
          (fun _lh_listcomp_fun_7 -> 
            (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_3, 0)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_3)))))))
    | `LH_N -> 
      a_1_3);;
let rec reverse_lh__d1__d0 ls_2 =
  ((reverse_helper_lh__d1__d0 ls_2) (fun _lh_listcomp_fun_1 -> 
    (`LH_N)));;
let rec findk_lh__d1__d1 _lh_findk_arg1_5 _lh_findk_arg2_5 _lh_findk_arg3_5 _lh_findk_arg4_2 =
  (((_lh_findk_arg4_2 _lh_findk_arg2_5) _lh_findk_arg1_5) _lh_findk_arg3_5);;
let rec algb1_lh__d1__d0 _lh_algb1_arg1_3 _lh_algb1_arg2_6 =
  (_lh_algb1_arg1_3 _lh_algb1_arg2_6);;
let rec zip_lh__d1__d0 xs_0 ys_1 =
  (match xs_0 with
    | `LH_C(hx_2, tx_2) -> 
      ((ys_1 hx_2) tx_2)
    | `LH_N -> 
      (fun _lh_findk_arg2_3 _lh_findk_arg1_3 _lh_findk_arg3_3 -> 
        _lh_findk_arg2_3));;
let rec reverse_helper_lh__d2__d0 ls_1_8 a_1_0 =
  (ls_1_8 a_1_0);;
let rec findk_lh__d1__d2 _lh_findk_arg1_1_7 _lh_findk_arg2_1_7 _lh_findk_arg3_1_7 _lh_findk_arg4_5 =
  (((_lh_findk_arg4_5 _lh_findk_arg2_1_7) _lh_findk_arg1_1_7) _lh_findk_arg3_1_7);;
let rec algb_lh__d1__d0 _lh_algb_arg1_1 _lh_algb_arg2_1 =
  (let rec t_4 = ((algb1_lh__d1__d0 _lh_algb_arg1_1) (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_2)) in
    (_lh_listcomp_fun_2 _lh_algb_arg2_1))) in
    (let rec h_3 = 0 in
      (fun a_5 -> 
        ((reverse_helper_lh__d2__d0 t_4) (let rec ty_1 = a_5 in
          (let rec hy_1 = h_3 in
            (fun hx_3 tx_3 -> 
              (let rec _lh_findk_LH_C_1_2 = ((zip_lh__d1__d0 tx_3) ty_1) in
                (let rec _lh_findk_LH_C_0_1 = (let rec _lh_findk_LH_P2_1_1 = hy_1 in
                  (let rec _lh_findk_LH_P2_0_1 = hx_3 in
                    (fun _lh_findk_LH_C_1_3 _lh_findk_arg1_6 _lh_findk_arg2_6 _lh_findk_arg3_6 -> 
                      (if ((_lh_findk_LH_P2_0_1 + _lh_findk_LH_P2_1_1) >= _lh_findk_arg3_6) then
                        ((((findk_lh__d1__d1 (_lh_findk_arg1_6 + 1)) _lh_findk_arg1_6) (_lh_findk_LH_P2_0_1 + _lh_findk_LH_P2_1_1)) _lh_findk_LH_C_1_3)
                      else
                        ((((findk_lh__d1__d2 (_lh_findk_arg1_6 + 1)) _lh_findk_arg2_6) _lh_findk_arg3_6) _lh_findk_LH_C_1_3))))) in
                  (fun _lh_findk_arg2_7 _lh_findk_arg1_7 _lh_findk_arg3_7 -> 
                    ((((_lh_findk_LH_C_0_1 _lh_findk_LH_C_1_2) _lh_findk_arg1_7) _lh_findk_arg2_7) _lh_findk_arg3_7)))))))))));;
let rec zip_lh__d2__d1 xs_1 ys_2 =
  (xs_1 ys_2);;
let rec findk_lh__d1__d0 _lh_findk_arg1_0 _lh_findk_arg2_0 _lh_findk_arg3_0 _lh_findk_arg4_0 =
  (((_lh_findk_arg4_0 _lh_findk_arg2_0) _lh_findk_arg1_0) _lh_findk_arg3_0);;
let rec map_lh__d1__d1 f_3 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_1_4, t_1_6) -> 
      (`LH_C((f_3 h_1_4), ((map_lh__d1__d1 f_3) t_1_6)))
    | `LH_N -> 
      (`LH_N));;
let rec snd_lh__d1__d1 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec max_lh__d1__d1 _lh_max_arg1_3 _lh_max_arg2_3 =
  (if (_lh_max_arg1_3 > _lh_max_arg2_3) then
    _lh_max_arg1_3
  else
    _lh_max_arg2_3);;
let rec algb2_lh__d1__d1 _lh_algb2_arg1_3 _lh_algb2_arg2_3 _lh_algb2_arg3_3 _lh_algb2_arg4_3 =
  (match _lh_algb2_arg4_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_3, _lh_algb2_LH_C_1_3) -> 
      (match _lh_algb2_LH_C_0_3 with
        | `LH_P2(_lh_algb2_LH_P2_0_3, _lh_algb2_LH_P2_1_3) -> 
          (let rec kjcurr_3 = (if (_lh_algb2_arg1_3 = _lh_algb2_LH_P2_0_3) then
            (_lh_algb2_arg2_3 + 1)
          else
            ((max_lh__d1__d1 _lh_algb2_arg3_3) _lh_algb2_LH_P2_1_3)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_3, kjcurr_3)), ((((algb2_lh__d1__d1 _lh_algb2_arg1_3) _lh_algb2_LH_P2_1_3) kjcurr_3) _lh_algb2_LH_C_1_3))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec algb1_lh__d3__d0 _lh_algb1_arg1_4 _lh_algb1_arg2_7 =
  (match _lh_algb1_arg1_4 with
    | `LH_N -> 
      ((map_lh__d1__d1 snd_lh__d1__d1) _lh_algb1_arg2_7)
    | `LH_C(_lh_algb1_LH_C_0_2, _lh_algb1_LH_C_1_2) -> 
      ((algb1_lh__d3__d0 _lh_algb1_LH_C_1_2) ((((algb2_lh__d1__d1 _lh_algb1_LH_C_0_2) 0) 0) _lh_algb1_arg2_7))
    | _ -> 
      (failwith "error"));;
let rec algb_lh__d3__d0 _lh_algb_arg1_0 _lh_algb_arg2_0 =
  (let rec tx_0 = ((algb1_lh__d3__d0 _lh_algb_arg1_0) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_0, 0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_algb_arg2_0))) in
    (let rec hx_0 = 0 in
      (fun ys_0 -> 
        ((ys_0 hx_0) tx_0))));;
let rec reverse_helper_lh__d4__d0 ls_4 a_4 =
  (ls_4 a_4);;
let rec findk_lh__d2__d1 _lh_findk_arg1_8 _lh_findk_arg2_8 _lh_findk_arg3_8 _lh_findk_arg4_3 =
  (((_lh_findk_arg4_3 _lh_findk_arg2_8) _lh_findk_arg1_8) _lh_findk_arg3_8);;
let rec algb1_lh__d3__d1 _lh_algb1_arg1_0 _lh_algb1_arg2_0 =
  (_lh_algb1_arg1_0 _lh_algb1_arg2_0);;
let rec zip_lh__d2__d0 xs_3 ys_4 =
  (match xs_3 with
    | `LH_C(hx_7, tx_7) -> 
      ((ys_4 hx_7) tx_7)
    | `LH_N -> 
      (fun _lh_findk_arg2_1_5 _lh_findk_arg1_1_5 _lh_findk_arg3_1_5 -> 
        _lh_findk_arg2_1_5));;
let rec findk_lh__d2__d2 _lh_findk_arg1_4 _lh_findk_arg2_4 _lh_findk_arg3_4 _lh_findk_arg4_1 =
  (((_lh_findk_arg4_1 _lh_findk_arg2_4) _lh_findk_arg1_4) _lh_findk_arg3_4);;
let rec algb_lh__d4__d0 _lh_algb_arg1_2 _lh_algb_arg2_2 =
  (let rec t_9 = ((algb1_lh__d3__d1 _lh_algb_arg1_2) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
    (_lh_listcomp_fun_para_2 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 _lh_algb_arg2_2))) in
    (let rec h_8 = 0 in
      (fun a_7 -> 
        ((reverse_helper_lh__d4__d0 t_9) (let rec ty_2 = a_7 in
          (let rec hy_2 = h_8 in
            (fun hx_4 tx_4 -> 
              (let rec _lh_findk_LH_C_1_4 = ((zip_lh__d2__d0 tx_4) ty_2) in
                (let rec _lh_findk_LH_C_0_2 = (let rec _lh_findk_LH_P2_1_2 = hy_2 in
                  (let rec _lh_findk_LH_P2_0_2 = hx_4 in
                    (fun _lh_findk_LH_C_1_5 _lh_findk_arg1_1_0 _lh_findk_arg2_1_0 _lh_findk_arg3_1_0 -> 
                      (if ((_lh_findk_LH_P2_0_2 + _lh_findk_LH_P2_1_2) >= _lh_findk_arg3_1_0) then
                        ((((findk_lh__d2__d1 (_lh_findk_arg1_1_0 + 1)) _lh_findk_arg1_1_0) (_lh_findk_LH_P2_0_2 + _lh_findk_LH_P2_1_2)) _lh_findk_LH_C_1_5)
                      else
                        ((((findk_lh__d2__d2 (_lh_findk_arg1_1_0 + 1)) _lh_findk_arg2_1_0) _lh_findk_arg3_1_0) _lh_findk_LH_C_1_5))))) in
                  (fun _lh_findk_arg2_1_1 _lh_findk_arg1_1_1 _lh_findk_arg3_1_1 -> 
                    ((((_lh_findk_LH_C_0_2 _lh_findk_LH_C_1_4) _lh_findk_arg1_1_1) _lh_findk_arg2_1_1) _lh_findk_arg3_1_1)))))))))));;
let rec take_lh__d1__d0 n_1 ls_1_0 =
  (if (n_1 > 0) then
    (match ls_1_0 with
      | `LH_C(h_1_0, t_1_1) -> 
        (`LH_C(h_1_0, ((take_lh__d1__d0 (n_1 - 1)) t_1_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lh__d2__d0 n_2 ls_1_1 =
  (if (n_2 > 0) then
    (match ls_1_1 with
      | `LH_C(h_1_1, t_1_2) -> 
        (`LH_C(h_1_1, ((take_lh__d2__d0 (n_2 - 1)) t_1_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec map_lh__d1__d3 f_2 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_1_2, t_1_4) -> 
      (let rec t_1_5 = ((map_lh__d1__d3 f_2) t_1_4) in
        (let rec h_1_3 = (f_2 h_1_2) in
          (fun a_8 -> 
            ((reverse_helper_lh__d2__d0 t_1_5) (let rec ty_3 = a_8 in
              (let rec hy_3 = h_1_3 in
                (fun hx_5 tx_5 -> 
                  (let rec _lh_findk_LH_C_1_6 = ((zip_lh__d1__d0 tx_5) ty_3) in
                    (let rec _lh_findk_LH_C_0_3 = (let rec _lh_findk_LH_P2_1_3 = hy_3 in
                      (let rec _lh_findk_LH_P2_0_3 = hx_5 in
                        (fun _lh_findk_LH_C_1_7 _lh_findk_arg1_1_2 _lh_findk_arg2_1_2 _lh_findk_arg3_1_2 -> 
                          (if ((_lh_findk_LH_P2_0_3 + _lh_findk_LH_P2_1_3) >= _lh_findk_arg3_1_2) then
                            ((((findk_lh__d1__d1 (_lh_findk_arg1_1_2 + 1)) _lh_findk_arg1_1_2) (_lh_findk_LH_P2_0_3 + _lh_findk_LH_P2_1_3)) _lh_findk_LH_C_1_7)
                          else
                            ((((findk_lh__d1__d2 (_lh_findk_arg1_1_2 + 1)) _lh_findk_arg2_1_2) _lh_findk_arg3_1_2) _lh_findk_LH_C_1_7))))) in
                      (fun _lh_findk_arg2_1_3 _lh_findk_arg1_1_3 _lh_findk_arg3_1_3 -> 
                        ((((_lh_findk_LH_C_0_3 _lh_findk_LH_C_1_6) _lh_findk_arg1_1_3) _lh_findk_arg2_1_3) _lh_findk_arg3_1_3)))))))))))
    | `LH_N -> 
      (fun a_9 -> 
        a_9));;
let rec snd_lh__d1__d3 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec max_lh__d1__d3 _lh_max_arg1_2 _lh_max_arg2_2 =
  (if (_lh_max_arg1_2 > _lh_max_arg2_2) then
    _lh_max_arg1_2
  else
    _lh_max_arg2_2);;
let rec algb2_lh__d1__d3 _lh_algb2_arg1_0 _lh_algb2_arg2_0 _lh_algb2_arg3_0 _lh_algb2_arg4_0 =
  (match _lh_algb2_arg4_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_0, _lh_algb2_LH_C_1_0) -> 
      (match _lh_algb2_LH_C_0_0 with
        | `LH_P2(_lh_algb2_LH_P2_0_0, _lh_algb2_LH_P2_1_0) -> 
          (let rec kjcurr_0 = (if (_lh_algb2_arg1_0 = _lh_algb2_LH_P2_0_0) then
            (_lh_algb2_arg2_0 + 1)
          else
            ((max_lh__d1__d3 _lh_algb2_arg3_0) _lh_algb2_LH_P2_1_0)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_0, kjcurr_0)), ((((algb2_lh__d1__d3 _lh_algb2_arg1_0) _lh_algb2_LH_P2_1_0) kjcurr_0) _lh_algb2_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec algb1_lh__d1__d1 _lh_algb1_arg1_2 _lh_algb1_arg2_4 =
  (_lh_algb1_arg1_2 _lh_algb1_arg2_4);;
let rec reverse_helper_lh__d5__d0 ls_3 a_3 =
  (match ls_3 with
    | `LH_C(h_2, t_3) -> 
      ((reverse_helper_lh__d5__d0 t_3) (let rec _lh_algb1_LH_C_1_1 = a_3 in
        (let rec _lh_algb1_LH_C_0_1 = h_2 in
          (fun _lh_algb1_arg2_3 -> 
            ((algb1_lh__d1__d1 _lh_algb1_LH_C_1_1) ((((algb2_lh__d1__d3 _lh_algb1_LH_C_0_1) 0) 0) _lh_algb1_arg2_3))))))
    | `LH_N -> 
      a_3);;
let rec reverse_lh__d5__d0 ls_1 =
  ((reverse_helper_lh__d5__d0 ls_1) (fun _lh_algb1_arg2_2 -> 
    ((map_lh__d1__d3 snd_lh__d1__d3) _lh_algb1_arg2_2)));;
let rec snd_lh__d1__d2 _lh_snd_arg1_3 =
  (match _lh_snd_arg1_3 with
    | `LH_P2(_lh_snd_LH_P2_0_3, _lh_snd_LH_P2_1_3) -> 
      _lh_snd_LH_P2_1_3
    | _ -> 
      (failwith "error"));;
let rec max_lh__d1__d2 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec algb2_lh__d1__d2 _lh_algb2_arg1_1 _lh_algb2_arg2_1 _lh_algb2_arg3_1 _lh_algb2_arg4_1 =
  (match _lh_algb2_arg4_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_1, _lh_algb2_LH_C_1_1) -> 
      (match _lh_algb2_LH_C_0_1 with
        | `LH_P2(_lh_algb2_LH_P2_0_1, _lh_algb2_LH_P2_1_1) -> 
          (let rec kjcurr_1 = (if (_lh_algb2_arg1_1 = _lh_algb2_LH_P2_0_1) then
            (_lh_algb2_arg2_1 + 1)
          else
            ((max_lh__d1__d2 _lh_algb2_arg3_1) _lh_algb2_LH_P2_1_1)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_1, kjcurr_1)), ((((algb2_lh__d1__d2 _lh_algb2_arg1_1) _lh_algb2_LH_P2_1_1) kjcurr_1) _lh_algb2_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh__d6__d0 ls_2_0 a_1_2 =
  (match ls_2_0 with
    | `LH_C(h_1_6, t_1_9) -> 
      ((reverse_helper_lh__d6__d0 t_1_9) (let rec _lh_algb1_LH_C_1_3 = a_1_2 in
        (let rec _lh_algb1_LH_C_0_3 = h_1_6 in
          (fun _lh_algb1_arg2_8 -> 
            ((algb1_lh__d3__d1 _lh_algb1_LH_C_1_3) ((((algb2_lh__d1__d2 _lh_algb1_LH_C_0_3) 0) 0) _lh_algb1_arg2_8))))))
    | `LH_N -> 
      a_1_2);;
let rec map_lh__d1__d2 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map_lh__d1__d2 f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (fun a_0 -> 
            ((reverse_helper_lh__d4__d0 t_1) (let rec ty_0 = a_0 in
              (let rec hy_0 = h_1 in
                (fun hx_1 tx_1 -> 
                  (let rec _lh_findk_LH_C_1_0 = ((zip_lh__d2__d0 tx_1) ty_0) in
                    (let rec _lh_findk_LH_C_0_0 = (let rec _lh_findk_LH_P2_1_0 = hy_0 in
                      (let rec _lh_findk_LH_P2_0_0 = hx_1 in
                        (fun _lh_findk_LH_C_1_1 _lh_findk_arg1_1 _lh_findk_arg2_1 _lh_findk_arg3_1 -> 
                          (if ((_lh_findk_LH_P2_0_0 + _lh_findk_LH_P2_1_0) >= _lh_findk_arg3_1) then
                            ((((findk_lh__d2__d1 (_lh_findk_arg1_1 + 1)) _lh_findk_arg1_1) (_lh_findk_LH_P2_0_0 + _lh_findk_LH_P2_1_0)) _lh_findk_LH_C_1_1)
                          else
                            ((((findk_lh__d2__d2 (_lh_findk_arg1_1 + 1)) _lh_findk_arg2_1) _lh_findk_arg3_1) _lh_findk_LH_C_1_1))))) in
                      (fun _lh_findk_arg2_2 _lh_findk_arg1_2 _lh_findk_arg3_2 -> 
                        ((((_lh_findk_LH_C_0_0 _lh_findk_LH_C_1_0) _lh_findk_arg1_2) _lh_findk_arg2_2) _lh_findk_arg3_2)))))))))))
    | `LH_N -> 
      (fun a_1 -> 
        a_1));;
let rec reverse_lh__d6__d0 ls_1_4 =
  ((reverse_helper_lh__d6__d0 ls_1_4) (fun _lh_algb1_arg2_5 -> 
    ((map_lh__d1__d2 snd_lh__d1__d2) _lh_algb1_arg2_5)));;
let rec reverse_lh__d2__d0 ls_1_5 =
  ((reverse_helper_lh__d2__d0 ls_1_5) (fun hx_6 tx_6 _lh_findk_arg2_1_4 _lh_findk_arg1_1_4 _lh_findk_arg3_1_4 -> 
    _lh_findk_arg2_1_4));;
let rec drop_lh__d4__d0 _lh_drop_arg1_3 _lh_drop_arg2_3 =
  (match _lh_drop_arg2_3 with
    | `LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3) -> 
      (if (_lh_drop_arg1_3 = 0) then
        (`LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3))
      else
        ((drop_lh__d4__d0 (_lh_drop_arg1_3 - 1)) _lh_drop_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec take_lh__d4__d0 n_0 ls_5 =
  (if (n_0 > 0) then
    (match ls_5 with
      | `LH_C(h_4, t_5) -> 
        (`LH_C(h_4, ((take_lh__d4__d0 (n_0 - 1)) t_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec findk_lh__d2__d0 _lh_findk_arg1_9 _lh_findk_arg2_9 _lh_findk_arg3_9 _lh_findk_arg4_4 =
  (((_lh_findk_arg4_4 _lh_findk_arg2_9) _lh_findk_arg1_9) _lh_findk_arg3_9);;
let rec zip_lh__d1__d1 xs_2 ys_3 =
  (xs_2 ys_3);;
let rec drop_lh__d3__d0 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 = 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop_lh__d3__d0 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec drop_lh__d1__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 = 0) then
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1))
      else
        ((drop_lh__d1__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec drop_lh__d2__d0 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 = 0) then
        (`LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2))
      else
        ((drop_lh__d2__d0 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh__d3__d0 ls_7 a_6 =
  (match ls_7 with
    | `LH_C(h_6, t_7) -> 
      ((reverse_helper_lh__d3__d0 t_7) (let rec _lh_listcomp_fun_ls_t_1 = a_6 in
        (let rec _lh_listcomp_fun_ls_h_1 = h_6 in
          (fun _lh_listcomp_fun_3 -> 
            (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1, 0)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_1)))))))
    | `LH_N -> 
      a_6);;
let rec reverse_lh__d3__d0 ls_1_2 =
  ((reverse_helper_lh__d3__d0 ls_1_2) (fun _lh_listcomp_fun_5 -> 
    (`LH_N)));;
let rec inList_lh__d1__d0 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh__d1__d0 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec take_lh__d3__d0 n_3 ls_1_7 =
  (if (n_3 > 0) then
    (match ls_1_7 with
      | `LH_C(h_1_5, t_1_7) -> 
        (`LH_C(h_1_5, ((take_lh__d3__d0 (n_3 - 1)) t_1_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec reverse_lh__d4__d0 ls_1_9 =
  ((reverse_helper_lh__d4__d0 ls_1_9) (fun hx_8 tx_8 _lh_findk_arg2_1_6 _lh_findk_arg1_1_6 _lh_findk_arg3_1_6 -> 
    _lh_findk_arg2_1_6));;
let rec max_lh__d1__d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec algb2_lh__d1__d0 _lh_algb2_arg1_2 _lh_algb2_arg2_2 _lh_algb2_arg3_2 _lh_algb2_arg4_2 =
  (match _lh_algb2_arg4_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_algb2_LH_C_0_2, _lh_algb2_LH_C_1_2) -> 
      (match _lh_algb2_LH_C_0_2 with
        | `LH_P2(_lh_algb2_LH_P2_0_2, _lh_algb2_LH_P2_1_2) -> 
          (let rec kjcurr_2 = (if (_lh_algb2_arg1_2 = _lh_algb2_LH_P2_0_2) then
            (_lh_algb2_arg2_2 + 1)
          else
            ((max_lh__d1__d0 _lh_algb2_arg3_2) _lh_algb2_LH_P2_1_2)) in
            (`LH_C((`LH_P2(_lh_algb2_LH_P2_0_2, kjcurr_2)), ((((algb2_lh__d1__d0 _lh_algb2_arg1_2) _lh_algb2_LH_P2_1_2) kjcurr_2) _lh_algb2_LH_C_1_2))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec snd_lh__d1__d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1__d0 f_1 ls_8 =
  (match ls_8 with
    | `LH_C(h_7, t_8) -> 
      (`LH_C((f_1 h_7), ((map_lh__d1__d0 f_1) t_8)))
    | `LH_N -> 
      (`LH_N));;
let rec algb1_lh__d2__d0 _lh_algb1_arg1_1 _lh_algb1_arg2_1 =
  (match _lh_algb1_arg1_1 with
    | `LH_N -> 
      ((map_lh__d1__d0 snd_lh__d1__d0) _lh_algb1_arg2_1)
    | `LH_C(_lh_algb1_LH_C_0_0, _lh_algb1_LH_C_1_0) -> 
      ((algb1_lh__d2__d0 _lh_algb1_LH_C_1_0) ((((algb2_lh__d1__d0 _lh_algb1_LH_C_0_0) 0) 0) _lh_algb1_arg2_1))
    | _ -> 
      (failwith "error"));;
let rec algb_lh__d2__d0 _lh_algb_arg1_3 _lh_algb_arg2_3 =
  (let rec tx_9 = ((algb1_lh__d2__d0 _lh_algb_arg1_3) (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_2, 0)), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 _lh_algb_arg2_3))) in
    (let rec hx_9 = 0 in
      (fun ys_5 -> 
        ((ys_5 hx_9) tx_9))));;
let rec algc_lh__d1__d0 _lh_algc_arg1_0 _lh_algc_arg2_0 _lh_algc_arg3_0 _lh_algc_arg4_0 =
  (match _lh_algc_arg4_0 with
    | `LH_N -> 
      (fun x_0 -> 
        x_0)
    | _ -> 
      (match _lh_algc_arg3_0 with
        | `LH_C(_lh_algc_LH_C_0_0, _lh_algc_LH_C_1_0) -> 
          (match _lh_algc_LH_C_1_0 with
            | `LH_N -> 
              (if ((inList_lh__d1__d0 _lh_algc_LH_C_0_0) _lh_algc_arg4_0) then
                (fun t_1_3 -> 
                  (`LH_C(_lh_algc_LH_C_0_0, t_1_3)))
              else
                (fun x_1 -> 
                  x_1))
            | _ -> 
              (let rec m2_0 = (_lh_algc_arg1_0 / 2) in
                (let rec xs1_0 = ((take_lh__d3__d0 m2_0) _lh_algc_arg3_0) in
                  (let rec xs2_0 = ((drop_lh__d1__d0 m2_0) _lh_algc_arg3_0) in
                    (let rec l1_0 = ((algb_lh__d2__d0 xs1_0) _lh_algc_arg4_0) in
                      (let rec l2_0 = (reverse_lh__d4__d0 ((algb_lh__d4__d0 (reverse_lh__d6__d0 xs2_0)) (reverse_lh__d1__d0 _lh_algc_arg4_0))) in
                        (let rec k_0 = ((((findk_lh__d2__d0 0) 0) (0 - 1)) ((zip_lh__d2__d1 l1_0) l2_0)) in
                          (fun _lh_funcomp_x_0 -> 
                            (((((algc_lh__d1__d0 m2_0) k_0) xs1_0) ((take_lh__d1__d0 k_0) _lh_algc_arg4_0)) (((((algc_lh__d1__d0 (_lh_algc_arg1_0 - m2_0)) (_lh_algc_arg2_0 - k_0)) xs2_0) ((drop_lh__d2__d0 k_0) _lh_algc_arg4_0)) _lh_funcomp_x_0))))))))))
        | _ -> 
          (let rec m2_1 = (_lh_algc_arg1_0 / 2) in
            (let rec xs1_1 = ((take_lh__d2__d0 m2_1) _lh_algc_arg3_0) in
              (let rec xs2_1 = ((drop_lh__d4__d0 m2_1) _lh_algc_arg3_0) in
                (let rec l1_1 = ((algb_lh__d3__d0 xs1_1) _lh_algc_arg4_0) in
                  (let rec l2_1 = (reverse_lh__d2__d0 ((algb_lh__d1__d0 (reverse_lh__d5__d0 xs2_1)) (reverse_lh__d3__d0 _lh_algc_arg4_0))) in
                    (let rec k_1 = ((((findk_lh__d1__d0 0) 0) (0 - 1)) ((zip_lh__d1__d1 l1_1) l2_1)) in
                      (fun _lh_funcomp_x_1 -> 
                        (((((algc_lh__d1__d0 m2_1) k_1) xs1_1) ((take_lh__d4__d0 k_1) _lh_algc_arg4_0)) (((((algc_lh__d1__d0 (_lh_algc_arg1_0 - m2_1)) (_lh_algc_arg2_0 - k_1)) xs2_1) ((drop_lh__d3__d0 k_1) _lh_algc_arg4_0)) _lh_funcomp_x_1)))))))))));;
let rec lcss_lh__d1__d0 _lh_lcss_arg1_0 _lh_lcss_arg2_0 =
  (((((algc_lh__d1__d0 (length_lh__d2__d0 _lh_lcss_arg1_0)) (length_lh__d1__d0 _lh_lcss_arg2_0)) _lh_lcss_arg1_0) _lh_lcss_arg2_0) (`LH_N));;
let rec enumFromThenTo_lh__d2__d0 a_1_1 t_1_8 b_1 =
  (if (a_1_1 <= b_1) then
    (`LH_C(a_1_1, (((enumFromThenTo_lh__d2__d0 t_1_8) ((2 * t_1_8) - a_1_1)) b_1)))
  else
    (`LH_N));;
let rec enumFromThenTo_lh__d1__d0 a_2 t_2 b_0 =
  (if (a_2 <= b_0) then
    (`LH_C(a_2, (((enumFromThenTo_lh__d1__d0 t_2) ((2 * t_2) - a_2)) b_0)))
  else
    (`LH_N));;
let rec lcssMain_lh__d1__d0 _lh_lcssMain_arg1_0 _lh_lcssMain_arg2_0 _lh_lcssMain_arg3_0 _lh_lcssMain_arg4_0 _lh_lcssMain_arg5_0 _lh_lcssMain_arg6_0 =
  ((lcss_lh__d1__d0 (((enumFromThenTo_lh__d1__d0 _lh_lcssMain_arg1_0) _lh_lcssMain_arg2_0) _lh_lcssMain_arg3_0)) (((enumFromThenTo_lh__d2__d0 _lh_lcssMain_arg4_0) _lh_lcssMain_arg5_0) _lh_lcssMain_arg6_0));;
let rec testLCSS_nofib_lh__d1__d0 _lh_testLCSS_nofib_arg1_0 =
  ((((((lcssMain_lh__d1__d0 1) 2) 60) 30) 31) 90);;
end;;

