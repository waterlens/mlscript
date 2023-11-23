

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec atIndex_lz__d0 n_1_1 ls_2_7 =
  (if (n_1_1 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_7) with
      | `LH_C(h_2_8, t_3_0) -> 
        (if (n_1_1 = 0) then
          h_2_8
        else
          ((atIndex_lz__d0 (n_1_1 - 1)) t_3_0))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1 n_2_2 ls_4_1 =
  (if (n_2_2 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4_1) with
      | `LH_C(h_4_2, t_4_4) -> 
        (if (n_2_2 = 0) then
          h_4_2
        else
          ((atIndex_lz__d1 (n_2_2 - 1)) t_4_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d0 n_4 ls_1_9 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_0, t_2_2) -> 
        (if (n_4 = 0) then
          h_2_0
        else
          ((atIndex_lz__d1_d0 (n_4 - 1)) t_2_2))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d1 n_5 ls_2_0 =
  (if (n_5 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_2_1, t_2_3) -> 
        (if (n_5 = 0) then
          h_2_1
        else
          ((atIndex_lz__d1_d1 (n_5 - 1)) t_2_3))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d2 n_1_5 ls_3_4 =
  (if (n_1_5 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_4) with
      | `LH_C(h_3_5, t_3_7) -> 
        (if (n_1_5 = 0) then
          h_3_5
        else
          ((atIndex_lz__d1_d2 (n_1_5 - 1)) t_3_7))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d3 n_2_3 ls_4_2 =
  (if (n_2_3 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4_2) with
      | `LH_C(h_4_3, t_4_5) -> 
        (if (n_2_3 = 0) then
          h_4_3
        else
          ((atIndex_lz__d1_d3 (n_2_3 - 1)) t_4_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d4 n_1_3 ls_3_1 =
  (if (n_1_3 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_1) with
      | `LH_C(h_3_2, t_3_4) -> 
        (if (n_1_3 = 0) then
          h_3_2
        else
          ((atIndex_lz__d1_d4 (n_1_3 - 1)) t_3_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d5 n_8 ls_2_4 =
  (if (n_8 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_4) with
      | `LH_C(h_2_5, t_2_7) -> 
        (if (n_8 = 0) then
          h_2_5
        else
          ((atIndex_lz__d1_d5 (n_8 - 1)) t_2_7))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d6 n_1_8 ls_3_7 =
  (if (n_1_8 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_7) with
      | `LH_C(h_3_8, t_4_0) -> 
        (if (n_1_8 = 0) then
          h_3_8
        else
          ((atIndex_lz__d1_d6 (n_1_8 - 1)) t_4_0))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d7 n_1_4 ls_3_3 =
  (if (n_1_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_3) with
      | `LH_C(h_3_4, t_3_6) -> 
        (if (n_1_4 = 0) then
          h_3_4
        else
          ((atIndex_lz__d1_d7 (n_1_4 - 1)) t_3_6))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d8 n_1_6 ls_3_5 =
  (if (n_1_6 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_5) with
      | `LH_C(h_3_6, t_3_8) -> 
        (if (n_1_6 = 0) then
          h_3_6
        else
          ((atIndex_lz__d1_d8 (n_1_6 - 1)) t_3_8))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d1_d9 n_9 ls_2_5 =
  (if (n_9 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_5) with
      | `LH_C(h_2_6, t_2_8) -> 
        (if (n_9 = 0) then
          h_2_6
        else
          ((atIndex_lz__d1_d9 (n_9 - 1)) t_2_8))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d2 n_2_1 ls_4_0 =
  (if (n_2_1 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4_0) with
      | `LH_C(h_4_1, t_4_3) -> 
        (if (n_2_1 = 0) then
          h_4_1
        else
          ((atIndex_lz__d2 (n_2_1 - 1)) t_4_3))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d2_d0 n_6 ls_2_1 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_1) with
      | `LH_C(h_2_2, t_2_4) -> 
        (if (n_6 = 0) then
          h_2_2
        else
          ((atIndex_lz__d2_d0 (n_6 - 1)) t_2_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d2_d1 n_1_7 ls_3_6 =
  (if (n_1_7 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_6) with
      | `LH_C(h_3_7, t_3_9) -> 
        (if (n_1_7 = 0) then
          h_3_7
        else
          ((atIndex_lz__d2_d1 (n_1_7 - 1)) t_3_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d2_d2 n_1_0 ls_2_6 =
  (if (n_1_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_6) with
      | `LH_C(h_2_7, t_2_9) -> 
        (if (n_1_0 = 0) then
          h_2_7
        else
          ((atIndex_lz__d2_d2 (n_1_0 - 1)) t_2_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d3 n_2_5 ls_4_5 =
  (if (n_2_5 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4_5) with
      | `LH_C(h_4_6, t_4_8) -> 
        (if (n_2_5 = 0) then
          h_4_6
        else
          ((atIndex_lz__d3 (n_2_5 - 1)) t_4_8))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d4 n_2_6 ls_4_6 =
  (if (n_2_6 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4_6) with
      | `LH_C(h_4_7, t_4_9) -> 
        (if (n_2_6 = 0) then
          h_4_7
        else
          ((atIndex_lz__d4 (n_2_6 - 1)) t_4_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d5 n_1_9 ls_3_8 =
  (if (n_1_9 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_8) with
      | `LH_C(h_3_9, t_4_1) -> 
        (if (n_1_9 = 0) then
          h_3_9
        else
          ((atIndex_lz__d5 (n_1_9 - 1)) t_4_1))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d6 n_1_2 ls_3_0 =
  (if (n_1_2 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_0) with
      | `LH_C(h_3_1, t_3_3) -> 
        (if (n_1_2 = 0) then
          h_3_1
        else
          ((atIndex_lz__d6 (n_1_2 - 1)) t_3_3))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d7 n_7 ls_2_2 =
  (if (n_7 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_2) with
      | `LH_C(h_2_3, t_2_5) -> 
        (if (n_7 = 0) then
          h_2_3
        else
          ((atIndex_lz__d7 (n_7 - 1)) t_2_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d8 n_2_0 ls_3_9 =
  (if (n_2_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3_9) with
      | `LH_C(h_4_0, t_4_2) -> 
        (if (n_2_0 = 0) then
          h_4_0
        else
          ((atIndex_lz__d8 (n_2_0 - 1)) t_4_2))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz__d9 n_2_4 ls_4_4 =
  (if (n_2_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4_4) with
      | `LH_C(h_4_5, t_4_7) -> 
        (if (n_2_4 = 0) then
          h_4_5
        else
          ((atIndex_lz__d9 (n_2_4 - 1)) t_4_7))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo__d0 a_1_0 b_7 =
  (if (a_1_0 <= b_7) then
    (`LH_C(a_1_0, ((enumFromTo__d0 (a_1_0 + 1)) b_7)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_2_3 b_2_0 =
  (if (a_2_3 <= b_2_0) then
    (`LH_C(a_2_3, ((enumFromTo__d1 (a_2_3 + 1)) b_2_0)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d1_d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d1 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d1_d1 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d2 a_2_5 b_2_2 =
  (if (a_2_5 <= b_2_2) then
    (`LH_C(a_2_5, ((enumFromTo__d1_d2 (a_2_5 + 1)) b_2_2)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d3 a_1_9 b_1_6 =
  (if (a_1_9 <= b_1_6) then
    (`LH_C(a_1_9, ((enumFromTo__d1_d3 (a_1_9 + 1)) b_1_6)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d4 a_2_2 b_1_9 =
  (if (a_2_2 <= b_1_9) then
    (`LH_C(a_2_2, ((enumFromTo__d1_d4 (a_2_2 + 1)) b_1_9)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d5 a_1_7 b_1_4 =
  (if (a_1_7 <= b_1_4) then
    (`LH_C(a_1_7, ((enumFromTo__d1_d5 (a_1_7 + 1)) b_1_4)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d6 a_1_8 b_1_5 =
  (if (a_1_8 <= b_1_5) then
    (`LH_C(a_1_8, ((enumFromTo__d1_d6 (a_1_8 + 1)) b_1_5)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d7 a_2_4 b_2_1 =
  (if (a_2_4 <= b_2_1) then
    (`LH_C(a_2_4, ((enumFromTo__d1_d7 (a_2_4 + 1)) b_2_1)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d8 a_9 b_6 =
  (if (a_9 <= b_6) then
    (`LH_C(a_9, ((enumFromTo__d1_d8 (a_9 + 1)) b_6)))
  else
    (`LH_N));;
let rec enumFromTo__d1_d9 a_1_1 b_8 =
  (if (a_1_1 <= b_8) then
    (`LH_C(a_1_1, ((enumFromTo__d1_d9 (a_1_1 + 1)) b_8)))
  else
    (`LH_N));;
let rec enumFromTo__d2 a_8 b_5 =
  (if (a_8 <= b_5) then
    (`LH_C(a_8, ((enumFromTo__d2 (a_8 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo__d2_d0 a_2_0 b_1_7 =
  (if (a_2_0 <= b_1_7) then
    (`LH_C(a_2_0, ((enumFromTo__d2_d0 (a_2_0 + 1)) b_1_7)))
  else
    (`LH_N));;
let rec enumFromTo__d2_d1 a_1_6 b_1_3 =
  (if (a_1_6 <= b_1_3) then
    (`LH_C(a_1_6, ((enumFromTo__d2_d1 (a_1_6 + 1)) b_1_3)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_1_5 b_1_2 =
  (if (a_1_5 <= b_1_2) then
    (`LH_C(a_1_5, ((enumFromTo__d3 (a_1_5 + 1)) b_1_2)))
  else
    (`LH_N));;
let rec enumFromTo__d4 a_1_4 b_1_1 =
  (if (a_1_4 <= b_1_1) then
    (`LH_C(a_1_4, ((enumFromTo__d4 (a_1_4 + 1)) b_1_1)))
  else
    (`LH_N));;
let rec enumFromTo__d5 a_1_2 b_9 =
  (if (a_1_2 <= b_9) then
    (`LH_C(a_1_2, ((enumFromTo__d5 (a_1_2 + 1)) b_9)))
  else
    (`LH_N));;
let rec enumFromTo__d6 a_2_6 b_2_3 =
  (if (a_2_6 <= b_2_3) then
    (`LH_C(a_2_6, ((enumFromTo__d6 (a_2_6 + 1)) b_2_3)))
  else
    (`LH_N));;
let rec enumFromTo__d7 a_7 b_4 =
  (if (a_7 <= b_4) then
    (`LH_C(a_7, ((enumFromTo__d7 (a_7 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo__d8 a_1_3 b_1_0 =
  (if (a_1_3 <= b_1_0) then
    (`LH_C(a_1_3, ((enumFromTo__d8 (a_1_3 + 1)) b_1_0)))
  else
    (`LH_N));;
let rec enumFromTo__d9 a_2_1 b_1_8 =
  (if (a_2_1 <= b_1_8) then
    (`LH_C(a_2_1, ((enumFromTo__d9 (a_2_1 + 1)) b_1_8)))
  else
    (`LH_N));;
let rec length__d0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_0, t_3_2) -> 
      (1 + (length__d0 t_3_2))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_4, t_2_6) -> 
      (1 + (length__d1 t_2_6))
    | `LH_N -> 
      0);;
let rec length__d2 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_2_9, t_3_1) -> 
      (1 + (length__d2 t_3_1))
    | `LH_N -> 
      0);;
let rec length__d3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_3, t_3_5) -> 
      (1 + (length__d3 t_3_5))
    | `LH_N -> 
      0);;
let rec length__d4 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_4_4, t_4_6) -> 
      (1 + (length__d4 t_4_6))
    | `LH_N -> 
      0);;
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
let rec odd__d0 _lh_odd_arg1_1 =
  ((_lh_odd_arg1_1 mod 2) = 1);;
let rec odd__d1 _lh_odd_arg1_2 =
  ((_lh_odd_arg1_2 mod 2) = 1);;
let rec remainders__d0 _lh_remainders_arg1_1_0 =
  (match _lh_remainders_arg1_1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_1_0, _lh_remainders_LH_C_1_1_0) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_1_0, _lh_remainders_LH_C_1_1_0)), (remainders__d0 _lh_remainders_LH_C_1_1_0)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d1 _lh_remainders_arg1_6 =
  (match _lh_remainders_arg1_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_6, _lh_remainders_LH_C_1_6) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_6, _lh_remainders_LH_C_1_6)), (remainders__d1 _lh_remainders_LH_C_1_6)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d1_d0 _lh_remainders_arg1_1_2 =
  (match _lh_remainders_arg1_1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_1_2, _lh_remainders_LH_C_1_1_2) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_1_2, _lh_remainders_LH_C_1_1_2)), (remainders__d1_d0 _lh_remainders_LH_C_1_1_2)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d1_d1 _lh_remainders_arg1_1 =
  (match _lh_remainders_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_1, _lh_remainders_LH_C_1_1) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_1, _lh_remainders_LH_C_1_1)), (remainders__d1_d1 _lh_remainders_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d1_d2 _lh_remainders_arg1_1_4 =
  (match _lh_remainders_arg1_1_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_1_4, _lh_remainders_LH_C_1_1_4) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_1_4, _lh_remainders_LH_C_1_1_4)), (remainders__d1_d2 _lh_remainders_LH_C_1_1_4)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d1_d3 _lh_remainders_arg1_3 =
  (match _lh_remainders_arg1_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_3, _lh_remainders_LH_C_1_3) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_3, _lh_remainders_LH_C_1_3)), (remainders__d1_d3 _lh_remainders_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d1_d4 _lh_remainders_arg1_1_6 =
  (match _lh_remainders_arg1_1_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_1_6, _lh_remainders_LH_C_1_1_6) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_1_6, _lh_remainders_LH_C_1_1_6)), (remainders__d1_d4 _lh_remainders_LH_C_1_1_6)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d1_d5 _lh_remainders_arg1_9 =
  (match _lh_remainders_arg1_9 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_9, _lh_remainders_LH_C_1_9) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_9, _lh_remainders_LH_C_1_9)), (remainders__d1_d5 _lh_remainders_LH_C_1_9)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d2 _lh_remainders_arg1_8 =
  (match _lh_remainders_arg1_8 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_8, _lh_remainders_LH_C_1_8) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_8, _lh_remainders_LH_C_1_8)), (remainders__d2 _lh_remainders_LH_C_1_8)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d3 _lh_remainders_arg1_2 =
  (match _lh_remainders_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_2, _lh_remainders_LH_C_1_2) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_2, _lh_remainders_LH_C_1_2)), (remainders__d3 _lh_remainders_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d4 _lh_remainders_arg1_7 =
  (match _lh_remainders_arg1_7 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_7, _lh_remainders_LH_C_1_7) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_7, _lh_remainders_LH_C_1_7)), (remainders__d4 _lh_remainders_LH_C_1_7)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d5 _lh_remainders_arg1_1_5 =
  (match _lh_remainders_arg1_1_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_1_5, _lh_remainders_LH_C_1_1_5) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_1_5, _lh_remainders_LH_C_1_1_5)), (remainders__d5 _lh_remainders_LH_C_1_1_5)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d6 _lh_remainders_arg1_1_1 =
  (match _lh_remainders_arg1_1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_1_1, _lh_remainders_LH_C_1_1_1) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_1_1, _lh_remainders_LH_C_1_1_1)), (remainders__d6 _lh_remainders_LH_C_1_1_1)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d7 _lh_remainders_arg1_4 =
  (match _lh_remainders_arg1_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_4, _lh_remainders_LH_C_1_4) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_4, _lh_remainders_LH_C_1_4)), (remainders__d7 _lh_remainders_LH_C_1_4)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d8 _lh_remainders_arg1_1_3 =
  (match _lh_remainders_arg1_1_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_1_3, _lh_remainders_LH_C_1_1_3) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_1_3, _lh_remainders_LH_C_1_1_3)), (remainders__d8 _lh_remainders_LH_C_1_1_3)))
    | _ -> 
      (failwith "error"));;
let rec remainders__d9 _lh_remainders_arg1_5 =
  (match _lh_remainders_arg1_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_5, _lh_remainders_LH_C_1_5) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_5, _lh_remainders_LH_C_1_5)), (remainders__d9 _lh_remainders_LH_C_1_5)))
    | _ -> 
      (failwith "error"));;
let rec bcp_generator__d0 _lh_bcp_generator_arg1_1 _lh_bcp_generator_arg2_1 =
  (if (odd__d0 _lh_bcp_generator_arg2_1) then
    (`LH_N)
  else
    (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_3_1 -> 
      (match _lh_listcomp_fun_para_3_1 with
        | `LH_C(_lh_listcomp_fun_ls_h_3_1, _lh_listcomp_fun_ls_t_3_1) -> 
          (match _lh_listcomp_fun_ls_h_3_1 with
            | `LH_C(_lh_bcp_generator_LH_C_0_1, _lh_bcp_generator_LH_C_1_1) -> 
              (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_3_2 -> 
                (match _lh_listcomp_fun_para_3_2 with
                  | `LH_C(_lh_listcomp_fun_ls_h_3_2, _lh_listcomp_fun_ls_t_3_2) -> 
                    (`LH_C((`BCP(_lh_bcp_generator_LH_C_0_1, _lh_listcomp_fun_ls_h_3_2)), (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_3_2)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_3_1))) in
                (_lh_listcomp_fun_3_2 (`LH_C(_lh_bcp_generator_LH_C_0_1, _lh_bcp_generator_LH_C_1_1))))
            | _ -> 
              (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_3_1))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_3_1 (remainders__d0 ((atIndex_lz__d1 (_lh_bcp_generator_arg2_1 / 2)) _lh_bcp_generator_arg1_1)))))
and bcp_generator__d1 _lh_bcp_generator_arg1_2 _lh_bcp_generator_arg2_2 =
  (if (odd__d1 _lh_bcp_generator_arg2_2) then
    (`LH_N)
  else
    (let rec _lh_listcomp_fun_8_0 = (fun _lh_listcomp_fun_para_8_0 -> 
      (match _lh_listcomp_fun_para_8_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_8_0, _lh_listcomp_fun_ls_t_8_0) -> 
          (match _lh_listcomp_fun_ls_h_8_0 with
            | `LH_C(_lh_bcp_generator_LH_C_0_2, _lh_bcp_generator_LH_C_1_2) -> 
              (let rec _lh_listcomp_fun_8_1 = (fun _lh_listcomp_fun_para_8_1 -> 
                (match _lh_listcomp_fun_para_8_1 with
                  | `LH_C(_lh_listcomp_fun_ls_h_8_1, _lh_listcomp_fun_ls_t_8_1) -> 
                    (`LH_C((`BCP(_lh_bcp_generator_LH_C_0_2, _lh_listcomp_fun_ls_h_8_1)), (_lh_listcomp_fun_8_1 _lh_listcomp_fun_ls_t_8_1)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_8_0 _lh_listcomp_fun_ls_t_8_0))) in
                (_lh_listcomp_fun_8_1 (`LH_C(_lh_bcp_generator_LH_C_0_2, _lh_bcp_generator_LH_C_1_2))))
            | _ -> 
              (_lh_listcomp_fun_8_0 _lh_listcomp_fun_ls_t_8_0))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_8_0 (remainders__d8 ((atIndex_lz__d1_d2 (_lh_bcp_generator_arg2_2 / 2)) _lh_bcp_generator_arg1_2)))))
and bcp_until__d0 _lh_bcp_until_arg1_1 =
  (let rec radicals_8 = (radical_generator__d0 (_lh_bcp_until_arg1_1 / 2)) in
    (let rec _lh_listcomp_fun_4_3 = (fun _lh_listcomp_fun_para_4_3 -> 
      (match _lh_listcomp_fun_para_4_3 with
        | `LH_C(_lh_listcomp_fun_ls_h_4_3, _lh_listcomp_fun_ls_t_4_3) -> 
          (`LH_C((length__d0 ((bcp_generator__d0 radicals_8) _lh_listcomp_fun_ls_h_4_3)), (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_4_3)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_4_3 ((enumFromTo__d0 1) _lh_bcp_until_arg1_1))))
and ccp_generator__d0 _lh_ccp_generator_arg1_2 _lh_ccp_generator_arg2_2 =
  (let rec _lh_listcomp_fun_4_9 = (fun _lh_listcomp_fun_para_4_9 -> 
    (match _lh_listcomp_fun_para_4_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_9, _lh_listcomp_fun_ls_t_4_9) -> 
        (match _lh_listcomp_fun_ls_h_4_9 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_2, _lh_ccp_generator_LH_P4_1_2, _lh_ccp_generator_LH_P4_2_2, _lh_ccp_generator_LH_P4_3_2) -> 
            (let rec _lh_listcomp_fun_5_0 = (fun _lh_listcomp_fun_para_5_0 -> 
              (match _lh_listcomp_fun_para_5_0 with
                | `LH_C(_lh_listcomp_fun_ls_h_5_0, _lh_listcomp_fun_ls_t_5_0) -> 
                  (match _lh_listcomp_fun_ls_h_5_0 with
                    | `LH_C(_lh_ccp_generator_LH_C_0_6, _lh_ccp_generator_LH_C_1_6) -> 
                      (let rec _lh_listcomp_fun_5_1 = (fun _lh_listcomp_fun_para_5_1 -> 
                        (match _lh_listcomp_fun_para_5_1 with
                          | `LH_C(_lh_listcomp_fun_ls_h_5_1, _lh_listcomp_fun_ls_t_5_1) -> 
                            (match _lh_listcomp_fun_ls_h_5_1 with
                              | `LH_C(_lh_ccp_generator_LH_C_0_7, _lh_ccp_generator_LH_C_1_7) -> 
                                (let rec _lh_listcomp_fun_5_2 = (fun _lh_listcomp_fun_para_5_2 -> 
                                  (match _lh_listcomp_fun_para_5_2 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_5_2, _lh_listcomp_fun_ls_t_5_2) -> 
                                      (match _lh_listcomp_fun_ls_h_5_2 with
                                        | `LH_C(_lh_ccp_generator_LH_C_0_8, _lh_ccp_generator_LH_C_1_8) -> 
                                          (let rec _lh_listcomp_fun_5_3 = (fun _lh_listcomp_fun_para_5_3 -> 
                                            (match _lh_listcomp_fun_para_5_3 with
                                              | `LH_C(_lh_listcomp_fun_ls_h_5_3, _lh_listcomp_fun_ls_t_5_3) -> 
                                                (`LH_C((`CCP(_lh_ccp_generator_LH_C_0_6, _lh_ccp_generator_LH_C_0_7, _lh_ccp_generator_LH_C_0_8, _lh_listcomp_fun_ls_h_5_3)), (_lh_listcomp_fun_5_3 _lh_listcomp_fun_ls_t_5_3)))
                                              | `LH_N -> 
                                                (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_5_2))) in
                                            (_lh_listcomp_fun_5_3 (if (_lh_ccp_generator_LH_P4_2_2 = _lh_ccp_generator_LH_P4_3_2) then
                                              (`LH_C(_lh_ccp_generator_LH_C_0_8, _lh_ccp_generator_LH_C_1_8))
                                            else
                                              ((atIndex_lz__d8 _lh_ccp_generator_LH_P4_3_2) _lh_ccp_generator_arg1_2))))
                                        | _ -> 
                                          (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_5_2))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_5_1))) in
                                  (_lh_listcomp_fun_5_2 (remainders__d5 (if (_lh_ccp_generator_LH_P4_1_2 = _lh_ccp_generator_LH_P4_2_2) then
                                    (`LH_C(_lh_ccp_generator_LH_C_0_7, _lh_ccp_generator_LH_C_1_7))
                                  else
                                    ((atIndex_lz__d7 _lh_ccp_generator_LH_P4_2_2) _lh_ccp_generator_arg1_2)))))
                              | _ -> 
                                (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_5_1))
                          | `LH_N -> 
                            (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_5_0))) in
                        (_lh_listcomp_fun_5_1 (remainders__d4 (if (_lh_ccp_generator_LH_P4_0_2 = _lh_ccp_generator_LH_P4_1_2) then
                          (`LH_C(_lh_ccp_generator_LH_C_0_6, _lh_ccp_generator_LH_C_1_6))
                        else
                          ((atIndex_lz__d6 _lh_ccp_generator_LH_P4_1_2) _lh_ccp_generator_arg1_2)))))
                    | _ -> 
                      (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_5_0))
                | `LH_N -> 
                  (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_4_9))) in
              (_lh_listcomp_fun_5_0 (remainders__d3 ((atIndex_lz__d5 _lh_ccp_generator_LH_P4_0_2) _lh_ccp_generator_arg1_2))))
          | _ -> 
            (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_4_9))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_4_9 (four_partitions__d0 (_lh_ccp_generator_arg2_2 - 1))))
and ccp_generator__d1 _lh_ccp_generator_arg1_1 _lh_ccp_generator_arg2_1 =
  (let rec _lh_listcomp_fun_4_4 = (fun _lh_listcomp_fun_para_4_4 -> 
    (match _lh_listcomp_fun_para_4_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_4, _lh_listcomp_fun_ls_t_4_4) -> 
        (match _lh_listcomp_fun_ls_h_4_4 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_1, _lh_ccp_generator_LH_P4_1_1, _lh_ccp_generator_LH_P4_2_1, _lh_ccp_generator_LH_P4_3_1) -> 
            (let rec _lh_listcomp_fun_4_5 = (fun _lh_listcomp_fun_para_4_5 -> 
              (match _lh_listcomp_fun_para_4_5 with
                | `LH_C(_lh_listcomp_fun_ls_h_4_5, _lh_listcomp_fun_ls_t_4_5) -> 
                  (match _lh_listcomp_fun_ls_h_4_5 with
                    | `LH_C(_lh_ccp_generator_LH_C_0_3, _lh_ccp_generator_LH_C_1_3) -> 
                      (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_4_6 -> 
                        (match _lh_listcomp_fun_para_4_6 with
                          | `LH_C(_lh_listcomp_fun_ls_h_4_6, _lh_listcomp_fun_ls_t_4_6) -> 
                            (match _lh_listcomp_fun_ls_h_4_6 with
                              | `LH_C(_lh_ccp_generator_LH_C_0_4, _lh_ccp_generator_LH_C_1_4) -> 
                                (let rec _lh_listcomp_fun_4_7 = (fun _lh_listcomp_fun_para_4_7 -> 
                                  (match _lh_listcomp_fun_para_4_7 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_4_7, _lh_listcomp_fun_ls_t_4_7) -> 
                                      (match _lh_listcomp_fun_ls_h_4_7 with
                                        | `LH_C(_lh_ccp_generator_LH_C_0_5, _lh_ccp_generator_LH_C_1_5) -> 
                                          (let rec _lh_listcomp_fun_4_8 = (fun _lh_listcomp_fun_para_4_8 -> 
                                            (match _lh_listcomp_fun_para_4_8 with
                                              | `LH_C(_lh_listcomp_fun_ls_h_4_8, _lh_listcomp_fun_ls_t_4_8) -> 
                                                (`LH_C((`CCP(_lh_ccp_generator_LH_C_0_3, _lh_ccp_generator_LH_C_0_4, _lh_ccp_generator_LH_C_0_5, _lh_listcomp_fun_ls_h_4_8)), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_4_8)))
                                              | `LH_N -> 
                                                (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_4_7))) in
                                            (_lh_listcomp_fun_4_8 (if (_lh_ccp_generator_LH_P4_2_1 = _lh_ccp_generator_LH_P4_3_1) then
                                              (`LH_C(_lh_ccp_generator_LH_C_0_5, _lh_ccp_generator_LH_C_1_5))
                                            else
                                              ((atIndex_lz__d1_d6 _lh_ccp_generator_LH_P4_3_1) _lh_ccp_generator_arg1_1))))
                                        | _ -> 
                                          (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_4_7))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_4_6))) in
                                  (_lh_listcomp_fun_4_7 (remainders__d1_d1 (if (_lh_ccp_generator_LH_P4_1_1 = _lh_ccp_generator_LH_P4_2_1) then
                                    (`LH_C(_lh_ccp_generator_LH_C_0_4, _lh_ccp_generator_LH_C_1_4))
                                  else
                                    ((atIndex_lz__d1_d5 _lh_ccp_generator_LH_P4_2_1) _lh_ccp_generator_arg1_1)))))
                              | _ -> 
                                (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_4_6))
                          | `LH_N -> 
                            (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_4_5))) in
                        (_lh_listcomp_fun_4_6 (remainders__d1_d0 (if (_lh_ccp_generator_LH_P4_0_1 = _lh_ccp_generator_LH_P4_1_1) then
                          (`LH_C(_lh_ccp_generator_LH_C_0_3, _lh_ccp_generator_LH_C_1_3))
                        else
                          ((atIndex_lz__d1_d4 _lh_ccp_generator_LH_P4_1_1) _lh_ccp_generator_arg1_1)))))
                    | _ -> 
                      (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_4_5))
                | `LH_N -> 
                  (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_4_4))) in
              (_lh_listcomp_fun_4_5 (remainders__d9 ((atIndex_lz__d1_d3 _lh_ccp_generator_LH_P4_0_1) _lh_ccp_generator_arg1_1))))
          | _ -> 
            (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_4_4))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_4_4 (four_partitions__d1 (_lh_ccp_generator_arg2_1 - 1))))
and ccp_until__d0 _lh_ccp_until_arg1_1 =
  (let rec radicals_9 = (radical_generator__d1 (_lh_ccp_until_arg1_1 / 2)) in
    (let rec _lh_listcomp_fun_5_8 = (fun _lh_listcomp_fun_para_5_8 -> 
      (match _lh_listcomp_fun_para_5_8 with
        | `LH_C(_lh_listcomp_fun_ls_h_5_8, _lh_listcomp_fun_ls_t_5_8) -> 
          (`LH_C((length__d1 ((ccp_generator__d0 radicals_9) _lh_listcomp_fun_ls_h_5_8)), (_lh_listcomp_fun_5_8 _lh_listcomp_fun_ls_t_5_8)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_5_8 ((enumFromTo__d7 1) _lh_ccp_until_arg1_1))))
and four_partitions__d0 _lh_four_partitions_arg1_1 =
  (let rec _lh_listcomp_fun_2_5 = (fun _lh_listcomp_fun_para_2_5 -> 
    (match _lh_listcomp_fun_para_2_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_t_2_5) -> 
        (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_2_6 -> 
          (match _lh_listcomp_fun_para_2_6 with
            | `LH_C(_lh_listcomp_fun_ls_h_2_6, _lh_listcomp_fun_ls_t_2_6) -> 
              (let rec _lh_listcomp_fun_2_7 = (fun _lh_listcomp_fun_para_2_7 -> 
                (match _lh_listcomp_fun_para_2_7 with
                  | `LH_C(_lh_listcomp_fun_ls_h_2_7, _lh_listcomp_fun_ls_t_2_7) -> 
                    (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_2_8 -> 
                      (match _lh_listcomp_fun_para_2_8 with
                        | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_2_8) -> 
                          (`LH_C((`LH_P4(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_h_2_6, _lh_listcomp_fun_ls_h_2_7, _lh_listcomp_fun_ls_h_2_8)), (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_8)))
                        | `LH_N -> 
                          (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_2_7))) in
                      (_lh_listcomp_fun_2_8 (`LH_C((_lh_four_partitions_arg1_1 - ((_lh_listcomp_fun_ls_h_2_5 + _lh_listcomp_fun_ls_h_2_6) + _lh_listcomp_fun_ls_h_2_7)), (`LH_N)))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_2_6))) in
                (_lh_listcomp_fun_2_7 ((enumFromTo__d4 ((max__d0 _lh_listcomp_fun_ls_h_2_6) (((int_of_float (ceil ((float_of_int _lh_four_partitions_arg1_1) /. (float_of_int 2)))) - _lh_listcomp_fun_ls_h_2_5) - _lh_listcomp_fun_ls_h_2_6))) (((_lh_four_partitions_arg1_1 - _lh_listcomp_fun_ls_h_2_5) - _lh_listcomp_fun_ls_h_2_6) / 2))))
            | `LH_N -> 
              (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_2_5))) in
          (_lh_listcomp_fun_2_6 ((enumFromTo__d6 _lh_listcomp_fun_ls_h_2_5) ((_lh_four_partitions_arg1_1 - _lh_listcomp_fun_ls_h_2_5) / 3))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_5 ((enumFromTo__d5 0) (_lh_four_partitions_arg1_1 / 4))))
and four_partitions__d1 _lh_four_partitions_arg1_2 =
  (let rec _lh_listcomp_fun_7_6 = (fun _lh_listcomp_fun_para_7_6 -> 
    (match _lh_listcomp_fun_para_7_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_7_6, _lh_listcomp_fun_ls_t_7_6) -> 
        (let rec _lh_listcomp_fun_7_7 = (fun _lh_listcomp_fun_para_7_7 -> 
          (match _lh_listcomp_fun_para_7_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_7_7, _lh_listcomp_fun_ls_t_7_7) -> 
              (let rec _lh_listcomp_fun_7_8 = (fun _lh_listcomp_fun_para_7_8 -> 
                (match _lh_listcomp_fun_para_7_8 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7_8, _lh_listcomp_fun_ls_t_7_8) -> 
                    (let rec _lh_listcomp_fun_7_9 = (fun _lh_listcomp_fun_para_7_9 -> 
                      (match _lh_listcomp_fun_para_7_9 with
                        | `LH_C(_lh_listcomp_fun_ls_h_7_9, _lh_listcomp_fun_ls_t_7_9) -> 
                          (`LH_C((`LH_P4(_lh_listcomp_fun_ls_h_7_6, _lh_listcomp_fun_ls_h_7_7, _lh_listcomp_fun_ls_h_7_8, _lh_listcomp_fun_ls_h_7_9)), (_lh_listcomp_fun_7_9 _lh_listcomp_fun_ls_t_7_9)))
                        | `LH_N -> 
                          (_lh_listcomp_fun_7_8 _lh_listcomp_fun_ls_t_7_8))) in
                      (_lh_listcomp_fun_7_9 (`LH_C((_lh_four_partitions_arg1_2 - ((_lh_listcomp_fun_ls_h_7_6 + _lh_listcomp_fun_ls_h_7_7) + _lh_listcomp_fun_ls_h_7_8)), (`LH_N)))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_7_7 _lh_listcomp_fun_ls_t_7_7))) in
                (_lh_listcomp_fun_7_8 ((enumFromTo__d1_d2 ((max__d1 _lh_listcomp_fun_ls_h_7_7) (((int_of_float (ceil ((float_of_int _lh_four_partitions_arg1_2) /. (float_of_int 2)))) - _lh_listcomp_fun_ls_h_7_6) - _lh_listcomp_fun_ls_h_7_7))) (((_lh_four_partitions_arg1_2 - _lh_listcomp_fun_ls_h_7_6) - _lh_listcomp_fun_ls_h_7_7) / 2))))
            | `LH_N -> 
              (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_7_6))) in
          (_lh_listcomp_fun_7_7 ((enumFromTo__d1_d4 _lh_listcomp_fun_ls_h_7_6) ((_lh_four_partitions_arg1_2 - _lh_listcomp_fun_ls_h_7_6) / 3))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_7_6 ((enumFromTo__d1_d3 0) (_lh_four_partitions_arg1_2 / 4))))
