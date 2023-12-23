

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec map_lh__d7 f_1_1 ls_2 =
  (ls_2 f_1_1);;
let rec map_lh__d6 f_3 ls_0 =
  (ls_0 f_3);;
let rec map_lh__d1 f_2_2 ls_7 =
  (ls_7 f_2_2);;
let rec qpart_lh__d1 _lh_qpart_arg1_0 _lh_qpart_arg2_0 _lh_qpart_arg3_0 _lh_qpart_arg4_0 _lh_qpart_arg5_0 _lh_qpart_arg6_0 =
  (match _lh_qpart_arg3_0 with
    | `LH_N -> 
      (((rqsort_lh__d2 _lh_qpart_arg1_0) _lh_qpart_arg4_0) (let rec t_2_7 = (((rqsort_lh__d3 _lh_qpart_arg1_0) _lh_qpart_arg5_0) _lh_qpart_arg6_0) in
        (let rec h_2_7 = _lh_qpart_arg2_0 in
          (fun f_3_3 -> 
            (`LH_C((f_3_3 h_2_7), ((map_lh__d1 f_3_3) t_2_7)))))))
    | `LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_LH_C_1_0) -> 
      (if ((_lh_qpart_arg1_0 _lh_qpart_arg2_0) _lh_qpart_LH_C_0_0) then
        ((((((qpart_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg5_0))) _lh_qpart_arg6_0)
      else
        ((((((qpart_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg4_0))) _lh_qpart_arg5_0) _lh_qpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
qsort_lh__d1 _lh_qsort_arg1_0 _lh_qsort_arg2_0 _lh_qsort_arg3_0 =
  (match _lh_qsort_arg2_0 with
    | `LH_N -> 
      _lh_qsort_arg3_0
    | `LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_LH_C_1_0) -> 
      (match _lh_qsort_LH_C_1_0 with
        | `LH_N -> 
          (let rec t_7 = _lh_qsort_arg3_0 in
            (let rec h_7 = _lh_qsort_LH_C_0_0 in
              (fun f_8 -> 
                (`LH_C((f_8 h_7), ((map_lh__d1 f_8) t_7))))))
        | _ -> 
          ((((((qpart_lh__d1 _lh_qsort_arg1_0) _lh_qsort_LH_C_0_0) _lh_qsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_qsort_arg3_0))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d2 _lh_rqpart_arg1_3 _lh_rqpart_arg2_3 _lh_rqpart_arg3_3 _lh_rqpart_arg4_3 _lh_rqpart_arg5_3 _lh_rqpart_arg6_3 =
  (match _lh_rqpart_arg3_3 with
    | `LH_N -> 
      (((qsort_lh__d1 _lh_rqpart_arg1_3) _lh_rqpart_arg4_3) (let rec t_1_1 = (((qsort_lh__d1 _lh_rqpart_arg1_3) _lh_rqpart_arg5_3) _lh_rqpart_arg6_3) in
        (let rec h_1_1 = _lh_rqpart_arg2_3 in
          (fun f_1_3 -> 
            (`LH_C((f_1_3 h_1_1), ((map_lh__d1 f_1_3) t_1_1)))))))
    | `LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_LH_C_1_3) -> 
      (if ((_lh_rqpart_arg1_3 _lh_rqpart_LH_C_0_3) _lh_rqpart_arg2_3) then
        ((((((rqpart_lh__d2 _lh_rqpart_arg1_3) _lh_rqpart_arg2_3) _lh_rqpart_LH_C_1_3) (`LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_arg4_3))) _lh_rqpart_arg5_3) _lh_rqpart_arg6_3)
      else
        ((((((rqpart_lh__d2 _lh_rqpart_arg1_3) _lh_rqpart_arg2_3) _lh_rqpart_LH_C_1_3) _lh_rqpart_arg4_3) (`LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_arg5_3))) _lh_rqpart_arg6_3))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d3 _lh_rqpart_arg1_4 _lh_rqpart_arg2_4 _lh_rqpart_arg3_4 _lh_rqpart_arg4_4 _lh_rqpart_arg5_4 _lh_rqpart_arg6_4 =
  (match _lh_rqpart_arg3_4 with
    | `LH_N -> 
      (((qsort_lh__d1 _lh_rqpart_arg1_4) _lh_rqpart_arg4_4) (let rec t_2_0 = (((qsort_lh__d1 _lh_rqpart_arg1_4) _lh_rqpart_arg5_4) _lh_rqpart_arg6_4) in
        (let rec h_2_0 = _lh_rqpart_arg2_4 in
          (fun f_2_6 -> 
            (`LH_C((f_2_6 h_2_0), ((map_lh__d1 f_2_6) t_2_0)))))))
    | `LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_LH_C_1_4) -> 
      (if ((_lh_rqpart_arg1_4 _lh_rqpart_LH_C_0_4) _lh_rqpart_arg2_4) then
        ((((((rqpart_lh__d3 _lh_rqpart_arg1_4) _lh_rqpart_arg2_4) _lh_rqpart_LH_C_1_4) (`LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_arg4_4))) _lh_rqpart_arg5_4) _lh_rqpart_arg6_4)
      else
        ((((((rqpart_lh__d3 _lh_rqpart_arg1_4) _lh_rqpart_arg2_4) _lh_rqpart_LH_C_1_4) _lh_rqpart_arg4_4) (`LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_arg5_4))) _lh_rqpart_arg6_4))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d2 _lh_rqsort_arg1_5 _lh_rqsort_arg2_5 _lh_rqsort_arg3_5 =
  (match _lh_rqsort_arg2_5 with
    | `LH_N -> 
      _lh_rqsort_arg3_5
    | `LH_C(_lh_rqsort_LH_C_0_5, _lh_rqsort_LH_C_1_5) -> 
      (match _lh_rqsort_LH_C_1_5 with
        | `LH_N -> 
          (let rec t_1_8 = _lh_rqsort_arg3_5 in
            (let rec h_1_8 = _lh_rqsort_LH_C_0_5 in
              (fun f_2_4 -> 
                (`LH_C((f_2_4 h_1_8), ((map_lh__d1 f_2_4) t_1_8))))))
        | _ -> 
          ((((((rqpart_lh__d2 _lh_rqsort_arg1_5) _lh_rqsort_LH_C_0_5) _lh_rqsort_LH_C_1_5) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_5))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d3 _lh_rqsort_arg1_0 _lh_rqsort_arg2_0 _lh_rqsort_arg3_0 =
  (match _lh_rqsort_arg2_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_0
    | `LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_LH_C_1_0) -> 
      (match _lh_rqsort_LH_C_1_0 with
        | `LH_N -> 
          (let rec t_3 = _lh_rqsort_arg3_0 in
            (let rec h_3 = _lh_rqsort_LH_C_0_0 in
              (fun f_4 -> 
                (`LH_C((f_4 h_3), ((map_lh__d1 f_4) t_3))))))
        | _ -> 
          ((((((rqpart_lh__d3 _lh_rqsort_arg1_0) _lh_rqsort_LH_C_0_0) _lh_rqsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_0))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2_lh__d1 _lh_compareTuple2_arg1_0 _lh_compareTuple2_arg2_0 =
  (match _lh_compareTuple2_arg1_0 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_0, _lh_compareTuple2_LH_P2_1_0) -> 
      (match _lh_compareTuple2_arg2_0 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1, _lh_compareTuple2_LH_P2_1_1) -> 
          (_lh_compareTuple2_LH_P2_0_0 <= _lh_compareTuple2_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec sort_lh__d1 _lh_sort_arg1_0 =
  (((qsort_lh__d1 (fun a_0 b_0 -> 
    ((compareTuple2_lh__d1 a_0) b_0))) _lh_sort_arg1_0) (fun f_0 -> 
    (`LH_N)));;
let rec mappend_lh__d2 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec map_lh__d5 f_3_2 ls_9 _lh_popOutId_0_2 =
  (match ls_9 with
    | `LH_C(h_2_5, t_2_5) -> 
      (let rec t_2_6 = ((map_lh__d5 f_3_2) t_2_5) in
        (let rec h_2_6 = (f_3_2 h_2_5) in
          (`LH_C(h_2_6, ((mappend_lh__d2 t_2_6) _lh_popOutId_0_2)))))
    | `LH_N -> 
      _lh_popOutId_0_2);;
let rec map_lh__d4 f_5 ls_1 =
  (match ls_1 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_5 h_4), ((map_lh__d4 f_5) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec perms_lh__d0 _lh_perms_arg1_0 _lh_perms_arg2_0 =
  (match _lh_perms_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_0 with
        | 1 -> 
          ((map_lh__d4 (fun x_1 -> 
            (`LH_C(x_1, (`LH_N))))) _lh_perms_arg2_0)
        | _ -> 
          (match _lh_perms_arg2_0 with
            | `LH_C(_lh_perms_LH_C_0_0, _lh_perms_LH_C_1_0) -> 
              ((mappend_lh__d2 ((map_lh__d5 (fun x_2 -> 
                (`LH_C(_lh_perms_LH_C_0_0, x_2)))) ((perms_lh__d0 (_lh_perms_arg1_0 - 1)) _lh_perms_LH_C_1_0))) ((perms_lh__d0 _lh_perms_arg1_0) _lh_perms_LH_C_1_0))
            | _ -> 
              (failwith "error"))));;
let rec mappend_lh__d0 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d0 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec map_lh__d0 f_1_7 ls_5 =
  (ls_5 f_1_7);;
let rec filter_lh__d0 f_1_2 ls_3 =
  (ls_3 f_1_2);;
let rec map_lh__d2 f_1_8 ls_6 _lh_popOutId_0_1 =
  (match ls_6 with
    | `LH_C(h_1_4, t_1_4) -> 
      (let rec t_1_5 = ((map_lh__d2 f_1_8) t_1_4) in
        (let rec h_1_5 = (f_1_8 h_1_4) in
          (if (_lh_popOutId_0_1 h_1_5) then
            (`LH_C(h_1_5, ((filter_lh__d0 _lh_popOutId_0_1) t_1_5)))
          else
            ((filter_lh__d0 _lh_popOutId_0_1) t_1_5))))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d3 f_3_5 ls_1_0 =
  (ls_1_0 f_3_5);;
