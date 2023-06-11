(* #use "topfind";;
#require "benchmark";; *)
open Benchmark;;

(* optimized *)
let rec enumFromTo_d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (a_2::((enumFromTo_d0 (a_2 + 1)) b_2))
  else
    [])
and map_d0 f_4 ls_7 =
  (match ls_7 with
    | (h_7 :: t_8) -> 
      ((f_4 h_7)::((map_d0 f_4) t_8))
    | [] -> 
      [])
and map_d1 f_5 ls_8 =
  (match ls_8 with
    | (h_8 :: t_9) -> 
      ((f_5 h_8)::((map_d1 f_5) t_9))
    | [] -> 
      [])
and testMapmap_d0 _lh_testMapmap_arg1_1 =
  ((map_d0 (fun x_2 -> 
    (x_2 + 1))) ((map_d1 (fun x_3 -> 
    (x_3 + x_3))) _lh_testMapmap_arg1_1));;

(* optimized *)
let rec enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (a_0::((enumFromTo_d0_d0 (a_0 + 1)) b_0))
  else
    [])
and map_d0_d0 f_0 ls_0 =
  (ls_0 f_0)
and map_d1_d0 f_1 ls_1 =
  (match ls_1 with
    | (h_0 :: t_0) -> 
      (let rec h_1 = (f_1 h_0) in
        (let rec t_1 = ((map_d1_d0 f_1) t_0) in
          (fun f_2 -> 
            ((f_2 h_1)::((map_d0_d0 f_2) t_1)))))
    | [] -> 
      (fun f_3 -> 
        []))
and testMapmap_d0_d0 _lh_testMapmap_arg1_0 =
  ((map_d0_d0 (fun x_0 -> 
    (x_0 + 1))) ((map_d1_d0 (fun x_1 -> 
    (x_1 + x_1))) _lh_testMapmap_arg1_0));;

latency1 10L ~name:"lumberhack_Mapmap" testMapmap_d0_d0 ((enumFromTo_d0_d0 1) 500000);;
latency1 10L ~name:"original_Mapmap" testMapmap_d0 ((enumFromTo_d0 1) 500000);;