and paraffins_until__d0 _lh_paraffins_until_arg1_1 =
  (let rec radicals_7 = (radical_generator__d2 (_lh_paraffins_until_arg1_1 / 2)) in
    (let rec _lh_listcomp_fun_4_2 = (fun _lh_listcomp_fun_para_4_2 -> 
      (match _lh_listcomp_fun_para_4_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_4_2, _lh_listcomp_fun_ls_t_4_2) -> 
          (`LH_C(((length__d3 ((bcp_generator__d1 radicals_7) _lh_listcomp_fun_ls_h_4_2)) + (length__d4 ((ccp_generator__d1 radicals_7) _lh_listcomp_fun_ls_h_4_2))), (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_4_2)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_4_2 ((enumFromTo__d1_d5 1) _lh_paraffins_until_arg1_1))))
and radical_generator__d0 _lh_radical_generator_arg1_3 =
  (let rec radicals_6 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_4_1 -> 
    (match _lh_listcomp_fun_para_4_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_1, _lh_listcomp_fun_ls_t_4_1) -> 
        (lazy (`LH_C(((rads_of_size_n__d0 radicals_6) _lh_listcomp_fun_ls_h_4_1), (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_4_1))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_4_1 ((enumFromTo__d1 1) _lh_radical_generator_arg1_3)))))) in
    radicals_6)