let rec qpart_lh__d0 _lh_qpart_arg1_2 _lh_qpart_arg2_2 _lh_qpart_arg3_2 _lh_qpart_arg4_2 _lh_qpart_arg5_2 _lh_qpart_arg6_2 =
  (match _lh_qpart_arg3_2 with
    | `LH_N -> 
      (((rqsort_lh__d0 _lh_qpart_arg1_2) _lh_qpart_arg4_2) (let rec t_3_0 = (((rqsort_lh__d1 _lh_qpart_arg1_2) _lh_qpart_arg5_2) _lh_qpart_arg6_2) in
        (let rec h_3_0 = _lh_qpart_arg2_2 in
          (fun f_3_7 -> 
            (`LH_C((f_3_7 h_3_0), ((map_lh__d0 f_3_7) t_3_0)))))))
    | `LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_LH_C_1_2) -> 
      (if ((_lh_qpart_arg1_2 _lh_qpart_arg2_2) _lh_qpart_LH_C_0_2) then
        ((((((qpart_lh__d0 _lh_qpart_arg1_2) _lh_qpart_arg2_2) _lh_qpart_LH_C_1_2) _lh_qpart_arg4_2) (`LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_arg5_2))) _lh_qpart_arg6_2)
      else
        ((((((qpart_lh__d0 _lh_qpart_arg1_2) _lh_qpart_arg2_2) _lh_qpart_LH_C_1_2) (`LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_arg4_2))) _lh_qpart_arg5_2) _lh_qpart_arg6_2))
    | _ -> 
      (failwith "error"))
and
qsort_lh__d0 _lh_qsort_arg1_2 _lh_qsort_arg2_2 _lh_qsort_arg3_2 =
  (match _lh_qsort_arg2_2 with
    | `LH_N -> 
      _lh_qsort_arg3_2
    | `LH_C(_lh_qsort_LH_C_0_2, _lh_qsort_LH_C_1_2) -> 
      (match _lh_qsort_LH_C_1_2 with
        | `LH_N -> 
          (let rec t_3_1 = _lh_qsort_arg3_2 in
            (let rec h_3_1 = _lh_qsort_LH_C_0_2 in
              (fun f_3_8 -> 
                (`LH_C((f_3_8 h_3_1), ((map_lh__d0 f_3_8) t_3_1))))))
        | _ -> 
          ((((((qpart_lh__d0 _lh_qsort_arg1_2) _lh_qsort_LH_C_0_2) _lh_qsort_LH_C_1_2) (`LH_N)) (`LH_N)) _lh_qsort_arg3_2))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d0 _lh_rqpart_arg1_1 _lh_rqpart_arg2_1 _lh_rqpart_arg3_1 _lh_rqpart_arg4_1 _lh_rqpart_arg5_1 _lh_rqpart_arg6_1 =
  (match _lh_rqpart_arg3_1 with
    | `LH_N -> 
      (((qsort_lh__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg4_1) (let rec t_2 = (((qsort_lh__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1) in
        (let rec h_2 = _lh_rqpart_arg2_1 in
          (fun f_2 -> 
            (`LH_C((f_2 h_2), ((map_lh__d0 f_2) t_2)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_LH_C_1_1) -> 
      (if ((_lh_rqpart_arg1_1 _lh_rqpart_LH_C_0_1) _lh_rqpart_arg2_1) then
        ((((((rqpart_lh__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg4_1))) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1)
      else
        ((((((rqpart_lh__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) _lh_rqpart_arg4_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg5_1))) _lh_rqpart_arg6_1))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d1 _lh_rqpart_arg1_2 _lh_rqpart_arg2_2 _lh_rqpart_arg3_2 _lh_rqpart_arg4_2 _lh_rqpart_arg5_2 _lh_rqpart_arg6_2 =
  (match _lh_rqpart_arg3_2 with
    | `LH_N -> 
      (((qsort_lh__d0 _lh_rqpart_arg1_2) _lh_rqpart_arg4_2) (let rec t_6 = (((qsort_lh__d0 _lh_rqpart_arg1_2) _lh_rqpart_arg5_2) _lh_rqpart_arg6_2) in
        (let rec h_6 = _lh_rqpart_arg2_2 in
          (fun f_7 -> 
            (`LH_C((f_7 h_6), ((map_lh__d0 f_7) t_6)))))))
    | `LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_LH_C_1_2) -> 
      (if ((_lh_rqpart_arg1_2 _lh_rqpart_LH_C_0_2) _lh_rqpart_arg2_2) then
        ((((((rqpart_lh__d1 _lh_rqpart_arg1_2) _lh_rqpart_arg2_2) _lh_rqpart_LH_C_1_2) (`LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_arg4_2))) _lh_rqpart_arg5_2) _lh_rqpart_arg6_2)
      else
        ((((((rqpart_lh__d1 _lh_rqpart_arg1_2) _lh_rqpart_arg2_2) _lh_rqpart_LH_C_1_2) _lh_rqpart_arg4_2) (`LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_arg5_2))) _lh_rqpart_arg6_2))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d0 _lh_rqsort_arg1_1 _lh_rqsort_arg2_1 _lh_rqsort_arg3_1 =
  (match _lh_rqsort_arg2_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_1
    | `LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_LH_C_1_1) -> 
      (match _lh_rqsort_LH_C_1_1 with
        | `LH_N -> 
          (let rec t_5 = _lh_rqsort_arg3_1 in
            (let rec h_5 = _lh_rqsort_LH_C_0_1 in
              (fun f_6 -> 
                (`LH_C((f_6 h_5), ((map_lh__d0 f_6) t_5))))))
        | _ -> 
          ((((((rqpart_lh__d0 _lh_rqsort_arg1_1) _lh_rqsort_LH_C_0_1) _lh_rqsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d1 _lh_rqsort_arg1_4 _lh_rqsort_arg2_4 _lh_rqsort_arg3_4 =
  (match _lh_rqsort_arg2_4 with
    | `LH_N -> 
      _lh_rqsort_arg3_4
    | `LH_C(_lh_rqsort_LH_C_0_4, _lh_rqsort_LH_C_1_4) -> 
      (match _lh_rqsort_LH_C_1_4 with
        | `LH_N -> 
          (let rec t_1_7 = _lh_rqsort_arg3_4 in
            (let rec h_1_7 = _lh_rqsort_LH_C_0_4 in
              (fun f_2_3 -> 
                (`LH_C((f_2_3 h_1_7), ((map_lh__d0 f_2_3) t_1_7))))))
        | _ -> 
          ((((((rqpart_lh__d1 _lh_rqsort_arg1_4) _lh_rqsort_LH_C_0_4) _lh_rqsort_LH_C_1_4) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_4))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2_lh__d0 _lh_compareTuple2_arg1_1 _lh_compareTuple2_arg2_1 =
  (match _lh_compareTuple2_arg1_1 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_2, _lh_compareTuple2_LH_P2_1_2) -> 
      (match _lh_compareTuple2_arg2_1 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_3, _lh_compareTuple2_LH_P2_1_3) -> 
          (_lh_compareTuple2_LH_P2_0_2 <= _lh_compareTuple2_LH_P2_0_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec sort_lh__d0 _lh_sort_arg1_2 =
  (((qsort_lh__d0 (fun a_3 b_3 -> 
    ((compareTuple2_lh__d0 a_3) b_3))) _lh_sort_arg1_2) (fun f_3_9 -> 
    (`LH_N)));;
let rec mappend_lh__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh__d1 t_1_0) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec sum_lh__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_3, t_1_3) -> 
      (h_1_3 + (sum_lh__d0 t_1_3))
    | `LH_N -> 
      0);;
let rec compareTuple2_lh__d2 _lh_compareTuple2_arg1_2 _lh_compareTuple2_arg2_2 =
  (match _lh_compareTuple2_arg1_2 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_4, _lh_compareTuple2_LH_P2_1_4) -> 
      (match _lh_compareTuple2_arg2_2 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_5, _lh_compareTuple2_LH_P2_1_5) -> 
          (_lh_compareTuple2_LH_P2_0_4 <= _lh_compareTuple2_LH_P2_0_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec qpart_lh__d2 _lh_qpart_arg1_1 _lh_qpart_arg2_1 _lh_qpart_arg3_1 _lh_qpart_arg4_1 _lh_qpart_arg5_1 _lh_qpart_arg6_1 =
  (match _lh_qpart_arg3_1 with
    | `LH_N -> 
      (((rqsort_lh__d4 _lh_qpart_arg1_1) _lh_qpart_arg4_1) (let rec t_2_9 = (((rqsort_lh__d5 _lh_qpart_arg1_1) _lh_qpart_arg5_1) _lh_qpart_arg6_1) in
        (let rec h_2_9 = _lh_qpart_arg2_1 in
          (fun f_3_6 -> 
            (`LH_C((f_3_6 h_2_9), ((map_lh__d3 f_3_6) t_2_9)))))))
    | `LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_LH_C_1_1) -> 
      (if ((_lh_qpart_arg1_1 _lh_qpart_arg2_1) _lh_qpart_LH_C_0_1) then
        ((((((qpart_lh__d2 _lh_qpart_arg1_1) _lh_qpart_arg2_1) _lh_qpart_LH_C_1_1) _lh_qpart_arg4_1) (`LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_arg5_1))) _lh_qpart_arg6_1)
      else
        ((((((qpart_lh__d2 _lh_qpart_arg1_1) _lh_qpart_arg2_1) _lh_qpart_LH_C_1_1) (`LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_arg4_1))) _lh_qpart_arg5_1) _lh_qpart_arg6_1))
    | _ -> 
      (failwith "error"))
and
qsort_lh__d2 _lh_qsort_arg1_1 _lh_qsort_arg2_1 _lh_qsort_arg3_1 =
  (match _lh_qsort_arg2_1 with
    | `LH_N -> 
      _lh_qsort_arg3_1
    | `LH_C(_lh_qsort_LH_C_0_1, _lh_qsort_LH_C_1_1) -> 
      (match _lh_qsort_LH_C_1_1 with
        | `LH_N -> 
          (let rec t_8 = _lh_qsort_arg3_1 in
            (let rec h_8 = _lh_qsort_LH_C_0_1 in
              (fun f_9 -> 
                (`LH_C((f_9 h_8), ((map_lh__d3 f_9) t_8))))))
        | _ -> 
          ((((((qpart_lh__d2 _lh_qsort_arg1_1) _lh_qsort_LH_C_0_1) _lh_qsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_qsort_arg3_1))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d4 _lh_rqpart_arg1_5 _lh_rqpart_arg2_5 _lh_rqpart_arg3_5 _lh_rqpart_arg4_5 _lh_rqpart_arg5_5 _lh_rqpart_arg6_5 =
  (match _lh_rqpart_arg3_5 with
    | `LH_N -> 
      (((qsort_lh__d2 _lh_rqpart_arg1_5) _lh_rqpart_arg4_5) (let rec t_2_8 = (((qsort_lh__d2 _lh_rqpart_arg1_5) _lh_rqpart_arg5_5) _lh_rqpart_arg6_5) in
        (let rec h_2_8 = _lh_rqpart_arg2_5 in
          (fun f_3_4 -> 
            (`LH_C((f_3_4 h_2_8), ((map_lh__d3 f_3_4) t_2_8)))))))
    | `LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_LH_C_1_5) -> 
      (if ((_lh_rqpart_arg1_5 _lh_rqpart_LH_C_0_5) _lh_rqpart_arg2_5) then
        ((((((rqpart_lh__d4 _lh_rqpart_arg1_5) _lh_rqpart_arg2_5) _lh_rqpart_LH_C_1_5) (`LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_arg4_5))) _lh_rqpart_arg5_5) _lh_rqpart_arg6_5)
      else
        ((((((rqpart_lh__d4 _lh_rqpart_arg1_5) _lh_rqpart_arg2_5) _lh_rqpart_LH_C_1_5) _lh_rqpart_arg4_5) (`LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_arg5_5))) _lh_rqpart_arg6_5))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d5 _lh_rqpart_arg1_0 _lh_rqpart_arg2_0 _lh_rqpart_arg3_0 _lh_rqpart_arg4_0 _lh_rqpart_arg5_0 _lh_rqpart_arg6_0 =
  (match _lh_rqpart_arg3_0 with
    | `LH_N -> 
      (((qsort_lh__d2 _lh_rqpart_arg1_0) _lh_rqpart_arg4_0) (let rec t_0 = (((qsort_lh__d2 _lh_rqpart_arg1_0) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0) in
        (let rec h_0 = _lh_rqpart_arg2_0 in
          (fun f_1 -> 
            (`LH_C((f_1 h_0), ((map_lh__d3 f_1) t_0)))))))
    | `LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_LH_C_1_0) -> 
      (if ((_lh_rqpart_arg1_0 _lh_rqpart_LH_C_0_0) _lh_rqpart_arg2_0) then
        ((((((rqpart_lh__d5 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg4_0))) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0)
      else
        ((((((rqpart_lh__d5 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg5_0))) _lh_rqpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d4 _lh_rqsort_arg1_2 _lh_rqsort_arg2_2 _lh_rqsort_arg3_2 =
  (match _lh_rqsort_arg2_2 with
    | `LH_N -> 
      _lh_rqsort_arg3_2
    | `LH_C(_lh_rqsort_LH_C_0_2, _lh_rqsort_LH_C_1_2) -> 
      (match _lh_rqsort_LH_C_1_2 with
        | `LH_N -> 
          (let rec t_9 = _lh_rqsort_arg3_2 in
            (let rec h_9 = _lh_rqsort_LH_C_0_2 in
              (fun f_1_0 -> 
                (`LH_C((f_1_0 h_9), ((map_lh__d3 f_1_0) t_9))))))
        | _ -> 
          ((((((rqpart_lh__d4 _lh_rqsort_arg1_2) _lh_rqsort_LH_C_0_2) _lh_rqsort_LH_C_1_2) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d5 _lh_rqsort_arg1_3 _lh_rqsort_arg2_3 _lh_rqsort_arg3_3 =
  (match _lh_rqsort_arg2_3 with
    | `LH_N -> 
      _lh_rqsort_arg3_3
    | `LH_C(_lh_rqsort_LH_C_0_3, _lh_rqsort_LH_C_1_3) -> 
      (match _lh_rqsort_LH_C_1_3 with
        | `LH_N -> 
          (let rec t_1_6 = _lh_rqsort_arg3_3 in
            (let rec h_1_6 = _lh_rqsort_LH_C_0_3 in
              (fun f_2_1 -> 
                (`LH_C((f_2_1 h_1_6), ((map_lh__d3 f_2_1) t_1_6))))))
        | _ -> 
          ((((((rqpart_lh__d5 _lh_rqsort_arg1_3) _lh_rqsort_LH_C_0_3) _lh_rqsort_LH_C_1_3) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_3))
    | _ -> 
      (failwith "error"));;
let rec sort_lh__d2 _lh_sort_arg1_1 =
  (((qsort_lh__d2 (fun a_2 b_2 -> 
    ((compareTuple2_lh__d2 a_2) b_2))) _lh_sort_arg1_1) (fun f_1_6 -> 
    (`LH_N)));;
let rec awards_lh__d0 _lh_awards_arg1_0 =
  (let rec sumscores_0 = ((map_lh__d2 (fun p_0 -> 
    (`LH_P2((sum_lh__d0 p_0), p_0)))) ((perms_lh__d0 3) _lh_awards_arg1_0)) in
    (let rec atleast_0 = (fun threshold_0 -> 
      ((filter_lh__d0 (fun sum_p_0 -> 
        (let rec _lh_matchIdent_0 = sum_p_0 in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_awards_LH_P2_0_0, _lh_awards_LH_P2_1_0) -> 
              (_lh_awards_LH_P2_0_0 >= threshold_0)
            | _ -> 
              (failwith "error"))))) sumscores_0)) in
      (let rec award_0 = (fun name_threshold_0 -> 
        (let rec _lh_matchIdent_1 = name_threshold_0 in
          (_lh_matchIdent_1 atleast_0))) in
        ((mappend_lh__d0 ((mappend_lh__d1 (award_0 (let rec _lh_awards_LH_P2_1_1 = 70 in
          (let rec _lh_awards_LH_P2_0_1 = (`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))) in
            (fun atleast_1 -> 
              ((map_lh__d3 (fun ps_0 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1, ps_0)))) (sort_lh__d2 (atleast_1 _lh_awards_LH_P2_1_1)))))))) (award_0 (let rec _lh_awards_LH_P2_1_2 = 60 in
          (let rec _lh_awards_LH_P2_0_2 = (`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))) in
            (fun atleast_2 -> 
              ((map_lh__d0 (fun ps_1 -> 
                (`LH_P2(_lh_awards_LH_P2_0_2, ps_1)))) (sort_lh__d0 (atleast_2 _lh_awards_LH_P2_1_2))))))))) (award_0 (let rec _lh_awards_LH_P2_1_3 = 50 in
          (let rec _lh_awards_LH_P2_0_3 = (`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))) in
            (fun atleast_3 -> 
              ((map_lh__d1 (fun ps_2 -> 
                (`LH_P2(_lh_awards_LH_P2_0_3, ps_2)))) (sort_lh__d1 (atleast_3 _lh_awards_LH_P2_1_3)))))))))));;
let rec foldl_lh__d0 f_2_5 i_0 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_9, t_1_9) -> 
      (((foldl_lh__d0 f_2_5) ((f_2_5 i_0) h_1_9)) t_1_9)
    | `LH_N -> 
      i_0);;
let rec delete_lh__d0 _lh_delete_arg1_0 _lh_delete_arg2_0 =
  (match _lh_delete_arg1_0 with
    | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
      (if (_lh_delete_LH_C_0_0 = _lh_delete_arg2_0) then
        ((delete_lh__d0 _lh_delete_LH_C_1_0) _lh_delete_arg2_0)
      else
        (`LH_C(_lh_delete_LH_C_0_0, ((delete_lh__d0 _lh_delete_LH_C_1_0) _lh_delete_arg2_0))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec listDiff_lh__d0 =
  (foldl_lh__d0 delete_lh__d0);;
let rec findawards_lh__d0 _lh_findawards_arg1_0 =
  (let rec _lh_matchIdent_3 = (awards_lh__d0 _lh_findawards_arg1_0) in
    (match _lh_matchIdent_3 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_0, _lh_findawards_LH_C_1_0) -> 
        (let rec _lh_matchIdent_4 = _lh_findawards_LH_C_0_0 in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_findawards_LH_P2_0_0, _lh_findawards_LH_P2_1_0) -> 
              (match _lh_findawards_LH_P2_1_0 with
                | `LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_0, (`LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1)))), (findawards_lh__d0 ((listDiff_lh__d0 _lh_findawards_arg1_0) _lh_findawards_LH_P2_1_1))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec competitors_lh__d0 _lh_competitors_arg1_0 f_3_1 =
  (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (fun f_2_7 -> 
    (`LH_N)) in
    (let rec h_2_1 = (let rec _lh_findallawards_LH_P2_1_0 = (`LH_C(9, (`LH_C(23, (`LH_C(17, (`LH_C(54, (`LH_C(_lh_competitors_arg1_0, (`LH_C(41, (`LH_C(9, (`LH_C(18, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_0 = (`LH_C('K', (`LH_C('e', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_0 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_0, (findawards_lh__d0 _lh_findallawards_LH_P2_1_0)))))) in
      (fun f_2_8 -> 
        (`LH_C((f_2_8 h_2_1), ((map_lh__d6 f_2_8) t_2_4)))))) in
    (let rec h_2_2 = (let rec _lh_findallawards_LH_P2_1_1 = (`LH_C(1, (`LH_C(18, (`LH_C(_lh_competitors_arg1_0, (`LH_C(20, (`LH_C(21, (`LH_C(19, (`LH_C(34, (`LH_C(8, (`LH_C(16, (`LH_C(21, (`LH_N))))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_1 = (`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_N))))))))) in
        (fun _lh_dummy_1 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_1, (findawards_lh__d0 _lh_findallawards_LH_P2_1_1)))))) in
      (fun f_2_9 -> 
        (`LH_C((f_2_9 h_2_2), ((map_lh__d6 f_2_9) t_2_3)))))) in
    (let rec h_2_3 = (let rec _lh_findallawards_LH_P2_1_2 = (`LH_C(23, (`LH_C(19, (`LH_C(45, (`LH_C(_lh_competitors_arg1_0, (`LH_C(17, (`LH_C(10, (`LH_C(5, (`LH_C(8, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_2 = (`LH_C('H', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_N))))))))) in
        (fun _lh_dummy_2 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_2, (findawards_lh__d0 _lh_findallawards_LH_P2_1_2)))))) in
      (fun f_3_0 -> 
        (`LH_C((f_3_0 h_2_3), ((map_lh__d6 f_3_0) t_2_2)))))) in
    (let rec h_2_4 = (let rec _lh_findallawards_LH_P2_1_3 = (`LH_C(35, (`LH_C(27, (`LH_C(40, (`LH_C(_lh_competitors_arg1_0, (`LH_C(34, (`LH_C(21, (`LH_N))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_3 = (`LH_C('S', (`LH_C('i', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_3 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_3, (findawards_lh__d0 _lh_findallawards_LH_P2_1_3)))))) in
      (`LH_C((f_3_1 h_2_4), ((map_lh__d6 f_3_1) t_2_1)))));;
let rec enumFromTo_lh__d0 a_1 b_1 _lh_popOutId_0_0 =
  (if (a_1 <= b_1) then
    (let rec t_1_2 = ((enumFromTo_lh__d0 (a_1 + 1)) b_1) in
      (let rec h_1_2 = a_1 in
        (`LH_C((_lh_popOutId_0_0 h_1_2), ((map_lh__d7 _lh_popOutId_0_0) t_1_2)))))
  else
    (`LH_N));;
let rec findallawards_lh__d0 _lh_findallawards_arg1_0 =
  ((map_lh__d6 (fun name_scores_0 -> 
    (let rec _lh_matchIdent_2 = name_scores_0 in
      (_lh_matchIdent_2 99)))) _lh_findallawards_arg1_0);;
let rec testAwards_nofib_lh__d0 _lh_testAwards_nofib_arg1_0 =
  ((map_lh__d7 (fun x_0 -> 
    (findallawards_lh__d0 (competitors_lh__d0 (x_0 mod 100))))) ((enumFromTo_lh__d0 1) _lh_testAwards_nofib_arg1_0));;
end;;

