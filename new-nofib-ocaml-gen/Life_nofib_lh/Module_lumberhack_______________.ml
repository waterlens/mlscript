

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec map_lz_lh__d1 f_0 ls_0 =
  (lazy ((Lazy.force ls_0) f_0));;
let rec append_lz_lh__d1 _lh_append_lz_arg1_0 _lh_append_lz_arg2_1_6 =
  (let rec _lh_matchIdent_4 = _lh_append_lz_arg1_0 in
    (_lh_matchIdent_4 _lh_append_lz_arg2_1_6));;
let rec append_lz_lz_lh__d1 _lh_append_lz_lz_arg1_0 _lh_append_lz_lz_arg2_4_4 =
  (let rec _lh_matchIdent_1_5 = (Lazy.force _lh_append_lz_lz_arg1_0) in
    (_lh_matchIdent_1_5 _lh_append_lz_lz_arg2_4_4));;
let rec take_lz_lh__d1 n_4_8 ls_9 =
  (if (n_4_8 > 0) then
    ((Lazy.force ls_9) n_4_8)
  else
    (`LH_N));;
let rec map_lz_lh__d2 f_3_5 ls_1_1 =
  (lazy ((Lazy.force ls_1_1) f_3_5));;
let rec take_lz_lh__d2 n_0 ls_1 =
  (if (n_0 > 0) then
    ((Lazy.force ls_1) n_0)
  else
    (`LH_N));;