and radical_generator__d1 _lh_radical_generator_arg1_2 =
  (let rec radicals_5 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_4_0 = (fun _lh_listcomp_fun_para_4_0 -> 
    (match _lh_listcomp_fun_para_4_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_0, _lh_listcomp_fun_ls_t_4_0) -> 
        (lazy (`LH_C(((rads_of_size_n__d1 radicals_5) _lh_listcomp_fun_ls_h_4_0), (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_4_0))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_4_0 ((enumFromTo__d8 1) _lh_radical_generator_arg1_2)))))) in
    radicals_5)
and radical_generator__d2 _lh_radical_generator_arg1_4 =
  (let rec radicals_1_0 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_8_2 = (fun _lh_listcomp_fun_para_8_2 -> 
    (match _lh_listcomp_fun_para_8_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_8_2, _lh_listcomp_fun_ls_t_8_2) -> 
        (lazy (`LH_C(((rads_of_size_n__d2 radicals_1_0) _lh_listcomp_fun_ls_h_8_2), (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_8_2))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_8_2 ((enumFromTo__d1_d6 1) _lh_radical_generator_arg1_4)))))) in
    radicals_1_0)
and radical_generator__d3 _lh_radical_generator_arg1_1 =
  (let rec radicals_4 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_2_4 -> 
    (match _lh_listcomp_fun_para_2_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_4, _lh_listcomp_fun_ls_t_2_4) -> 
        (lazy (`LH_C(((rads_of_size_n__d3 radicals_4) _lh_listcomp_fun_ls_h_2_4), (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_2_4))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_2_4 ((enumFromTo__d1_d9 1) _lh_radical_generator_arg1_1)))))) in
    radicals_4)
and rads_of_size_n__d0 _lh_rads_of_size_n_arg1_3 _lh_rads_of_size_n_arg2_3 =
  (let rec _lh_listcomp_fun_6_8 = (fun _lh_listcomp_fun_para_6_8 -> 
    (match _lh_listcomp_fun_para_6_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_6_8, _lh_listcomp_fun_ls_t_6_8) -> 
        (match _lh_listcomp_fun_ls_h_6_8 with
          | `LH_P3(_lh_rads_of_size_n_LH_P3_0_3, _lh_rads_of_size_n_LH_P3_1_3, _lh_rads_of_size_n_LH_P3_2_3) -> 
            (let rec _lh_listcomp_fun_6_9 = (fun _lh_listcomp_fun_para_6_9 -> 
              (match _lh_listcomp_fun_para_6_9 with
                | `LH_C(_lh_listcomp_fun_ls_h_6_9, _lh_listcomp_fun_ls_t_6_9) -> 
                  (match _lh_listcomp_fun_ls_h_6_9 with
                    | `LH_C(_lh_rads_of_size_n_LH_C_0_6, _lh_rads_of_size_n_LH_C_1_6) -> 
                      (let rec _lh_listcomp_fun_7_0 = (fun _lh_listcomp_fun_para_7_0 -> 
                        (match _lh_listcomp_fun_para_7_0 with
                          | `LH_C(_lh_listcomp_fun_ls_h_7_0, _lh_listcomp_fun_ls_t_7_0) -> 
                            (match _lh_listcomp_fun_ls_h_7_0 with
                              | `LH_C(_lh_rads_of_size_n_LH_C_0_7, _lh_rads_of_size_n_LH_C_1_7) -> 
                                (let rec _lh_listcomp_fun_7_1 = (fun _lh_listcomp_fun_para_7_1 -> 
                                  (match _lh_listcomp_fun_para_7_1 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_7_1, _lh_listcomp_fun_ls_t_7_1) -> 
                                      (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_6, _lh_rads_of_size_n_LH_C_0_7, _lh_listcomp_fun_ls_h_7_1)), (_lh_listcomp_fun_7_1 _lh_listcomp_fun_ls_t_7_1)))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_7_0 _lh_listcomp_fun_ls_t_7_0))) in
                                  (_lh_listcomp_fun_7_1 (if (_lh_rads_of_size_n_LH_P3_1_3 = _lh_rads_of_size_n_LH_P3_2_3) then
                                    (`LH_C(_lh_rads_of_size_n_LH_C_0_7, _lh_rads_of_size_n_LH_C_1_7))
                                  else
                                    ((atIndex_lz__d4 _lh_rads_of_size_n_LH_P3_2_3) _lh_rads_of_size_n_arg1_3))))
                              | _ -> 
                                (_lh_listcomp_fun_7_0 _lh_listcomp_fun_ls_t_7_0))
                          | `LH_N -> 
                            (_lh_listcomp_fun_6_9 _lh_listcomp_fun_ls_t_6_9))) in
                        (_lh_listcomp_fun_7_0 (remainders__d2 (if (_lh_rads_of_size_n_LH_P3_0_3 = _lh_rads_of_size_n_LH_P3_1_3) then
                          (`LH_C(_lh_rads_of_size_n_LH_C_0_6, _lh_rads_of_size_n_LH_C_1_6))
                        else
                          ((atIndex_lz__d3 _lh_rads_of_size_n_LH_P3_1_3) _lh_rads_of_size_n_arg1_3)))))
                    | _ -> 
                      (_lh_listcomp_fun_6_9 _lh_listcomp_fun_ls_t_6_9))
                | `LH_N -> 
                  (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_6_8))) in
              (_lh_listcomp_fun_6_9 (remainders__d1 ((atIndex_lz__d2 _lh_rads_of_size_n_LH_P3_0_3) _lh_rads_of_size_n_arg1_3))))
          | _ -> 
            (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_6_8))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6_8 (three_partitions__d0 (_lh_rads_of_size_n_arg2_3 - 1))))
and rads_of_size_n__d1 _lh_rads_of_size_n_arg1_4 _lh_rads_of_size_n_arg2_4 =
  (let rec _lh_listcomp_fun_7_2 = (fun _lh_listcomp_fun_para_7_2 -> 
    (match _lh_listcomp_fun_para_7_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_7_2, _lh_listcomp_fun_ls_t_7_2) -> 
        (match _lh_listcomp_fun_ls_h_7_2 with
          | `LH_P3(_lh_rads_of_size_n_LH_P3_0_4, _lh_rads_of_size_n_LH_P3_1_4, _lh_rads_of_size_n_LH_P3_2_4) -> 
            (let rec _lh_listcomp_fun_7_3 = (fun _lh_listcomp_fun_para_7_3 -> 
              (match _lh_listcomp_fun_para_7_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_7_3, _lh_listcomp_fun_ls_t_7_3) -> 
                  (match _lh_listcomp_fun_ls_h_7_3 with
                    | `LH_C(_lh_rads_of_size_n_LH_C_0_8, _lh_rads_of_size_n_LH_C_1_8) -> 
                      (let rec _lh_listcomp_fun_7_4 = (fun _lh_listcomp_fun_para_7_4 -> 
                        (match _lh_listcomp_fun_para_7_4 with
                          | `LH_C(_lh_listcomp_fun_ls_h_7_4, _lh_listcomp_fun_ls_t_7_4) -> 
                            (match _lh_listcomp_fun_ls_h_7_4 with
                              | `LH_C(_lh_rads_of_size_n_LH_C_0_9, _lh_rads_of_size_n_LH_C_1_9) -> 
                                (let rec _lh_listcomp_fun_7_5 = (fun _lh_listcomp_fun_para_7_5 -> 
                                  (match _lh_listcomp_fun_para_7_5 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_7_5, _lh_listcomp_fun_ls_t_7_5) -> 
                                      (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_8, _lh_rads_of_size_n_LH_C_0_9, _lh_listcomp_fun_ls_h_7_5)), (_lh_listcomp_fun_7_5 _lh_listcomp_fun_ls_t_7_5)))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_7_4))) in
                                  (_lh_listcomp_fun_7_5 (if (_lh_rads_of_size_n_LH_P3_1_4 = _lh_rads_of_size_n_LH_P3_2_4) then
                                    (`LH_C(_lh_rads_of_size_n_LH_C_0_9, _lh_rads_of_size_n_LH_C_1_9))
                                  else
                                    ((atIndex_lz__d1_d1 _lh_rads_of_size_n_LH_P3_2_4) _lh_rads_of_size_n_arg1_4))))
                              | _ -> 
                                (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_7_4))
                          | `LH_N -> 
                            (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_7_3))) in
                        (_lh_listcomp_fun_7_4 (remainders__d7 (if (_lh_rads_of_size_n_LH_P3_0_4 = _lh_rads_of_size_n_LH_P3_1_4) then
                          (`LH_C(_lh_rads_of_size_n_LH_C_0_8, _lh_rads_of_size_n_LH_C_1_8))
                        else
                          ((atIndex_lz__d1_d0 _lh_rads_of_size_n_LH_P3_1_4) _lh_rads_of_size_n_arg1_4)))))
                    | _ -> 
                      (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_7_3))
                | `LH_N -> 
                  (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_7_2))) in
              (_lh_listcomp_fun_7_3 (remainders__d6 ((atIndex_lz__d9 _lh_rads_of_size_n_LH_P3_0_4) _lh_rads_of_size_n_arg1_4))))
          | _ -> 
            (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_7_2))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_7_2 (three_partitions__d1 (_lh_rads_of_size_n_arg2_4 - 1))))
and rads_of_size_n__d2 _lh_rads_of_size_n_arg1_1 _lh_rads_of_size_n_arg2_1 =
  (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_3_6 -> 
    (match _lh_listcomp_fun_para_3_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_6, _lh_listcomp_fun_ls_t_3_6) -> 
        (match _lh_listcomp_fun_ls_h_3_6 with
          | `LH_P3(_lh_rads_of_size_n_LH_P3_0_1, _lh_rads_of_size_n_LH_P3_1_1, _lh_rads_of_size_n_LH_P3_2_1) -> 
            (let rec _lh_listcomp_fun_3_7 = (fun _lh_listcomp_fun_para_3_7 -> 
              (match _lh_listcomp_fun_para_3_7 with
                | `LH_C(_lh_listcomp_fun_ls_h_3_7, _lh_listcomp_fun_ls_t_3_7) -> 
                  (match _lh_listcomp_fun_ls_h_3_7 with
                    | `LH_C(_lh_rads_of_size_n_LH_C_0_2, _lh_rads_of_size_n_LH_C_1_2) -> 
                      (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_3_8 -> 
                        (match _lh_listcomp_fun_para_3_8 with
                          | `LH_C(_lh_listcomp_fun_ls_h_3_8, _lh_listcomp_fun_ls_t_3_8) -> 
                            (match _lh_listcomp_fun_ls_h_3_8 with
                              | `LH_C(_lh_rads_of_size_n_LH_C_0_3, _lh_rads_of_size_n_LH_C_1_3) -> 
                                (let rec _lh_listcomp_fun_3_9 = (fun _lh_listcomp_fun_para_3_9 -> 
                                  (match _lh_listcomp_fun_para_3_9 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_3_9, _lh_listcomp_fun_ls_t_3_9) -> 
                                      (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_2, _lh_rads_of_size_n_LH_C_0_3, _lh_listcomp_fun_ls_h_3_9)), (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_3_9)))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_3_8))) in
                                  (_lh_listcomp_fun_3_9 (if (_lh_rads_of_size_n_LH_P3_1_1 = _lh_rads_of_size_n_LH_P3_2_1) then
                                    (`LH_C(_lh_rads_of_size_n_LH_C_0_3, _lh_rads_of_size_n_LH_C_1_3))
                                  else
                                    ((atIndex_lz__d1_d9 _lh_rads_of_size_n_LH_P3_2_1) _lh_rads_of_size_n_arg1_1))))
                              | _ -> 
                                (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_3_8))
                          | `LH_N -> 
                            (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_3_7))) in
                        (_lh_listcomp_fun_3_8 (remainders__d1_d3 (if (_lh_rads_of_size_n_LH_P3_0_1 = _lh_rads_of_size_n_LH_P3_1_1) then
                          (`LH_C(_lh_rads_of_size_n_LH_C_0_2, _lh_rads_of_size_n_LH_C_1_2))
                        else
                          ((atIndex_lz__d1_d8 _lh_rads_of_size_n_LH_P3_1_1) _lh_rads_of_size_n_arg1_1)))))
                    | _ -> 
                      (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_3_7))
                | `LH_N -> 
                  (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_3_6))) in
              (_lh_listcomp_fun_3_7 (remainders__d1_d2 ((atIndex_lz__d1_d7 _lh_rads_of_size_n_LH_P3_0_1) _lh_rads_of_size_n_arg1_1))))
          | _ -> 
            (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_3_6))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3_6 (three_partitions__d2 (_lh_rads_of_size_n_arg2_1 - 1))))
and rads_of_size_n__d3 _lh_rads_of_size_n_arg1_2 _lh_rads_of_size_n_arg2_2 =
  (let rec _lh_listcomp_fun_5_4 = (fun _lh_listcomp_fun_para_5_4 -> 
    (match _lh_listcomp_fun_para_5_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_5_4, _lh_listcomp_fun_ls_t_5_4) -> 
        (match _lh_listcomp_fun_ls_h_5_4 with
          | `LH_P3(_lh_rads_of_size_n_LH_P3_0_2, _lh_rads_of_size_n_LH_P3_1_2, _lh_rads_of_size_n_LH_P3_2_2) -> 
            (let rec _lh_listcomp_fun_5_5 = (fun _lh_listcomp_fun_para_5_5 -> 
              (match _lh_listcomp_fun_para_5_5 with
                | `LH_C(_lh_listcomp_fun_ls_h_5_5, _lh_listcomp_fun_ls_t_5_5) -> 
                  (match _lh_listcomp_fun_ls_h_5_5 with
                    | `LH_C(_lh_rads_of_size_n_LH_C_0_4, _lh_rads_of_size_n_LH_C_1_4) -> 
                      (let rec _lh_listcomp_fun_5_6 = (fun _lh_listcomp_fun_para_5_6 -> 
                        (match _lh_listcomp_fun_para_5_6 with
                          | `LH_C(_lh_listcomp_fun_ls_h_5_6, _lh_listcomp_fun_ls_t_5_6) -> 
                            (match _lh_listcomp_fun_ls_h_5_6 with
                              | `LH_C(_lh_rads_of_size_n_LH_C_0_5, _lh_rads_of_size_n_LH_C_1_5) -> 
                                (let rec _lh_listcomp_fun_5_7 = (fun _lh_listcomp_fun_para_5_7 -> 
                                  (match _lh_listcomp_fun_para_5_7 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_5_7, _lh_listcomp_fun_ls_t_5_7) -> 
                                      (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_4, _lh_rads_of_size_n_LH_C_0_5, _lh_listcomp_fun_ls_h_5_7)), (_lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_5_7)))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_5_6))) in
                                  (_lh_listcomp_fun_5_7 (if (_lh_rads_of_size_n_LH_P3_1_2 = _lh_rads_of_size_n_LH_P3_2_2) then
                                    (`LH_C(_lh_rads_of_size_n_LH_C_0_5, _lh_rads_of_size_n_LH_C_1_5))
                                  else
                                    ((atIndex_lz__d2_d2 _lh_rads_of_size_n_LH_P3_2_2) _lh_rads_of_size_n_arg1_2))))
                              | _ -> 
                                (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_5_6))
                          | `LH_N -> 
                            (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_5_5))) in
                        (_lh_listcomp_fun_5_6 (remainders__d1_d5 (if (_lh_rads_of_size_n_LH_P3_0_2 = _lh_rads_of_size_n_LH_P3_1_2) then
                          (`LH_C(_lh_rads_of_size_n_LH_C_0_4, _lh_rads_of_size_n_LH_C_1_4))
                        else
                          ((atIndex_lz__d2_d1 _lh_rads_of_size_n_LH_P3_1_2) _lh_rads_of_size_n_arg1_2)))))
                    | _ -> 
                      (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_5_5))
                | `LH_N -> 
                  (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_5_4))) in
              (_lh_listcomp_fun_5_5 (remainders__d1_d4 ((atIndex_lz__d2_d0 _lh_rads_of_size_n_LH_P3_0_2) _lh_rads_of_size_n_arg1_2))))
          | _ -> 
            (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_5_4))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5_4 (three_partitions__d3 (_lh_rads_of_size_n_arg2_2 - 1))))
and testParaffins_nofib__d0 _lh_testParaffins_nofib_arg1_1 =
  (`LH_P4((let rec _lh_listcomp_fun_2_9 = (fun _lh_listcomp_fun_para_2_9 -> 
    (match _lh_listcomp_fun_para_2_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_9, _lh_listcomp_fun_ls_t_2_9) -> 
        (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_3_0 -> 
          (match _lh_listcomp_fun_para_3_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_3_0) -> 
              (`LH_C((length__d2 ((atIndex_lz__d0 _lh_listcomp_fun_ls_h_3_0) _lh_listcomp_fun_ls_h_2_9)), (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_3_0)))
            | `LH_N -> 
              (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_9))) in
          (_lh_listcomp_fun_3_0 ((enumFromTo__d1_d1 0) _lh_testParaffins_nofib_arg1_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_9 (`LH_C((radical_generator__d3 _lh_testParaffins_nofib_arg1_1), (`LH_N))))), (bcp_until__d0 _lh_testParaffins_nofib_arg1_1), (ccp_until__d0 _lh_testParaffins_nofib_arg1_1), (paraffins_until__d0 _lh_testParaffins_nofib_arg1_1)))
and three_partitions__d0 _lh_three_partitions_arg1_3 =
  (let rec _lh_listcomp_fun_6_2 = (fun _lh_listcomp_fun_para_6_2 -> 
    (match _lh_listcomp_fun_para_6_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_6_2, _lh_listcomp_fun_ls_t_6_2) -> 
        (let rec _lh_listcomp_fun_6_3 = (fun _lh_listcomp_fun_para_6_3 -> 
          (match _lh_listcomp_fun_para_6_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_6_3, _lh_listcomp_fun_ls_t_6_3) -> 
              (let rec _lh_listcomp_fun_6_4 = (fun _lh_listcomp_fun_para_6_4 -> 
                (match _lh_listcomp_fun_para_6_4 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_4, _lh_listcomp_fun_ls_t_6_4) -> 
                    (`LH_C((`LH_P3(_lh_listcomp_fun_ls_h_6_2, _lh_listcomp_fun_ls_h_6_3, _lh_listcomp_fun_ls_h_6_4)), (_lh_listcomp_fun_6_4 _lh_listcomp_fun_ls_t_6_4)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_6_3 _lh_listcomp_fun_ls_t_6_3))) in
                (_lh_listcomp_fun_6_4 (`LH_C((_lh_three_partitions_arg1_3 - (_lh_listcomp_fun_ls_h_6_2 + _lh_listcomp_fun_ls_h_6_3)), (`LH_N)))))
            | `LH_N -> 
              (_lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_6_2))) in
          (_lh_listcomp_fun_6_3 ((enumFromTo__d3 _lh_listcomp_fun_ls_h_6_2) ((_lh_three_partitions_arg1_3 - _lh_listcomp_fun_ls_h_6_2) / 2))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6_2 ((enumFromTo__d2 0) (_lh_three_partitions_arg1_3 / 3))))
and three_partitions__d1 _lh_three_partitions_arg1_2 =
  (let rec _lh_listcomp_fun_5_9 = (fun _lh_listcomp_fun_para_5_9 -> 
    (match _lh_listcomp_fun_para_5_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_5_9, _lh_listcomp_fun_ls_t_5_9) -> 
        (let rec _lh_listcomp_fun_6_0 = (fun _lh_listcomp_fun_para_6_0 -> 
          (match _lh_listcomp_fun_para_6_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_6_0, _lh_listcomp_fun_ls_t_6_0) -> 
              (let rec _lh_listcomp_fun_6_1 = (fun _lh_listcomp_fun_para_6_1 -> 
                (match _lh_listcomp_fun_para_6_1 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_1, _lh_listcomp_fun_ls_t_6_1) -> 
                    (`LH_C((`LH_P3(_lh_listcomp_fun_ls_h_5_9, _lh_listcomp_fun_ls_h_6_0, _lh_listcomp_fun_ls_h_6_1)), (_lh_listcomp_fun_6_1 _lh_listcomp_fun_ls_t_6_1)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_6_0))) in
                (_lh_listcomp_fun_6_1 (`LH_C((_lh_three_partitions_arg1_2 - (_lh_listcomp_fun_ls_h_5_9 + _lh_listcomp_fun_ls_h_6_0)), (`LH_N)))))
            | `LH_N -> 
              (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_5_9))) in
          (_lh_listcomp_fun_6_0 ((enumFromTo__d1_d0 _lh_listcomp_fun_ls_h_5_9) ((_lh_three_partitions_arg1_2 - _lh_listcomp_fun_ls_h_5_9) / 2))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5_9 ((enumFromTo__d9 0) (_lh_three_partitions_arg1_2 / 3))))
and three_partitions__d2 _lh_three_partitions_arg1_4 =
  (let rec _lh_listcomp_fun_6_5 = (fun _lh_listcomp_fun_para_6_5 -> 
    (match _lh_listcomp_fun_para_6_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_6_5, _lh_listcomp_fun_ls_t_6_5) -> 
        (let rec _lh_listcomp_fun_6_6 = (fun _lh_listcomp_fun_para_6_6 -> 
          (match _lh_listcomp_fun_para_6_6 with
            | `LH_C(_lh_listcomp_fun_ls_h_6_6, _lh_listcomp_fun_ls_t_6_6) -> 
              (let rec _lh_listcomp_fun_6_7 = (fun _lh_listcomp_fun_para_6_7 -> 
                (match _lh_listcomp_fun_para_6_7 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_7, _lh_listcomp_fun_ls_t_6_7) -> 
                    (`LH_C((`LH_P3(_lh_listcomp_fun_ls_h_6_5, _lh_listcomp_fun_ls_h_6_6, _lh_listcomp_fun_ls_h_6_7)), (_lh_listcomp_fun_6_7 _lh_listcomp_fun_ls_t_6_7)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_6_6 _lh_listcomp_fun_ls_t_6_6))) in
                (_lh_listcomp_fun_6_7 (`LH_C((_lh_three_partitions_arg1_4 - (_lh_listcomp_fun_ls_h_6_5 + _lh_listcomp_fun_ls_h_6_6)), (`LH_N)))))
            | `LH_N -> 
              (_lh_listcomp_fun_6_5 _lh_listcomp_fun_ls_t_6_5))) in
          (_lh_listcomp_fun_6_6 ((enumFromTo__d1_d8 _lh_listcomp_fun_ls_h_6_5) ((_lh_three_partitions_arg1_4 - _lh_listcomp_fun_ls_h_6_5) / 2))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6_5 ((enumFromTo__d1_d7 0) (_lh_three_partitions_arg1_4 / 3))))
and three_partitions__d3 _lh_three_partitions_arg1_1 =
  (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_3_3 -> 
    (match _lh_listcomp_fun_para_3_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_3, _lh_listcomp_fun_ls_t_3_3) -> 
        (let rec _lh_listcomp_fun_3_4 = (fun _lh_listcomp_fun_para_3_4 -> 
          (match _lh_listcomp_fun_para_3_4 with
            | `LH_C(_lh_listcomp_fun_ls_h_3_4, _lh_listcomp_fun_ls_t_3_4) -> 
              (let rec _lh_listcomp_fun_3_5 = (fun _lh_listcomp_fun_para_3_5 -> 
                (match _lh_listcomp_fun_para_3_5 with
                  | `LH_C(_lh_listcomp_fun_ls_h_3_5, _lh_listcomp_fun_ls_t_3_5) -> 
                    (`LH_C((`LH_P3(_lh_listcomp_fun_ls_h_3_3, _lh_listcomp_fun_ls_h_3_4, _lh_listcomp_fun_ls_h_3_5)), (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_3_5)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_3_4 _lh_listcomp_fun_ls_t_3_4))) in
                (_lh_listcomp_fun_3_5 (`LH_C((_lh_three_partitions_arg1_1 - (_lh_listcomp_fun_ls_h_3_3 + _lh_listcomp_fun_ls_h_3_4)), (`LH_N)))))
            | `LH_N -> 
              (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_3_3))) in
          (_lh_listcomp_fun_3_4 ((enumFromTo__d2_d1 _lh_listcomp_fun_ls_h_3_3) ((_lh_three_partitions_arg1_1 - _lh_listcomp_fun_ls_h_3_3) / 2))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3_3 ((enumFromTo__d2_d0 0) (_lh_three_partitions_arg1_1 / 3))));;
end;;

