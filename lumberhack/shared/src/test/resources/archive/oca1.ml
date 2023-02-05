type intList = 
  | n
  | c of int * intList





let range_3 from_7 = fun to_8 -> 
  match (((-) to_8) from_7) with
  | 0 () ->
    C (from_7, N)
  | diff () ->
    C (from_7, ((range_3 (((+) from_7) 1)) to_8))

let sum_4 list_9 = match list_9 with
| C (h_10, t_11) ->
  (((+) h_10) (sum_4 t_11))
| N () ->
  0

let unfused_5 from_12 = fun to_13 -> 
  (sum_4 ((range_3 from_12) to_13))

let fused_6 from_14 = fun to_15 -> 
  match (((-) to_15) from_14) with
  | 0 () ->
    0
  | diff () ->
    (((+) from_14) ((fused_6 (((+) from_14) 1)) to_15))

let _ = 
  ((unfused_5 1) 10);
  ((fused_6 1) 10);