let rec start_lh__d1 =
  (let rec _lh_append_lz_LH_C_1_0 = (let rec _lh_append_lz_LH_C_1_1 = (let rec _lh_append_lz_LH_C_1_2 = (let rec _lh_append_lz_LH_C_1_3 = (let rec _lh_append_lz_LH_C_1_4 = (let rec _lh_append_lz_LH_C_1_5 = (let rec _lh_append_lz_LH_C_1_6 = (let rec _lh_append_lz_LH_C_1_7 = (let rec _lh_append_lz_LH_C_1_8 = (let rec _lh_append_lz_LH_C_1_9 = (let rec _lh_append_lz_LH_C_1_1_0 = (let rec _lh_append_lz_LH_C_1_1_1 = (let rec _lh_append_lz_LH_C_1_1_2 = (let rec _lh_append_lz_LH_C_1_1_3 = (let rec _lh_append_lz_LH_C_1_1_4 = (fun _lh_append_lz_arg2_0 -> 
    _lh_append_lz_arg2_0) in
    (let rec _lh_append_lz_LH_C_0_0 = (lazy (let rec _lh_append_lz_lz_LH_C_1_0 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1 = (lazy (let rec _lh_append_lz_lz_LH_C_1_2 = (lazy (let rec _lh_append_lz_lz_LH_C_1_3 = (lazy (let rec _lh_append_lz_lz_LH_C_1_4 = (lazy (let rec _lh_append_lz_lz_LH_C_1_5 = (lazy (let rec _lh_append_lz_lz_LH_C_1_6 = (lazy (let rec _lh_append_lz_lz_LH_C_1_7 = (lazy (let rec _lh_append_lz_lz_LH_C_1_8 = (lazy (let rec _lh_append_lz_lz_LH_C_1_9 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_0 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_1 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_2 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_3 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_4 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_5 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_6 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_7 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_8 = (lazy (let rec _lh_append_lz_lz_LH_C_1_1_9 = (lazy (let rec _lh_append_lz_lz_LH_C_1_2_0 = (lazy (let rec _lh_append_lz_lz_LH_C_1_2_1 = (lazy (let rec _lh_append_lz_lz_LH_C_1_2_2 = (lazy (let rec _lh_append_lz_lz_LH_C_1_2_3 = (lazy (let rec _lh_append_lz_lz_LH_C_1_2_4 = (lazy (let rec _lh_append_lz_lz_LH_C_1_2_5 = (lazy (let rec _lh_append_lz_lz_LH_C_1_2_6 = (lazy (fun _lh_append_lz_lz_arg2_0 -> 
      _lh_append_lz_lz_arg2_0)) in
      (let rec _lh_append_lz_lz_LH_C_0_0 = 0 in
        (fun _lh_append_lz_lz_arg2_1 -> 
          (lazy (let rec t_1_5 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2_6) _lh_append_lz_lz_arg2_1) in
            (let rec h_1_5 = _lh_append_lz_lz_LH_C_0_0 in
              (fun n_1 -> 
                (`LH_C(h_1_5, ((take_lz_lh__d1 (n_1 - 1)) t_1_5))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1 = 1 in
        (fun _lh_append_lz_lz_arg2_2 -> 
          (lazy (let rec t_1_6 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2_5) _lh_append_lz_lz_arg2_2) in
            (let rec h_1_6 = _lh_append_lz_lz_LH_C_0_1 in
              (fun n_2 -> 
                (`LH_C(h_1_6, ((take_lz_lh__d1 (n_2 - 1)) t_1_6))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_2 = 1 in
        (fun _lh_append_lz_lz_arg2_3 -> 
          (lazy (let rec t_1_7 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2_4) _lh_append_lz_lz_arg2_3) in
            (let rec h_1_7 = _lh_append_lz_lz_LH_C_0_2 in
              (fun n_3 -> 
                (`LH_C(h_1_7, ((take_lz_lh__d1 (n_3 - 1)) t_1_7))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_3 = 1 in
        (fun _lh_append_lz_lz_arg2_4 -> 
          (lazy (let rec t_1_8 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2_3) _lh_append_lz_lz_arg2_4) in
            (let rec h_1_8 = _lh_append_lz_lz_LH_C_0_3 in
              (fun n_4 -> 
                (`LH_C(h_1_8, ((take_lz_lh__d1 (n_4 - 1)) t_1_8))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_4 = 1 in
        (fun _lh_append_lz_lz_arg2_5 -> 
          (lazy (let rec t_1_9 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2_2) _lh_append_lz_lz_arg2_5) in
            (let rec h_1_9 = _lh_append_lz_lz_LH_C_0_4 in
              (fun n_5 -> 
                (`LH_C(h_1_9, ((take_lz_lh__d1 (n_5 - 1)) t_1_9))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_5 = 1 in
        (fun _lh_append_lz_lz_arg2_6 -> 
          (lazy (let rec t_2_0 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2_1) _lh_append_lz_lz_arg2_6) in
            (let rec h_2_0 = _lh_append_lz_lz_LH_C_0_5 in
              (fun n_6 -> 
                (`LH_C(h_2_0, ((take_lz_lh__d1 (n_6 - 1)) t_2_0))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_6 = 0 in
        (fun _lh_append_lz_lz_arg2_7 -> 
          (lazy (let rec t_2_1 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2_0) _lh_append_lz_lz_arg2_7) in
            (let rec h_2_1 = _lh_append_lz_lz_LH_C_0_6 in
              (fun n_7 -> 
                (`LH_C(h_2_1, ((take_lz_lh__d1 (n_7 - 1)) t_2_1))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_7 = 1 in
        (fun _lh_append_lz_lz_arg2_8 -> 
          (lazy (let rec t_2_2 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_9) _lh_append_lz_lz_arg2_8) in
            (let rec h_2_2 = _lh_append_lz_lz_LH_C_0_7 in
              (fun n_8 -> 
                (`LH_C(h_2_2, ((take_lz_lh__d1 (n_8 - 1)) t_2_2))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_8 = 1 in
        (fun _lh_append_lz_lz_arg2_9 -> 
          (lazy (let rec t_2_3 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_8) _lh_append_lz_lz_arg2_9) in
            (let rec h_2_3 = _lh_append_lz_lz_LH_C_0_8 in
              (fun n_9 -> 
                (`LH_C(h_2_3, ((take_lz_lh__d1 (n_9 - 1)) t_2_3))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_9 = 1 in
        (fun _lh_append_lz_lz_arg2_1_0 -> 
          (lazy (let rec t_2_4 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_7) _lh_append_lz_lz_arg2_1_0) in
            (let rec h_2_4 = _lh_append_lz_lz_LH_C_0_9 in
              (fun n_1_0 -> 
                (`LH_C(h_2_4, ((take_lz_lh__d1 (n_1_0 - 1)) t_2_4))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_0 = 1 in
        (fun _lh_append_lz_lz_arg2_1_1 -> 
          (lazy (let rec t_2_5 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_6) _lh_append_lz_lz_arg2_1_1) in
            (let rec h_2_5 = _lh_append_lz_lz_LH_C_0_1_0 in
              (fun n_1_1 -> 
                (`LH_C(h_2_5, ((take_lz_lh__d1 (n_1_1 - 1)) t_2_5))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_1 = 1 in
        (fun _lh_append_lz_lz_arg2_1_2 -> 
          (lazy (let rec t_2_6 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_5) _lh_append_lz_lz_arg2_1_2) in
            (let rec h_2_6 = _lh_append_lz_lz_LH_C_0_1_1 in
              (fun n_1_2 -> 
                (`LH_C(h_2_6, ((take_lz_lh__d1 (n_1_2 - 1)) t_2_6))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_2 = 0 in
        (fun _lh_append_lz_lz_arg2_1_3 -> 
          (lazy (let rec t_2_7 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_4) _lh_append_lz_lz_arg2_1_3) in
            (let rec h_2_7 = _lh_append_lz_lz_LH_C_0_1_2 in
              (fun n_1_3 -> 
                (`LH_C(h_2_7, ((take_lz_lh__d1 (n_1_3 - 1)) t_2_7))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_3 = 1 in
        (fun _lh_append_lz_lz_arg2_1_4 -> 
          (lazy (let rec t_2_8 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_3) _lh_append_lz_lz_arg2_1_4) in
            (let rec h_2_8 = _lh_append_lz_lz_LH_C_0_1_3 in
              (fun n_1_4 -> 
                (`LH_C(h_2_8, ((take_lz_lh__d1 (n_1_4 - 1)) t_2_8))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_4 = 1 in
        (fun _lh_append_lz_lz_arg2_1_5 -> 
          (lazy (let rec t_2_9 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_2) _lh_append_lz_lz_arg2_1_5) in
            (let rec h_2_9 = _lh_append_lz_lz_LH_C_0_1_4 in
              (fun n_1_5 -> 
                (`LH_C(h_2_9, ((take_lz_lh__d1 (n_1_5 - 1)) t_2_9))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_5 = 1 in
        (fun _lh_append_lz_lz_arg2_1_6 -> 
          (lazy (let rec t_3_0 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_1) _lh_append_lz_lz_arg2_1_6) in
            (let rec h_3_0 = _lh_append_lz_lz_LH_C_0_1_5 in
              (fun n_1_6 -> 
                (`LH_C(h_3_0, ((take_lz_lh__d1 (n_1_6 - 1)) t_3_0))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_6 = 1 in
        (fun _lh_append_lz_lz_arg2_1_7 -> 
          (lazy (let rec t_3_1 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1_0) _lh_append_lz_lz_arg2_1_7) in
            (let rec h_3_1 = _lh_append_lz_lz_LH_C_0_1_6 in
              (fun n_1_7 -> 
                (`LH_C(h_3_1, ((take_lz_lh__d1 (n_1_7 - 1)) t_3_1))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_7 = 1 in
        (fun _lh_append_lz_lz_arg2_1_8 -> 
          (lazy (let rec t_3_2 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_9) _lh_append_lz_lz_arg2_1_8) in
            (let rec h_3_2 = _lh_append_lz_lz_LH_C_0_1_7 in
              (fun n_1_8 -> 
                (`LH_C(h_3_2, ((take_lz_lh__d1 (n_1_8 - 1)) t_3_2))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_8 = 0 in
        (fun _lh_append_lz_lz_arg2_1_9 -> 
          (lazy (let rec t_3_3 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_8) _lh_append_lz_lz_arg2_1_9) in
            (let rec h_3_3 = _lh_append_lz_lz_LH_C_0_1_8 in
              (fun n_1_9 -> 
                (`LH_C(h_3_3, ((take_lz_lh__d1 (n_1_9 - 1)) t_3_3))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_1_9 = 1 in
        (fun _lh_append_lz_lz_arg2_2_0 -> 
          (lazy (let rec t_3_4 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_7) _lh_append_lz_lz_arg2_2_0) in
            (let rec h_3_4 = _lh_append_lz_lz_LH_C_0_1_9 in
              (fun n_2_0 -> 
                (`LH_C(h_3_4, ((take_lz_lh__d1 (n_2_0 - 1)) t_3_4))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_2_0 = 1 in
        (fun _lh_append_lz_lz_arg2_2_1 -> 
          (lazy (let rec t_3_5 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_6) _lh_append_lz_lz_arg2_2_1) in
            (let rec h_3_5 = _lh_append_lz_lz_LH_C_0_2_0 in
              (fun n_2_1 -> 
                (`LH_C(h_3_5, ((take_lz_lh__d1 (n_2_1 - 1)) t_3_5))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_2_1 = 1 in
        (fun _lh_append_lz_lz_arg2_2_2 -> 
          (lazy (let rec t_3_6 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_5) _lh_append_lz_lz_arg2_2_2) in
            (let rec h_3_6 = _lh_append_lz_lz_LH_C_0_2_1 in
              (fun n_2_2 -> 
                (`LH_C(h_3_6, ((take_lz_lh__d1 (n_2_2 - 1)) t_3_6))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_2_2 = 1 in
        (fun _lh_append_lz_lz_arg2_2_3 -> 
          (lazy (let rec t_3_7 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_4) _lh_append_lz_lz_arg2_2_3) in
            (let rec h_3_7 = _lh_append_lz_lz_LH_C_0_2_2 in
              (fun n_2_3 -> 
                (`LH_C(h_3_7, ((take_lz_lh__d1 (n_2_3 - 1)) t_3_7))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_2_3 = 1 in
        (fun _lh_append_lz_lz_arg2_2_4 -> 
          (lazy (let rec t_3_8 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_3) _lh_append_lz_lz_arg2_2_4) in
            (let rec h_3_8 = _lh_append_lz_lz_LH_C_0_2_3 in
              (fun n_2_4 -> 
                (`LH_C(h_3_8, ((take_lz_lh__d1 (n_2_4 - 1)) t_3_8))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_2_4 = 0 in
        (fun _lh_append_lz_lz_arg2_2_5 -> 
          (lazy (let rec t_3_9 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2) _lh_append_lz_lz_arg2_2_5) in
            (let rec h_3_9 = _lh_append_lz_lz_LH_C_0_2_4 in
              (fun n_2_5 -> 
                (`LH_C(h_3_9, ((take_lz_lh__d1 (n_2_5 - 1)) t_3_9))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_2_5 = 0 in
        (fun _lh_append_lz_lz_arg2_2_6 -> 
          (lazy (let rec t_4_0 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_1) _lh_append_lz_lz_arg2_2_6) in
            (let rec h_4_0 = _lh_append_lz_lz_LH_C_0_2_5 in
              (fun n_2_6 -> 
                (`LH_C(h_4_0, ((take_lz_lh__d1 (n_2_6 - 1)) t_4_0))))))))))) in
      (let rec _lh_append_lz_lz_LH_C_0_2_6 = 0 in
        (fun _lh_append_lz_lz_arg2_2_7 -> 
          (lazy (let rec t_4_1 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_0) _lh_append_lz_lz_arg2_2_7) in
            (let rec h_4_1 = _lh_append_lz_lz_LH_C_0_2_6 in
              (fun n_2_7 -> 
                (`LH_C(h_4_1, ((take_lz_lh__d1 (n_2_7 - 1)) t_4_1))))))))))) in
      (fun _lh_append_lz_arg2_1 -> 
        (lazy (let rec t_4_2 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_1_4) _lh_append_lz_arg2_1) in
          (let rec h_4_2 = _lh_append_lz_LH_C_0_0 in
            (fun f_3 -> 
              (let rec t_4_3 = ((map_lz_lh__d2 f_3) t_4_2) in
                (let rec h_4_3 = (f_3 h_4_2) in
                  (fun n_2_8 -> 
                    (`LH_C(h_4_3, ((take_lz_lh__d2 (n_2_8 - 1)) t_4_3))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_1 = (lazy (fun _lh_append_lz_lz_arg2_2_8 -> 
      _lh_append_lz_lz_arg2_2_8)) in
      (fun _lh_append_lz_arg2_2 -> 
        (lazy (let rec t_4_4 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_1_3) _lh_append_lz_arg2_2) in
          (let rec h_4_4 = _lh_append_lz_LH_C_0_1 in
            (fun f_4 -> 
              (let rec t_4_5 = ((map_lz_lh__d2 f_4) t_4_4) in
                (let rec h_4_5 = (f_4 h_4_4) in
                  (fun n_2_9 -> 
                    (`LH_C(h_4_5, ((take_lz_lh__d2 (n_2_9 - 1)) t_4_5))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_2 = (lazy (fun _lh_append_lz_lz_arg2_2_9 -> 
      _lh_append_lz_lz_arg2_2_9)) in
      (fun _lh_append_lz_arg2_3 -> 
        (lazy (let rec t_4_6 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_1_2) _lh_append_lz_arg2_3) in
          (let rec h_4_6 = _lh_append_lz_LH_C_0_2 in
            (fun f_5 -> 
              (let rec t_4_7 = ((map_lz_lh__d2 f_5) t_4_6) in
                (let rec h_4_7 = (f_5 h_4_6) in
                  (fun n_3_0 -> 
                    (`LH_C(h_4_7, ((take_lz_lh__d2 (n_3_0 - 1)) t_4_7))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_3 = (lazy (fun _lh_append_lz_lz_arg2_3_0 -> 
      _lh_append_lz_lz_arg2_3_0)) in
      (fun _lh_append_lz_arg2_4 -> 
        (lazy (let rec t_4_8 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_1_1) _lh_append_lz_arg2_4) in
          (let rec h_4_8 = _lh_append_lz_LH_C_0_3 in
            (fun f_6 -> 
              (let rec t_4_9 = ((map_lz_lh__d2 f_6) t_4_8) in
                (let rec h_4_9 = (f_6 h_4_8) in
                  (fun n_3_1 -> 
                    (`LH_C(h_4_9, ((take_lz_lh__d2 (n_3_1 - 1)) t_4_9))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_4 = (lazy (fun _lh_append_lz_lz_arg2_3_1 -> 
      _lh_append_lz_lz_arg2_3_1)) in
      (fun _lh_append_lz_arg2_5 -> 
        (lazy (let rec t_5_0 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_1_0) _lh_append_lz_arg2_5) in
          (let rec h_5_0 = _lh_append_lz_LH_C_0_4 in
            (fun f_7 -> 
              (let rec t_5_1 = ((map_lz_lh__d2 f_7) t_5_0) in
                (let rec h_5_1 = (f_7 h_5_0) in
                  (fun n_3_2 -> 
                    (`LH_C(h_5_1, ((take_lz_lh__d2 (n_3_2 - 1)) t_5_1))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_5 = (lazy (fun _lh_append_lz_lz_arg2_3_2 -> 
      _lh_append_lz_lz_arg2_3_2)) in
      (fun _lh_append_lz_arg2_6 -> 
        (lazy (let rec t_5_2 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_9) _lh_append_lz_arg2_6) in
          (let rec h_5_2 = _lh_append_lz_LH_C_0_5 in
            (fun f_8 -> 
              (let rec t_5_3 = ((map_lz_lh__d2 f_8) t_5_2) in
                (let rec h_5_3 = (f_8 h_5_2) in
                  (fun n_3_3 -> 
                    (`LH_C(h_5_3, ((take_lz_lh__d2 (n_3_3 - 1)) t_5_3))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_6 = (lazy (fun _lh_append_lz_lz_arg2_3_3 -> 
      _lh_append_lz_lz_arg2_3_3)) in
      (fun _lh_append_lz_arg2_7 -> 
        (lazy (let rec t_5_4 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_8) _lh_append_lz_arg2_7) in
          (let rec h_5_4 = _lh_append_lz_LH_C_0_6 in
            (fun f_9 -> 
              (let rec t_5_5 = ((map_lz_lh__d2 f_9) t_5_4) in
                (let rec h_5_5 = (f_9 h_5_4) in
                  (fun n_3_4 -> 
                    (`LH_C(h_5_5, ((take_lz_lh__d2 (n_3_4 - 1)) t_5_5))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_7 = (lazy (fun _lh_append_lz_lz_arg2_3_4 -> 
      _lh_append_lz_lz_arg2_3_4)) in
      (fun _lh_append_lz_arg2_8 -> 
        (lazy (let rec t_5_6 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_7) _lh_append_lz_arg2_8) in
          (let rec h_5_6 = _lh_append_lz_LH_C_0_7 in
            (fun f_1_0 -> 
              (let rec t_5_7 = ((map_lz_lh__d2 f_1_0) t_5_6) in
                (let rec h_5_7 = (f_1_0 h_5_6) in
                  (fun n_3_5 -> 
                    (`LH_C(h_5_7, ((take_lz_lh__d2 (n_3_5 - 1)) t_5_7))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_8 = (lazy (fun _lh_append_lz_lz_arg2_3_5 -> 
      _lh_append_lz_lz_arg2_3_5)) in
      (fun _lh_append_lz_arg2_9 -> 
        (lazy (let rec t_5_8 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_6) _lh_append_lz_arg2_9) in
          (let rec h_5_8 = _lh_append_lz_LH_C_0_8 in
            (fun f_1_1 -> 
              (let rec t_5_9 = ((map_lz_lh__d2 f_1_1) t_5_8) in
                (let rec h_5_9 = (f_1_1 h_5_8) in
                  (fun n_3_6 -> 
                    (`LH_C(h_5_9, ((take_lz_lh__d2 (n_3_6 - 1)) t_5_9))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_9 = (lazy (fun _lh_append_lz_lz_arg2_3_6 -> 
      _lh_append_lz_lz_arg2_3_6)) in
      (fun _lh_append_lz_arg2_1_0 -> 
        (lazy (let rec t_6_0 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_5) _lh_append_lz_arg2_1_0) in
          (let rec h_6_0 = _lh_append_lz_LH_C_0_9 in
            (fun f_1_2 -> 
              (let rec t_6_1 = ((map_lz_lh__d2 f_1_2) t_6_0) in
                (let rec h_6_1 = (f_1_2 h_6_0) in
                  (fun n_3_7 -> 
                    (`LH_C(h_6_1, ((take_lz_lh__d2 (n_3_7 - 1)) t_6_1))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_1_0 = (lazy (fun _lh_append_lz_lz_arg2_3_7 -> 
      _lh_append_lz_lz_arg2_3_7)) in
      (fun _lh_append_lz_arg2_1_1 -> 
        (lazy (let rec t_6_2 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_4) _lh_append_lz_arg2_1_1) in
          (let rec h_6_2 = _lh_append_lz_LH_C_0_1_0 in
            (fun f_1_3 -> 
              (let rec t_6_3 = ((map_lz_lh__d2 f_1_3) t_6_2) in
                (let rec h_6_3 = (f_1_3 h_6_2) in
                  (fun n_3_8 -> 
                    (`LH_C(h_6_3, ((take_lz_lh__d2 (n_3_8 - 1)) t_6_3))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_1_1 = (lazy (fun _lh_append_lz_lz_arg2_3_8 -> 
      _lh_append_lz_lz_arg2_3_8)) in
      (fun _lh_append_lz_arg2_1_2 -> 
        (lazy (let rec t_6_4 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_3) _lh_append_lz_arg2_1_2) in
          (let rec h_6_4 = _lh_append_lz_LH_C_0_1_1 in
            (fun f_1_4 -> 
              (let rec t_6_5 = ((map_lz_lh__d2 f_1_4) t_6_4) in
                (let rec h_6_5 = (f_1_4 h_6_4) in
                  (fun n_3_9 -> 
                    (`LH_C(h_6_5, ((take_lz_lh__d2 (n_3_9 - 1)) t_6_5))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_1_2 = (lazy (fun _lh_append_lz_lz_arg2_3_9 -> 
      _lh_append_lz_lz_arg2_3_9)) in
      (fun _lh_append_lz_arg2_1_3 -> 
        (lazy (let rec t_6_6 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_2) _lh_append_lz_arg2_1_3) in
          (let rec h_6_6 = _lh_append_lz_LH_C_0_1_2 in
            (fun f_1_5 -> 
              (let rec t_6_7 = ((map_lz_lh__d2 f_1_5) t_6_6) in
                (let rec h_6_7 = (f_1_5 h_6_6) in
                  (fun n_4_0 -> 
                    (`LH_C(h_6_7, ((take_lz_lh__d2 (n_4_0 - 1)) t_6_7))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_1_3 = (lazy (fun _lh_append_lz_lz_arg2_4_0 -> 
      _lh_append_lz_lz_arg2_4_0)) in
      (fun _lh_append_lz_arg2_1_4 -> 
        (lazy (let rec t_6_8 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_1) _lh_append_lz_arg2_1_4) in
          (let rec h_6_8 = _lh_append_lz_LH_C_0_1_3 in
            (fun f_1_6 -> 
              (let rec t_6_9 = ((map_lz_lh__d2 f_1_6) t_6_8) in
                (let rec h_6_9 = (f_1_6 h_6_8) in
                  (fun n_4_1 -> 
                    (`LH_C(h_6_9, ((take_lz_lh__d2 (n_4_1 - 1)) t_6_9))))))))))))) in
    (let rec _lh_append_lz_LH_C_0_1_4 = (lazy (fun _lh_append_lz_lz_arg2_4_1 -> 
      _lh_append_lz_lz_arg2_4_1)) in
      (fun _lh_append_lz_arg2_1_5 -> 
        (lazy (let rec t_7_0 = ((append_lz_lh__d1 _lh_append_lz_LH_C_1_0) _lh_append_lz_arg2_1_5) in
          (let rec h_7_0 = _lh_append_lz_LH_C_0_1_4 in
            (fun f_1_7 -> 
              (let rec t_7_1 = ((map_lz_lh__d2 f_1_7) t_7_0) in
                (let rec h_7_1 = (f_1_7 h_7_0) in
                  (fun n_4_2 -> 
                    (`LH_C(h_7_1, ((take_lz_lh__d2 (n_4_2 - 1)) t_7_1)))))))))))));;
let rec copy_lz_lh__d2 _lh_copy_lz_arg1_0 _lh_copy_lz_arg2_0 =
  (if (_lh_copy_lz_arg1_0 = 0) then
    (lazy (fun n_4_3 -> 
      (`LH_N)))
  else
    (lazy (let rec t_7_6 = ((copy_lz_lh__d2 (_lh_copy_lz_arg1_0 - 1)) _lh_copy_lz_arg2_0) in
      (let rec h_7_6 = _lh_copy_lz_arg2_0 in
        (fun n_4_4 -> 
          (`LH_C(h_7_6, ((take_lz_lh__d1 (n_4_4 - 1)) t_7_6))))))));;
let rec copy_lz_lh__d3 _lh_copy_lz_arg1_2 _lh_copy_lz_arg2_2 =
  (if (_lh_copy_lz_arg1_2 = 0) then
    (lazy (fun f_2_2 n_4_6 -> 
      (`LH_N)))
  else
    (lazy (let rec t_7_9 = ((copy_lz_lh__d3 (_lh_copy_lz_arg1_2 - 1)) _lh_copy_lz_arg2_2) in
      (let rec h_7_9 = _lh_copy_lz_arg2_2 in
        (fun f_2_3 -> 
          (let rec t_8_0 = ((map_lz_lh__d2 f_2_3) t_7_9) in
            (let rec h_8_0 = (f_2_3 h_7_9) in
              (fun n_4_7 -> 
                (`LH_C(h_8_0, ((take_lz_lh__d2 (n_4_7 - 1)) t_8_0)))))))))));;
let rec init_lh__d1 _lh_init_arg1_1 =
  (match _lh_init_arg1_1 with
    | `LH_C(_lh_init_LH_C_0_1, _lh_init_LH_C_1_1) -> 
      (match _lh_init_LH_C_1_1 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_3 _lh_zip3_arg3_3 f_2_6 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_1_8 = (init_lh__d1 _lh_init_LH_C_1_1) in
            (let rec _lh_zip3_LH_C_0_1_8 = _lh_init_LH_C_0_1 in
              (fun _lh_zip3_arg2_4 _lh_zip3_arg3_4 -> 
                (let rec _lh_matchIdent_1_2 = _lh_zip3_arg2_4 in
                  (match _lh_matchIdent_1_2 with
                    | `LH_C(_lh_zip3_LH_C_0_1_9, _lh_zip3_LH_C_1_1_9) -> 
                      (let rec _lh_matchIdent_1_3 = _lh_zip3_arg3_4 in
                        ((((_lh_matchIdent_1_3 _lh_zip3_LH_C_0_1_9) _lh_zip3_LH_C_0_1_8) _lh_zip3_LH_C_1_1_9) _lh_zip3_LH_C_1_1_8))
                    | `LH_N -> 
                      (fun f_2_7 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d6 xs_1_0 ys_2_6 =
  (xs_1_0 ys_2_6);;
let rec shiftr_lh__d1 _lh_shiftr_arg1_2 _lh_shiftr_arg2_2 =
  ((mappend_lh__d6 (let rec t_7_8 = (fun ys_2_4 -> 
    ys_2_4) in
    (let rec h_7_8 = _lh_shiftr_arg1_2 in
      (fun ys_2_5 -> 
        (let rec _lh_zip3_LH_C_1_1_3 = ((mappend_lh__d6 t_7_8) ys_2_5) in
          (let rec _lh_zip3_LH_C_0_1_3 = h_7_8 in
            (fun _lh_zip3_arg2_2 _lh_zip3_arg3_2 -> 
              (let rec _lh_matchIdent_9 = _lh_zip3_arg2_2 in
                (match _lh_matchIdent_9 with
                  | `LH_C(_lh_zip3_LH_C_0_1_4, _lh_zip3_LH_C_1_1_4) -> 
                    (let rec _lh_matchIdent_1_0 = _lh_zip3_arg3_2 in
                      ((((_lh_matchIdent_1_0 _lh_zip3_LH_C_0_1_4) _lh_zip3_LH_C_0_1_3) _lh_zip3_LH_C_1_1_4) _lh_zip3_LH_C_1_1_3))
                  | `LH_N -> 
                    (fun f_2_1 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init_lh__d1 _lh_shiftr_arg2_2));;
let rec zipWith3_lh__d1 _lh_zipWith3_arg1_0 _lh_zipWith3_arg2_0 _lh_zipWith3_arg3_0 _lh_zipWith3_arg4_0 =
  (let rec _lh_matchIdent_0 = _lh_zipWith3_arg2_0 in
    (((_lh_matchIdent_0 _lh_zipWith3_arg1_0) _lh_zipWith3_arg3_0) _lh_zipWith3_arg4_0));;
let rec init_lh__d3 _lh_init_arg1_0 =
  (match _lh_init_arg1_0 with
    | `LH_C(_lh_init_LH_C_0_0, _lh_init_LH_C_1_0) -> 
      (match _lh_init_LH_C_1_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_0, (init_lh__d3 _lh_init_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d0 xs_3 ys_2_0 =
  (match xs_3 with
    | `LH_C(h_7_3, t_7_3) -> 
      (`LH_C(h_7_3, ((mappend_lh__d1_d0 t_7_3) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec shiftr_lh__d4 _lh_shiftr_arg1_3 _lh_shiftr_arg2_3 =
  ((mappend_lh__d1_d0 (`LH_C(_lh_shiftr_arg1_3, (`LH_N)))) (init_lh__d3 _lh_shiftr_arg2_3));;
let rec zip3_lh__d4 _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_0 =
  (let rec _lh_matchIdent_1 = _lh_zip3_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_zip3_LH_C_0_5, _lh_zip3_LH_C_1_5) -> 
        (let rec _lh_matchIdent_2 = _lh_zip3_arg2_0 in
          (match _lh_matchIdent_2 with
            | `LH_C(_lh_zip3_LH_C_0_6, _lh_zip3_LH_C_1_6) -> 
              (let rec _lh_matchIdent_3 = _lh_zip3_arg3_0 in
                (match _lh_matchIdent_3 with
                  | `LH_C(_lh_zip3_LH_C_0_7, _lh_zip3_LH_C_1_7) -> 
                    (let rec _lh_zipWith3_LH_C_1_0 = (((zip3_lh__d4 _lh_zip3_LH_C_1_5) _lh_zip3_LH_C_1_6) _lh_zip3_LH_C_1_7) in
                      (let rec _lh_zipWith3_LH_C_0_0 = (let rec _lh_elt_LH_P3_2_0 = _lh_zip3_LH_C_0_7 in
                        (let rec _lh_elt_LH_P3_1_0 = _lh_zip3_LH_C_0_6 in
                          (let rec _lh_elt_LH_P3_0_0 = _lh_zip3_LH_C_0_5 in
                            (fun _lh_elt_LH_P3_0_1 _lh_elt_LH_P3_0_2 _lh_elt_LH_P3_1_1 _lh_elt_LH_P3_1_2 _lh_elt_LH_P3_2_1 _lh_elt_LH_P3_2_2 -> 
                              (let rec tot_0 = (((((((_lh_elt_LH_P3_0_2 + _lh_elt_LH_P3_1_2) + _lh_elt_LH_P3_2_2) + _lh_elt_LH_P3_0_1) + _lh_elt_LH_P3_2_1) + _lh_elt_LH_P3_0_0) + _lh_elt_LH_P3_1_0) + _lh_elt_LH_P3_2_0) in
                                (if ((tot_0 < 2) || (tot_0 > 3)) then
                                  0
                                else
                                  (if (tot_0 = 3) then
                                    1
                                  else
                                    _lh_elt_LH_P3_1_1))))))) in
                        (fun _lh_zipWith3_LH_C_0_1 _lh_zipWith3_LH_C_0_2 _lh_zipWith3_LH_C_1_1 _lh_zipWith3_LH_C_1_2 _lh_zipWith3_arg1_1 -> 
                          (`LH_C((((_lh_zipWith3_arg1_1 _lh_zipWith3_LH_C_0_2) _lh_zipWith3_LH_C_0_1) _lh_zipWith3_LH_C_0_0), ((((zipWith3_lh__d1 _lh_zipWith3_arg1_1) _lh_zipWith3_LH_C_1_2) _lh_zipWith3_LH_C_1_1) _lh_zipWith3_LH_C_1_0))))))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_3 _lh_zipWith3_LH_C_0_4 _lh_zipWith3_LH_C_1_3 _lh_zipWith3_LH_C_1_4 _lh_zipWith3_arg1_2 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))
            | `LH_N -> 
              (fun _lh_zipWith3_LH_C_0_5 _lh_zipWith3_LH_C_0_6 _lh_zipWith3_LH_C_1_5 _lh_zipWith3_LH_C_1_6 _lh_zipWith3_arg1_3 -> 
                (`LH_N))
            | _ -> 
              (failwith "error")))
      | `LH_N -> 
        (fun _lh_zipWith3_LH_C_0_7 _lh_zipWith3_LH_C_0_8 _lh_zipWith3_LH_C_1_7 _lh_zipWith3_LH_C_1_8 _lh_zipWith3_arg1_4 -> 
          (`LH_N))
      | _ -> 
        (failwith "error")));;
let rec tail_lh__d3 ls_7 =
  (match ls_7 with
    | `LH_C(h_8_6, t_8_6) -> 
      t_8_6
    | `LH_N -> 
      (failwith "error"));;
let rec shiftl_lh__d4 _lh_shiftl_arg1_2 _lh_shiftl_arg2_2 =
  ((mappend_lh__d1_d0 (tail_lh__d3 _lh_shiftl_arg2_2)) (`LH_C(_lh_shiftl_arg1_2, (`LH_N))));;
let rec shift_lh__d4 _lh_shift_arg1_1 _lh_shift_arg2_1 =
  (((zip3_lh__d4 ((shiftr_lh__d4 _lh_shift_arg1_1) _lh_shift_arg2_1)) _lh_shift_arg2_1) ((shiftl_lh__d4 _lh_shift_arg1_1) _lh_shift_arg2_1));;
let rec tail_lh__d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_8_4, t_8_4) -> 
      t_8_4
    | `LH_N -> 
      (failwith "error"));;
let rec shiftr_lh__d3 _lh_shiftr_arg1_0 _lh_shiftr_arg2_0 =
  ((mappend_lh__d1_d0 (`LH_C(_lh_shiftr_arg1_0, (`LH_N)))) (init_lh__d3 _lh_shiftr_arg2_0));;
let rec shiftl_lh__d3 _lh_shiftl_arg1_1 _lh_shiftl_arg2_1 =
  ((mappend_lh__d1_d0 (tail_lh__d3 _lh_shiftl_arg2_1)) (`LH_C(_lh_shiftl_arg1_1, (`LH_N))));;
let rec zip3_lh__d3 _lh_zip3_arg1_3 _lh_zip3_arg2_9 _lh_zip3_arg3_9 =
  (let rec _lh_matchIdent_2_0 = _lh_zip3_arg1_3 in
    (match _lh_matchIdent_2_0 with
      | `LH_C(_lh_zip3_LH_C_0_2_7, _lh_zip3_LH_C_1_2_7) -> 
        (let rec _lh_matchIdent_2_1 = _lh_zip3_arg2_9 in
          (match _lh_matchIdent_2_1 with
            | `LH_C(_lh_zip3_LH_C_0_2_8, _lh_zip3_LH_C_1_2_8) -> 
              (let rec _lh_matchIdent_2_2 = _lh_zip3_arg3_9 in
                (match _lh_matchIdent_2_2 with
                  | `LH_C(_lh_zip3_LH_C_0_2_9, _lh_zip3_LH_C_1_2_9) -> 
                    (let rec _lh_zipWith3_LH_C_1_1_1 = (((zip3_lh__d3 _lh_zip3_LH_C_1_2_7) _lh_zip3_LH_C_1_2_8) _lh_zip3_LH_C_1_2_9) in
                      (let rec _lh_zipWith3_LH_C_0_1_1 = (let rec _lh_elt_LH_P3_2_5 = _lh_zip3_LH_C_0_2_9 in
                        (let rec _lh_elt_LH_P3_1_5 = _lh_zip3_LH_C_0_2_8 in
                          (let rec _lh_elt_LH_P3_0_5 = _lh_zip3_LH_C_0_2_7 in
                            (fun _lh_elt_LH_P3_0_6 _lh_elt_LH_P3_1_6 _lh_elt_LH_P3_2_6 _lh_elt_arg3_3 -> 
                              ((((((_lh_elt_arg3_3 _lh_elt_LH_P3_0_5) _lh_elt_LH_P3_0_6) _lh_elt_LH_P3_1_5) _lh_elt_LH_P3_1_6) _lh_elt_LH_P3_2_5) _lh_elt_LH_P3_2_6))))) in
                        (fun _lh_zipWith3_LH_C_0_1_2 _lh_zipWith3_LH_C_1_1_2 _lh_zipWith3_arg1_1_1 _lh_zipWith3_arg4_7 -> 
                          (let rec _lh_matchIdent_2_3 = _lh_zipWith3_arg4_7 in
                            (((((_lh_matchIdent_2_3 _lh_zipWith3_LH_C_0_1_1) _lh_zipWith3_LH_C_0_1_2) _lh_zipWith3_LH_C_1_1_1) _lh_zipWith3_LH_C_1_1_2) _lh_zipWith3_arg1_1_1)))))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_1_3 _lh_zipWith3_LH_C_1_1_3 _lh_zipWith3_arg1_1_2 _lh_zipWith3_arg4_8 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))
            | `LH_N -> 
              (fun _lh_zipWith3_LH_C_0_1_4 _lh_zipWith3_LH_C_1_1_4 _lh_zipWith3_arg1_1_3 _lh_zipWith3_arg4_9 -> 
                (`LH_N))
            | _ -> 
              (failwith "error")))
      | `LH_N -> 
        (fun _lh_zipWith3_LH_C_0_1_5 _lh_zipWith3_LH_C_1_1_5 _lh_zipWith3_arg1_1_4 _lh_zipWith3_arg4_1_0 -> 
          (`LH_N))
      | _ -> 
        (failwith "error")));;
let rec shift_lh__d3 _lh_shift_arg1_2 _lh_shift_arg2_2 =
  (((zip3_lh__d3 ((shiftr_lh__d3 _lh_shift_arg1_2) _lh_shift_arg2_2)) _lh_shift_arg2_2) ((shiftl_lh__d3 _lh_shift_arg1_2) _lh_shift_arg2_2));;
let rec map_lh__d4 f_3_4 ls_1_0 =
  (ls_1_0 f_3_4);;
let rec zip3_lh__d1 _lh_zip3_arg1_2 _lh_zip3_arg2_8 _lh_zip3_arg3_8 =
  (let rec _lh_matchIdent_1_9 = _lh_zip3_arg1_2 in
    ((_lh_matchIdent_1_9 _lh_zip3_arg2_8) _lh_zip3_arg3_8));;
let rec init_lh__d2 _lh_init_arg1_2 =
  (match _lh_init_arg1_2 with
    | `LH_C(_lh_init_LH_C_0_2, _lh_init_LH_C_1_2) -> 
      (match _lh_init_LH_C_1_2 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_6 _lh_zip3_arg3_6 _lh_zipWith3_arg1_7 _lh_zipWith3_arg3_3 _lh_zipWith3_arg4_3 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_2_0 = (init_lh__d2 _lh_init_LH_C_1_2) in
            (let rec _lh_zip3_LH_C_0_2_0 = _lh_init_LH_C_0_2 in
              (fun _lh_zip3_arg2_7 _lh_zip3_arg3_7 -> 
                (let rec _lh_matchIdent_1_6 = _lh_zip3_arg2_7 in
                  (match _lh_matchIdent_1_6 with
                    | `LH_C(_lh_zip3_LH_C_0_2_1, _lh_zip3_LH_C_1_2_1) -> 
                      (let rec _lh_matchIdent_1_7 = _lh_zip3_arg3_7 in
                        ((((_lh_matchIdent_1_7 _lh_zip3_LH_C_0_2_0) _lh_zip3_LH_C_0_2_1) _lh_zip3_LH_C_1_2_0) _lh_zip3_LH_C_1_2_1))
                    | `LH_N -> 
                      (fun _lh_zipWith3_arg1_8 _lh_zipWith3_arg3_4 _lh_zipWith3_arg4_4 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d8 xs_2 ys_1_7 =
  (xs_2 ys_1_7);;
let rec shiftr_lh__d2 _lh_shiftr_arg1_1 _lh_shiftr_arg2_1 =
  ((mappend_lh__d8 (let rec t_7_2 = (fun ys_1_8 -> 
    ys_1_8) in
    (let rec h_7_2 = _lh_shiftr_arg1_1 in
      (fun ys_1_9 -> 
        (let rec _lh_zip3_LH_C_1_8 = ((mappend_lh__d8 t_7_2) ys_1_9) in
          (let rec _lh_zip3_LH_C_0_8 = h_7_2 in
            (fun _lh_zip3_arg2_1 _lh_zip3_arg3_1 -> 
              (let rec _lh_matchIdent_5 = _lh_zip3_arg2_1 in
                (match _lh_matchIdent_5 with
                  | `LH_C(_lh_zip3_LH_C_0_9, _lh_zip3_LH_C_1_9) -> 
                    (let rec _lh_matchIdent_6 = _lh_zip3_arg3_1 in
                      ((((_lh_matchIdent_6 _lh_zip3_LH_C_0_8) _lh_zip3_LH_C_0_9) _lh_zip3_LH_C_1_8) _lh_zip3_LH_C_1_9))
                  | `LH_N -> 
                    (fun _lh_zipWith3_arg1_5 _lh_zipWith3_arg3_1 _lh_zipWith3_arg4_1 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init_lh__d2 _lh_shiftr_arg2_1));;
let rec zip3_lh__d2 _lh_zip3_arg1_1 _lh_zip3_arg2_5 _lh_zip3_arg3_5 =
  (let rec _lh_matchIdent_1_4 = _lh_zip3_arg1_1 in
    ((_lh_matchIdent_1_4 _lh_zip3_arg2_5) _lh_zip3_arg3_5));;
let rec tail_lh__d2 ls_3 =
  (match ls_3 with
    | `LH_C(h_8_1, t_8_1) -> 
      t_8_1
    | `LH_N -> 
      (failwith "error"));;
let rec mappend_lh__d9 xs_1_2 ys_2_9 =
  (match xs_1_2 with
    | `LH_C(h_8_5, t_8_5) -> 
      (let rec _lh_zip3_LH_C_1_1_5 = ((mappend_lh__d9 t_8_5) ys_2_9) in
        (let rec _lh_zip3_LH_C_0_1_5 = h_8_5 in
          (fun _lh_zip3_LH_C_0_1_6 _lh_zip3_LH_C_0_1_7 _lh_zip3_LH_C_1_1_6 _lh_zip3_LH_C_1_1_7 -> 
            (let rec _lh_zipWith3_LH_C_1_9 = (((zip3_lh__d2 _lh_zip3_LH_C_1_1_6) _lh_zip3_LH_C_1_1_7) _lh_zip3_LH_C_1_1_5) in
              (let rec _lh_zipWith3_LH_C_0_9 = (let rec _lh_elt_LH_P3_2_3 = _lh_zip3_LH_C_0_1_5 in
                (let rec _lh_elt_LH_P3_1_3 = _lh_zip3_LH_C_0_1_7 in
                  (let rec _lh_elt_LH_P3_0_3 = _lh_zip3_LH_C_0_1_6 in
                    (fun _lh_elt_arg2_1 _lh_elt_arg3_1 -> 
                      ((((_lh_elt_arg2_1 _lh_elt_LH_P3_0_3) _lh_elt_LH_P3_1_3) _lh_elt_LH_P3_2_3) _lh_elt_arg3_1))))) in
                (fun _lh_zipWith3_arg1_6 _lh_zipWith3_arg3_2 _lh_zipWith3_arg4_2 -> 
                  (let rec _lh_matchIdent_1_1 = _lh_zipWith3_arg3_2 in
                    ((((_lh_matchIdent_1_1 _lh_zipWith3_LH_C_0_9) _lh_zipWith3_LH_C_1_9) _lh_zipWith3_arg1_6) _lh_zipWith3_arg4_2))))))))
    | `LH_N -> 
      ys_2_9);;
let rec shiftl_lh__d2 _lh_shiftl_arg1_3 _lh_shiftl_arg2_3 =
  ((mappend_lh__d9 (tail_lh__d2 _lh_shiftl_arg2_3)) (let rec _lh_zip3_LH_C_1_2_2 = (fun _lh_zip3_LH_C_0_2_2 _lh_zip3_LH_C_0_2_3 _lh_zip3_LH_C_1_2_3 _lh_zip3_LH_C_1_2_4 _lh_zipWith3_arg1_9 _lh_zipWith3_arg3_5 _lh_zipWith3_arg4_5 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_2_4 = _lh_shiftl_arg1_3 in
      (fun _lh_zip3_LH_C_0_2_5 _lh_zip3_LH_C_0_2_6 _lh_zip3_LH_C_1_2_5 _lh_zip3_LH_C_1_2_6 -> 
        (let rec _lh_zipWith3_LH_C_1_1_0 = (((zip3_lh__d2 _lh_zip3_LH_C_1_2_5) _lh_zip3_LH_C_1_2_6) _lh_zip3_LH_C_1_2_2) in
          (let rec _lh_zipWith3_LH_C_0_1_0 = (let rec _lh_elt_LH_P3_2_4 = _lh_zip3_LH_C_0_2_4 in
            (let rec _lh_elt_LH_P3_1_4 = _lh_zip3_LH_C_0_2_6 in
              (let rec _lh_elt_LH_P3_0_4 = _lh_zip3_LH_C_0_2_5 in
                (fun _lh_elt_arg2_2 _lh_elt_arg3_2 -> 
                  ((((_lh_elt_arg2_2 _lh_elt_LH_P3_0_4) _lh_elt_LH_P3_1_4) _lh_elt_LH_P3_2_4) _lh_elt_arg3_2))))) in
            (fun _lh_zipWith3_arg1_1_0 _lh_zipWith3_arg3_6 _lh_zipWith3_arg4_6 -> 
              (let rec _lh_matchIdent_1_8 = _lh_zipWith3_arg3_6 in
                ((((_lh_matchIdent_1_8 _lh_zipWith3_LH_C_0_1_0) _lh_zipWith3_LH_C_1_1_0) _lh_zipWith3_arg1_1_0) _lh_zipWith3_arg4_6)))))))));;
let rec shift_lh__d2 _lh_shift_arg1_0 _lh_shift_arg2_0 =
  (((zip3_lh__d2 ((shiftr_lh__d2 _lh_shift_arg1_0) _lh_shift_arg2_0)) _lh_shift_arg2_0) ((shiftl_lh__d2 _lh_shift_arg1_0) _lh_shift_arg2_0));;
let rec elt_lh__d1 _lh_elt_arg1_0 _lh_elt_arg2_0 _lh_elt_arg3_0 =
  ((_lh_elt_arg1_0 _lh_elt_arg2_0) _lh_elt_arg3_0);;
let rec mappend_lh__d7 xs_4 ys_2_1 =
  (match xs_4 with
    | `LH_C(h_7_4, t_7_4) -> 
      (let rec _lh_zip3_LH_C_1_1_0 = ((mappend_lh__d7 t_7_4) ys_2_1) in
        (let rec _lh_zip3_LH_C_0_1_0 = h_7_4 in
          (fun _lh_zip3_LH_C_0_1_1 _lh_zip3_LH_C_0_1_2 _lh_zip3_LH_C_1_1_1 _lh_zip3_LH_C_1_1_2 -> 
            (let rec t_7_5 = (((zip3_lh__d1 _lh_zip3_LH_C_1_1_2) _lh_zip3_LH_C_1_1_1) _lh_zip3_LH_C_1_1_0) in
              (let rec h_7_5 = (let rec _lh_row_LH_P3_2_1 = _lh_zip3_LH_C_0_1_0 in
                (let rec _lh_row_LH_P3_1_1 = _lh_zip3_LH_C_0_1_1 in
                  (let rec _lh_row_LH_P3_0_1 = _lh_zip3_LH_C_0_1_2 in
                    (fun _lh_dummy_1 -> 
                      ((((zipWith3_lh__d1 elt_lh__d1) ((shift_lh__d2 0) _lh_row_LH_P3_0_1)) ((shift_lh__d3 0) _lh_row_LH_P3_1_1)) ((shift_lh__d4 0) _lh_row_LH_P3_2_1)))))) in
                (fun f_1_9 -> 
                  (`LH_C((f_1_9 h_7_5), ((map_lh__d4 f_1_9) t_7_5)))))))))
    | `LH_N -> 
      ys_2_1);;
let rec shiftl_lh__d1 _lh_shiftl_arg1_0 _lh_shiftl_arg2_0 =
  ((mappend_lh__d7 (tail_lh__d1 _lh_shiftl_arg2_0)) (let rec _lh_zip3_LH_C_1_0 = (fun _lh_zip3_LH_C_0_0 _lh_zip3_LH_C_0_1 _lh_zip3_LH_C_1_1 _lh_zip3_LH_C_1_2 f_1 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_2 = _lh_shiftl_arg1_0 in
      (fun _lh_zip3_LH_C_0_3 _lh_zip3_LH_C_0_4 _lh_zip3_LH_C_1_3 _lh_zip3_LH_C_1_4 -> 
        (let rec t_0 = (((zip3_lh__d1 _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_0) in
          (let rec h_0 = (let rec _lh_row_LH_P3_2_0 = _lh_zip3_LH_C_0_2 in
            (let rec _lh_row_LH_P3_1_0 = _lh_zip3_LH_C_0_3 in
              (let rec _lh_row_LH_P3_0_0 = _lh_zip3_LH_C_0_4 in
                (fun _lh_dummy_0 -> 
                  ((((zipWith3_lh__d1 elt_lh__d1) ((shift_lh__d2 0) _lh_row_LH_P3_0_0)) ((shift_lh__d3 0) _lh_row_LH_P3_1_0)) ((shift_lh__d4 0) _lh_row_LH_P3_2_0)))))) in
            (fun f_2 -> 
              (`LH_C((f_2 h_0), ((map_lh__d4 f_2) t_0))))))))));;
let rec shift_lh__d1 _lh_shift_arg1_3 _lh_shift_arg2_3 =
  (((zip3_lh__d1 ((shiftr_lh__d1 _lh_shift_arg1_3) _lh_shift_arg2_3)) _lh_shift_arg2_3) ((shiftl_lh__d1 _lh_shift_arg1_3) _lh_shift_arg2_3));;
let rec row_lh__d1 _lh_row_arg1_0 =
  (_lh_row_arg1_0 99);;
let rec copy_lh__d1 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy_lh__d1 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec gen_lh__d1 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  ((map_lh__d4 row_lh__d1) ((shift_lh__d1 ((copy_lh__d1 _lh_gen_arg1_0) 0)) _lh_gen_arg2_0));;
let rec map_lh__d1 f_2_5 ls_6 =
  (ls_6 f_2_5);;
let rec mappend_lh__d2 xs_5 ys_2_2 =
  (xs_5 ys_2_2);;
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (let rec t_2 = ((mappend_lh__d1 t_1) ys_0) in
        (let rec h_2 = h_1 in
          (fun ys_1 -> 
            (`LH_C(h_2, ((mappend_lh__d2 t_2) ys_1))))))
    | `LH_N -> 
      ys_0);;
let rec foldr_lh__d1 f_1_8 i_0 ls_2 =
  ((ls_2 f_1_8) i_0);;
let rec map_lh__d3 f_3_1 ls_8 =
  (match ls_8 with
    | `LH_C(h_9_2, t_9_2) -> 
      (let rec t_9_3 = ((map_lh__d3 f_3_1) t_9_2) in
        (let rec h_9_3 = (f_3_1 h_9_2) in
          (fun f_3_2 i_1 -> 
            ((f_3_2 h_9_3) (((foldr_lh__d1 f_3_2) i_1) t_9_3)))))
    | `LH_N -> 
      (fun f_3_3 i_2 -> 
        i_2));;
let rec mappend_lh__d3 xs_1 ys_1_6 =
  (xs_1 ys_1_6);;
let rec mappend_lh__d5 xs_6 ys_2_3 =
  (xs_6 ys_2_3);;
let rec mappend_lh__d4 xs_1_1 ys_2_7 =
  (xs_1_1 ys_2_7);;
let rec star_lh__d1 _lh_star_arg1_0 =
  (match _lh_star_arg1_0 with
    | 0 -> 
      (let rec t_3 = (let rec t_4 = (fun ys_2 -> 
        ys_2) in
        (let rec h_3 = ' ' in
          (fun ys_3 -> 
            (let rec t_5 = ((mappend_lh__d5 t_4) ys_3) in
              (let rec h_4 = h_3 in
                (fun ys_4 -> 
                  (let rec t_6 = ((mappend_lh__d3 t_5) ys_4) in
                    (let rec h_5 = h_4 in
                      (fun ys_5 -> 
                        (`LH_C(h_5, ((mappend_lh__d4 t_6) ys_5)))))))))))) in
        (let rec h_6 = ' ' in
          (fun ys_6 -> 
            (let rec t_7 = ((mappend_lh__d5 t_3) ys_6) in
              (let rec h_7 = h_6 in
                (fun ys_7 -> 
                  (let rec t_8 = ((mappend_lh__d3 t_7) ys_7) in
                    (let rec h_8 = h_7 in
                      (fun ys_8 -> 
                        (`LH_C(h_8, ((mappend_lh__d4 t_8) ys_8))))))))))))
    | 1 -> 
      (let rec t_9 = (let rec t_1_0 = (fun ys_9 -> 
        ys_9) in
        (let rec h_9 = 'o' in
          (fun ys_1_0 -> 
            (let rec t_1_1 = ((mappend_lh__d5 t_1_0) ys_1_0) in
              (let rec h_1_0 = h_9 in
                (fun ys_1_1 -> 
                  (let rec t_1_2 = ((mappend_lh__d3 t_1_1) ys_1_1) in
                    (let rec h_1_1 = h_1_0 in
                      (fun ys_1_2 -> 
                        (`LH_C(h_1_1, ((mappend_lh__d4 t_1_2) ys_1_2)))))))))))) in
        (let rec h_1_2 = ' ' in
          (fun ys_1_3 -> 
            (let rec t_1_3 = ((mappend_lh__d5 t_9) ys_1_3) in
              (let rec h_1_3 = h_1_2 in
                (fun ys_1_4 -> 
                  (let rec t_1_4 = ((mappend_lh__d3 t_1_3) ys_1_4) in
                    (let rec h_1_4 = h_1_3 in
                      (fun ys_1_5 -> 
                        (`LH_C(h_1_4, ((mappend_lh__d4 t_1_4) ys_1_5))))))))))))
    | _ -> 
      (failwith "error"));;
let rec zip_lz_nl_lh__d1 xs_1_3 ys_3_5 =
  (ys_3_5 xs_1_3);;
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec glue_lh__d1 _lh_glue_arg1_0 _lh_glue_arg2_0 _lh_glue_arg3_0 =
  ((mappend_lh__d4 ((mappend_lh__d3 _lh_glue_arg2_0) _lh_glue_arg1_0)) _lh_glue_arg3_0);;
let rec map_lh__d2 f_2_4 ls_4 =
  (match ls_4 with
    | `LH_C(h_8_2, t_8_2) -> 
      (let rec t_8_3 = ((map_lh__d2 f_2_4) t_8_2) in
        (let rec h_8_3 = (f_2_4 h_8_2) in
          (fun _lh_dummy_2 -> 
            ((mappend_lh__d5 h_8_3) (concat_lh__d1 t_8_3)))))
    | `LH_N -> 
      (fun _lh_dummy_3 ys_2_8 -> 
        ys_2_8));;
let rec enumFrom_lh__d1 a_0 =
  (lazy (let rec t_8_7 = (enumFrom_lh__d1 (a_0 + 1)) in
    (let rec h_8_7 = a_0 in
      (fun f_2_8 -> 
        (let rec tx_0 = ((map_lz_lh__d1 f_2_8) t_8_7) in
          (let rec hx_0 = (f_2_8 h_8_7) in
            (fun hy_2 ty_2 -> 
              (let rec t_8_8 = ((zip_lz_nl_lh__d1 tx_0) ty_2) in
                (let rec h_8_8 = (let rec _lh_disp_LH_P2_1_0 = hy_2 in
                  (let rec _lh_disp_LH_P2_0_0 = hx_0 in
                    (fun _lh_dummy_4 -> 
                      ((mappend_lh__d2 ((mappend_lh__d1 _lh_disp_LH_P2_0_0) (let rec t_8_9 = (let rec t_9_0 = (fun ys_3_0 -> 
                        ys_3_0) in
                        (let rec h_8_9 = 'n' in
                          (fun ys_3_1 -> 
                            (`LH_C(h_8_9, ((mappend_lh__d2 t_9_0) ys_3_1)))))) in
                        (let rec h_9_0 = 'n' in
                          (fun ys_3_2 -> 
                            (`LH_C(h_9_0, ((mappend_lh__d2 t_8_9) ys_3_2)))))))) ((fun _lh_funcomp_x_4 -> 
                        (((foldr_lh__d1 (glue_lh__d1 (let rec t_9_1 = (fun ys_3_3 -> 
                          ys_3_3) in
                          (let rec h_9_1 = 'n' in
                            (fun ys_3_4 -> 
                              (`LH_C(h_9_1, ((mappend_lh__d4 t_9_1) ys_3_4)))))))) (`LH_N)) ((map_lh__d3 (fun _lh_funcomp_x_5 -> 
                          (concat_lh__d1 ((map_lh__d2 star_lh__d1) _lh_funcomp_x_5)))) _lh_funcomp_x_4))) _lh_disp_LH_P2_1_0))))) in
                  (fun f_2_9 -> 
                    (`LH_C((f_2_9 h_8_8), ((map_lh__d1 f_2_9) t_8_8)))))))))))));;
let rec iterate_lh__d1 f_3_0 x_0 =
  (lazy (`LH_C(x_0, ((iterate_lh__d1 f_3_0) (f_3_0 x_0)))));;
let rec disp_lh__d1 _lh_disp_arg1_0 =
  (_lh_disp_arg1_0 99);;
let rec limit_lh__d1 _lh_limit_arg1_0 =
  (let rec _lh_matchIdent_7 = (Lazy.force _lh_limit_arg1_0) in
    (match _lh_matchIdent_7 with
      | `LH_C(_lh_limit_LH_C_0_0, _lh_limit_LH_C_1_0) -> 
        (let rec _lh_matchIdent_8 = (Lazy.force _lh_limit_LH_C_1_0) in
          (match _lh_matchIdent_8 with
            | `LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1) -> 
              (if (_lh_limit_LH_C_0_0 = _lh_limit_LH_C_0_1) then
                (let rec ty_0 = (fun xs_7 f_2_0 -> 
                  (`LH_N)) in
                  (let rec hy_0 = _lh_limit_LH_C_0_0 in
                    (fun xs_8 -> 
                      (((Lazy.force xs_8) hy_0) ty_0))))
              else
                (let rec ty_1 = (limit_lh__d1 (lazy (`LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1)))) in
                  (let rec hy_1 = _lh_limit_LH_C_0_0 in
                    (fun xs_9 -> 
                      (((Lazy.force xs_9) hy_1) ty_1)))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec copy_lz_lh__d1 _lh_copy_lz_arg1_1 _lh_copy_lz_arg2_1 =
  (if (_lh_copy_lz_arg1_1 = 0) then
    (lazy (fun _lh_append_lz_lz_arg2_4_2 -> 
      _lh_append_lz_lz_arg2_4_2))
  else
    (lazy (let rec _lh_append_lz_lz_LH_C_1_2_7 = ((copy_lz_lh__d1 (_lh_copy_lz_arg1_1 - 1)) _lh_copy_lz_arg2_1) in
      (let rec _lh_append_lz_lz_LH_C_0_2_7 = _lh_copy_lz_arg2_1 in
        (fun _lh_append_lz_lz_arg2_4_3 -> 
          (lazy (let rec t_7_7 = ((append_lz_lz_lh__d1 _lh_append_lz_lz_LH_C_1_2_7) _lh_append_lz_lz_arg2_4_3) in
            (let rec h_7_7 = _lh_append_lz_lz_LH_C_0_2_7 in
              (fun n_4_5 -> 
                (`LH_C(h_7_7, ((take_lz_lh__d1 (n_4_5 - 1)) t_7_7))))))))))));;
let rec generations_lh__d1 _lh_generations_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((map_lh__d1 disp_lh__d1) ((zip_lz_nl_lh__d1 ((map_lz_lh__d1 string_of_int) (enumFrom_lh__d1 0))) _lh_funcomp_x_2))) (limit_lh__d1 _lh_funcomp_x_1))) ((iterate_lh__d1 (gen_lh__d1 _lh_generations_arg1_0)) _lh_funcomp_x_0))) ((take_lz_lh__d2 _lh_generations_arg1_0) ((map_lz_lh__d2 (fun _lh_funcomp_x_3 -> 
    ((fun l_0 -> 
      ((take_lz_lh__d1 _lh_generations_arg1_0) l_0)) ((fun l_1 -> 
      ((append_lz_lz_lh__d1 l_1) ((copy_lz_lh__d2 _lh_generations_arg1_0) 0))) _lh_funcomp_x_3)))) ((append_lz_lh__d1 start_lh__d1) ((copy_lz_lh__d3 _lh_generations_arg1_0) ((copy_lz_lh__d1 _lh_generations_arg1_0) 0))))));;
let rec testLife_nofib_lh__d1 _lh_testLife_nofib_arg1_0 =
  (generations_lh__d1 _lh_testLife_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testLife_nofib_lh__d1 29)));
end;;

