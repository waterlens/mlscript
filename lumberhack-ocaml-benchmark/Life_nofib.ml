(*
touch ./Life_nofib.mli && ocamlc ./Life_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Life_nofib.ml -o "./Life_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Life_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
let rec copy__d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (match _lh_copy_arg1_2 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_2, ((copy__d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2))));;
let rec copy__d1 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy__d1 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec copy__d2 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (match _lh_copy_arg1_4 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_4, ((copy__d2 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4))));;
let rec copy__d3 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (match _lh_copy_arg1_3 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_3, ((copy__d3 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3))));;
let rec elt__d0 _lh_elt_arg1_1 _lh_elt_arg2_1 _lh_elt_arg3_1 =
  (match _lh_elt_arg1_1 with
    | `LH_P3(_lh_elt_LH_P3_0_3, _lh_elt_LH_P3_1_3, _lh_elt_LH_P3_2_3) -> 
      (match _lh_elt_arg2_1 with
        | `LH_P3(_lh_elt_LH_P3_0_4, _lh_elt_LH_P3_1_4, _lh_elt_LH_P3_2_4) -> 
          (match _lh_elt_arg3_1 with
            | `LH_P3(_lh_elt_LH_P3_0_5, _lh_elt_LH_P3_1_5, _lh_elt_LH_P3_2_5) -> 
              (let rec tot_1 = (((((((_lh_elt_LH_P3_0_3 + _lh_elt_LH_P3_1_3) + _lh_elt_LH_P3_2_3) + _lh_elt_LH_P3_0_4) + _lh_elt_LH_P3_2_4) + _lh_elt_LH_P3_0_5) + _lh_elt_LH_P3_1_5) + _lh_elt_LH_P3_2_5) in
                (if ((tot_1 < 2) || (tot_1 > 3)) then
                  0
                else
                  (if (tot_1 = 3) then
                    1
                  else
                    _lh_elt_LH_P3_1_4)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFrom__d0 a_5 =
  (lazy (`LH_C(a_5, (enumFrom__d0 (a_5 + 1)))));;
let rec foldr__d0 f_1_2 i_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      ((f_1_2 h_2_1) (((foldr__d0 f_1_2) i_3) t_2_3))
    | `LH_N -> 
      i_3);;
let rec init__d0 _lh_init_arg1_1 =
  (match _lh_init_arg1_1 with
    | `LH_C(_lh_init_LH_C_0_1, _lh_init_LH_C_1_1) -> 
      (match _lh_init_LH_C_1_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_1, (init__d0 _lh_init_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec init__d1 _lh_init_arg1_2 =
  (match _lh_init_arg1_2 with
    | `LH_C(_lh_init_LH_C_0_2, _lh_init_LH_C_1_2) -> 
      (match _lh_init_LH_C_1_2 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_2, (init__d1 _lh_init_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec init__d2 _lh_init_arg1_3 =
  (match _lh_init_arg1_3 with
    | `LH_C(_lh_init_LH_C_0_3, _lh_init_LH_C_1_3) -> 
      (match _lh_init_LH_C_1_3 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_3, (init__d2 _lh_init_LH_C_1_3))))
    | _ -> 
      (failwith "error"));;
let rec init__d3 _lh_init_arg1_4 =
  (match _lh_init_arg1_4 with
    | `LH_C(_lh_init_LH_C_0_4, _lh_init_LH_C_1_4) -> 
      (match _lh_init_LH_C_1_4 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_4, (init__d3 _lh_init_LH_C_1_4))))
    | _ -> 
      (failwith "error"));;
let rec iterate__d0 f_1_4 x_2 =
  (lazy (`LH_C(x_2, ((iterate__d0 f_1_4) (f_1_4 x_2)))));;
let rec limit__d0 _lh_limit_arg1_1 =
  (let rec _lh_matchIdent_2_0 = (Lazy.force _lh_limit_arg1_1) in
    (match _lh_matchIdent_2_0 with
      | `LH_C(_lh_limit_LH_C_0_2, _lh_limit_LH_C_1_2) -> 
        (let rec _lh_matchIdent_2_1 = (Lazy.force _lh_limit_LH_C_1_2) in
          (match _lh_matchIdent_2_1 with
            | `LH_C(_lh_limit_LH_C_0_3, _lh_limit_LH_C_1_3) -> 
              (if (_lh_limit_LH_C_0_2 = _lh_limit_LH_C_0_3) then
                (`LH_C(_lh_limit_LH_C_0_2, (`LH_N)))
              else
                (`LH_C(_lh_limit_LH_C_0_2, (limit__d0 (lazy (`LH_C(_lh_limit_LH_C_0_3, _lh_limit_LH_C_1_3)))))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz__d0 f_1_5 ls_2_5 =
  (lazy (match (Lazy.force ls_2_5) with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_5 h_2_9), ((map_lz__d0 f_1_5) t_3_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec map__d0 f_1_9 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C((f_1_9 h_4_5), ((map__d0 f_1_9) t_4_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_7 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C((f_1_7 h_3_6), ((map__d1 f_1_7) t_3_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_4, t_3_6) -> 
      (`LH_C((f_1_6 h_3_4), ((map__d2 f_1_6) t_3_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_3 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_3 h_2_4), ((map__d3 f_1_3) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_8 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C((f_1_8 h_4_1), ((map__d4 f_1_8) t_4_3)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C(h_4_7, ((mappend__d0 t_4_9) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d1 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d1 t_3_0) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1_d0 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend__d1_d0 t_3_3) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1_d1 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend__d1_d1 t_3_4) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d1_d2 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend__d1_d2 t_3_2) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d1_d3 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d1_d3 t_2_4) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1_d4 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d1_d4 t_3_9) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d2 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_3, t_3_5) -> 
      (`LH_C(h_3_3, ((mappend__d2 t_3_5) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d3 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend__d3 t_4_1) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d4 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend__d4 t_4_0) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d5 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend__d5 t_5_0) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d6 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_4_4, t_4_6) -> 
      (`LH_C(h_4_4, ((mappend__d6 t_4_6) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d7 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d7 t_2_8) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d8 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C(h_3_5, ((mappend__d8 t_3_7) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d9 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_4_3, t_4_5) -> 
      (`LH_C(h_4_3, ((mappend__d9 t_4_5) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec star__d0 _lh_star_arg1_1 =
  (match _lh_star_arg1_1 with
    | 0 -> 
      (`LH_C(' ', (`LH_C(' ', (`LH_N)))))
    | 1 -> 
      (`LH_C(' ', (`LH_C('o', (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec start__d0 =
  (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))));;
let rec tail__d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_7, t_2_9) -> 
      t_2_9
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_0, t_4_2) -> 
      t_4_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      t_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      t_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec take__d0 n_4 ls_2_3 =
  (if (n_4 > 0) then
    (match ls_2_3 with
      | `LH_C(h_2_5, t_2_7) -> 
        (`LH_C(h_2_5, ((take__d0 (n_4 - 1)) t_2_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_5 ls_3_0 =
  (if (n_5 > 0) then
    (match ls_3_0 with
      | `LH_C(h_4_2, t_4_4) -> 
        (`LH_C(h_4_2, ((take__d1 (n_5 - 1)) t_4_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3__d0 _lh_zip3_arg1_1 _lh_zip3_arg2_1 _lh_zip3_arg3_1 =
  (let rec _lh_matchIdent_1_1 = _lh_zip3_arg1_1 in
    (match _lh_matchIdent_1_1 with
      | `LH_C(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_1_3) -> 
        (let rec _lh_matchIdent_1_2 = _lh_zip3_arg2_1 in
          (match _lh_matchIdent_1_2 with
            | `LH_C(_lh_zip3_LH_C_0_4, _lh_zip3_LH_C_1_4) -> 
              (let rec _lh_matchIdent_1_3 = _lh_zip3_arg3_1 in
                (match _lh_matchIdent_1_3 with
                  | `LH_C(_lh_zip3_LH_C_0_5, _lh_zip3_LH_C_1_5) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_0_4, _lh_zip3_LH_C_0_5)), (((zip3__d0 _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_5)))
                  | `LH_N -> 
                    (`LH_N)
                  | _ -> 
                    (failwith "error")))
            | `LH_N -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (failwith "error")));;
let rec zip3__d1 _lh_zip3_arg1_3 _lh_zip3_arg2_3 _lh_zip3_arg3_3 =
  (let rec _lh_matchIdent_1_7 = _lh_zip3_arg1_3 in
    (match _lh_matchIdent_1_7 with
      | `LH_C(_lh_zip3_LH_C_0_9, _lh_zip3_LH_C_1_9) -> 
        (let rec _lh_matchIdent_1_8 = _lh_zip3_arg2_3 in
          (match _lh_matchIdent_1_8 with
            | `LH_C(_lh_zip3_LH_C_0_1_0, _lh_zip3_LH_C_1_1_0) -> 
              (let rec _lh_matchIdent_1_9 = _lh_zip3_arg3_3 in
                (match _lh_matchIdent_1_9 with
                  | `LH_C(_lh_zip3_LH_C_0_1_1, _lh_zip3_LH_C_1_1_1) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_9, _lh_zip3_LH_C_0_1_0, _lh_zip3_LH_C_0_1_1)), (((zip3__d1 _lh_zip3_LH_C_1_9) _lh_zip3_LH_C_1_1_0) _lh_zip3_LH_C_1_1_1)))
                  | `LH_N -> 
                    (`LH_N)
                  | _ -> 
                    (failwith "error")))
            | `LH_N -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (failwith "error")));;
let rec zip3__d2 _lh_zip3_arg1_4 _lh_zip3_arg2_4 _lh_zip3_arg3_4 =
  (let rec _lh_matchIdent_2_2 = _lh_zip3_arg1_4 in
    (match _lh_matchIdent_2_2 with
      | `LH_C(_lh_zip3_LH_C_0_1_2, _lh_zip3_LH_C_1_1_2) -> 
        (let rec _lh_matchIdent_2_3 = _lh_zip3_arg2_4 in
          (match _lh_matchIdent_2_3 with
            | `LH_C(_lh_zip3_LH_C_0_1_3, _lh_zip3_LH_C_1_1_3) -> 
              (let rec _lh_matchIdent_2_4 = _lh_zip3_arg3_4 in
                (match _lh_matchIdent_2_4 with
                  | `LH_C(_lh_zip3_LH_C_0_1_4, _lh_zip3_LH_C_1_1_4) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_1_2, _lh_zip3_LH_C_0_1_3, _lh_zip3_LH_C_0_1_4)), (((zip3__d2 _lh_zip3_LH_C_1_1_2) _lh_zip3_LH_C_1_1_3) _lh_zip3_LH_C_1_1_4)))
                  | `LH_N -> 
                    (`LH_N)
                  | _ -> 
                    (failwith "error")))
            | `LH_N -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (failwith "error")));;
let rec zip3__d3 _lh_zip3_arg1_2 _lh_zip3_arg2_2 _lh_zip3_arg3_2 =
  (let rec _lh_matchIdent_1_4 = _lh_zip3_arg1_2 in
    (match _lh_matchIdent_1_4 with
      | `LH_C(_lh_zip3_LH_C_0_6, _lh_zip3_LH_C_1_6) -> 
        (let rec _lh_matchIdent_1_5 = _lh_zip3_arg2_2 in
          (match _lh_matchIdent_1_5 with
            | `LH_C(_lh_zip3_LH_C_0_7, _lh_zip3_LH_C_1_7) -> 
              (let rec _lh_matchIdent_1_6 = _lh_zip3_arg3_2 in
                (match _lh_matchIdent_1_6 with
                  | `LH_C(_lh_zip3_LH_C_0_8, _lh_zip3_LH_C_1_8) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_6, _lh_zip3_LH_C_0_7, _lh_zip3_LH_C_0_8)), (((zip3__d3 _lh_zip3_LH_C_1_6) _lh_zip3_LH_C_1_7) _lh_zip3_LH_C_1_8)))
                  | `LH_N -> 
                    (`LH_N)
                  | _ -> 
                    (failwith "error")))
            | `LH_N -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (failwith "error")));;
let rec zipWith3__d0 _lh_zipWith3_arg1_1 _lh_zipWith3_arg2_1 _lh_zipWith3_arg3_1 _lh_zipWith3_arg4_1 =
  (let rec _lh_matchIdent_8 = _lh_zipWith3_arg2_1 in
    (match _lh_matchIdent_8 with
      | `LH_C(_lh_zipWith3_LH_C_0_3, _lh_zipWith3_LH_C_1_3) -> 
        (let rec _lh_matchIdent_9 = _lh_zipWith3_arg3_1 in
          (match _lh_matchIdent_9 with
            | `LH_C(_lh_zipWith3_LH_C_0_4, _lh_zipWith3_LH_C_1_4) -> 
              (let rec _lh_matchIdent_1_0 = _lh_zipWith3_arg4_1 in
                (match _lh_matchIdent_1_0 with
                  | `LH_C(_lh_zipWith3_LH_C_0_5, _lh_zipWith3_LH_C_1_5) -> 
                    (`LH_C((((_lh_zipWith3_arg1_1 _lh_zipWith3_LH_C_0_3) _lh_zipWith3_LH_C_0_4) _lh_zipWith3_LH_C_0_5), ((((zipWith3__d0 _lh_zipWith3_arg1_1) _lh_zipWith3_LH_C_1_3) _lh_zipWith3_LH_C_1_4) _lh_zipWith3_LH_C_1_5)))
                  | `LH_N -> 
                    (`LH_N)
                  | _ -> 
                    (failwith "error")))
            | `LH_N -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (failwith "error")));;
let rec zip_lz_nl__d0 xs_2_0 ys_2_0 =
  (match ys_2_0 with
    | `LH_C(hy_8, ty_8) -> 
      (match (Lazy.force xs_2_0) with
        | `LH_C(hx_8, tx_8) -> 
          (`LH_C((`LH_P2(hx_8, hy_8)), ((zip_lz_nl__d0 tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_4_6, t_4_8) -> 
      ((mappend__d0 h_4_6) (concat__d0 t_4_8))
    | `LH_N -> 
      (`LH_N))
and disp__d0 _lh_disp_arg1_1 =
  (match _lh_disp_arg1_1 with
    | `LH_P2(_lh_disp_LH_P2_0_1, _lh_disp_LH_P2_1_1) -> 
      ((mappend__d3 ((mappend__d4 _lh_disp_LH_P2_0_1) (`LH_C('n', (`LH_C('n', (`LH_N))))))) ((fun _lh_funcomp_x_6 -> 
        (((foldr__d0 (glue__d0 (`LH_C('n', (`LH_N))))) (`LH_N)) ((map__d0 (fun _lh_funcomp_x_7 -> 
          (concat__d0 ((map__d1 star__d0) _lh_funcomp_x_7)))) _lh_funcomp_x_6))) _lh_disp_LH_P2_1_1))
    | _ -> 
      (failwith "error"))
and gen__d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  ((map__d2 row__d0) ((shift__d3 ((copy__d3 _lh_gen_arg1_1) 0)) _lh_gen_arg2_1))
and generations__d0 _lh_generations_arg1_1 =
  ((fun _lh_funcomp_x_8 -> 
    ((fun _lh_funcomp_x_9 -> 
      ((fun _lh_funcomp_x_1_0 -> 
        ((map__d3 disp__d0) ((zip_lz_nl__d0 ((map_lz__d0 string_of_int) (enumFrom__d0 0))) _lh_funcomp_x_1_0))) (limit__d0 _lh_funcomp_x_9))) ((iterate__d0 (gen__d0 _lh_generations_arg1_1)) _lh_funcomp_x_8))) ((take__d0 _lh_generations_arg1_1) ((map__d4 (fun _lh_funcomp_x_1_1 -> 
    ((fun l_2 -> 
      ((take__d1 _lh_generations_arg1_1) l_2)) ((fun l_3 -> 
      ((mappend__d1_d3 l_3) ((copy__d0 _lh_generations_arg1_1) 0))) _lh_funcomp_x_1_1)))) ((mappend__d1_d4 start__d0) ((copy__d1 _lh_generations_arg1_1) ((copy__d2 _lh_generations_arg1_1) 0))))))
and glue__d0 _lh_glue_arg1_1 _lh_glue_arg2_1 _lh_glue_arg3_1 =
  ((mappend__d1 ((mappend__d2 _lh_glue_arg2_1) _lh_glue_arg1_1)) _lh_glue_arg3_1)
and row__d0 _lh_row_arg1_1 =
  (match _lh_row_arg1_1 with
    | `LH_P3(_lh_row_LH_P3_0_1, _lh_row_LH_P3_1_1, _lh_row_LH_P3_2_1) -> 
      ((((zipWith3__d0 elt__d0) ((shift__d0 0) _lh_row_LH_P3_0_1)) ((shift__d1 0) _lh_row_LH_P3_1_1)) ((shift__d2 0) _lh_row_LH_P3_2_1))
    | _ -> 
      (failwith "error"))
and shift__d0 _lh_shift_arg1_1 _lh_shift_arg2_1 =
  (((zip3__d0 ((shiftr__d0 _lh_shift_arg1_1) _lh_shift_arg2_1)) _lh_shift_arg2_1) ((shiftl__d0 _lh_shift_arg1_1) _lh_shift_arg2_1))
and shift__d1 _lh_shift_arg1_4 _lh_shift_arg2_4 =
  (((zip3__d1 ((shiftr__d1 _lh_shift_arg1_4) _lh_shift_arg2_4)) _lh_shift_arg2_4) ((shiftl__d1 _lh_shift_arg1_4) _lh_shift_arg2_4))
and shift__d2 _lh_shift_arg1_2 _lh_shift_arg2_2 =
  (((zip3__d2 ((shiftr__d2 _lh_shift_arg1_2) _lh_shift_arg2_2)) _lh_shift_arg2_2) ((shiftl__d2 _lh_shift_arg1_2) _lh_shift_arg2_2))
and shift__d3 _lh_shift_arg1_3 _lh_shift_arg2_3 =
  (((zip3__d3 ((shiftr__d3 _lh_shift_arg1_3) _lh_shift_arg2_3)) _lh_shift_arg2_3) ((shiftl__d3 _lh_shift_arg1_3) _lh_shift_arg2_3))
and shiftl__d0 _lh_shiftl_arg1_1 _lh_shiftl_arg2_1 =
  ((mappend__d5 (tail__d0 _lh_shiftl_arg2_1)) (`LH_C(_lh_shiftl_arg1_1, (`LH_N))))
and shiftl__d1 _lh_shiftl_arg1_3 _lh_shiftl_arg2_3 =
  ((mappend__d7 (tail__d1 _lh_shiftl_arg2_3)) (`LH_C(_lh_shiftl_arg1_3, (`LH_N))))
and shiftl__d2 _lh_shiftl_arg1_4 _lh_shiftl_arg2_4 =
  ((mappend__d9 (tail__d2 _lh_shiftl_arg2_4)) (`LH_C(_lh_shiftl_arg1_4, (`LH_N))))
and shiftl__d3 _lh_shiftl_arg1_2 _lh_shiftl_arg2_2 =
  ((mappend__d1_d1 (tail__d3 _lh_shiftl_arg2_2)) (`LH_C(_lh_shiftl_arg1_2, (`LH_N))))
and shiftr__d0 _lh_shiftr_arg1_4 _lh_shiftr_arg2_4 =
  ((mappend__d6 (`LH_C(_lh_shiftr_arg1_4, (`LH_N)))) (init__d0 _lh_shiftr_arg2_4))
and shiftr__d1 _lh_shiftr_arg1_2 _lh_shiftr_arg2_2 =
  ((mappend__d8 (`LH_C(_lh_shiftr_arg1_2, (`LH_N)))) (init__d1 _lh_shiftr_arg2_2))
and shiftr__d2 _lh_shiftr_arg1_1 _lh_shiftr_arg2_1 =
  ((mappend__d1_d0 (`LH_C(_lh_shiftr_arg1_1, (`LH_N)))) (init__d2 _lh_shiftr_arg2_1))
and shiftr__d3 _lh_shiftr_arg1_3 _lh_shiftr_arg2_3 =
  ((mappend__d1_d2 (`LH_C(_lh_shiftr_arg1_3, (`LH_N)))) (init__d3 _lh_shiftr_arg2_3))
and testLife_nofib__d0 _lh_testLife_nofib_arg1_1 =
  (generations__d0 _lh_testLife_nofib_arg1_1);;

(* lumberhack *)
let rec concat__d0__d0 lss_0 =
  (lss_0 99);;
let rec copy__d3__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy__d3__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec disp__d0__d0 _lh_disp_arg1_0 =
  (_lh_disp_arg1_0 99);;
let rec elt__d0__d0 _lh_elt_arg1_0 _lh_elt_arg2_2 _lh_elt_arg3_4 =
  ((_lh_elt_arg1_0 _lh_elt_arg2_2) _lh_elt_arg3_4);;
let rec foldr__d0__d0 f_3_4 i_2 ls_1_0 =
  ((ls_1_0 f_3_4) i_2);;
let rec init__d0__d0 _lh_init_arg1_0 =
  (match _lh_init_arg1_0 with
    | `LH_C(_lh_init_LH_C_0_0, _lh_init_LH_C_1_0) -> 
      (match _lh_init_LH_C_1_0 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_1 _lh_zip3_arg3_1 _lh_zipWith3_arg1_3 _lh_zipWith3_arg3_1 _lh_zipWith3_arg4_1 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_1_1 = (init__d0__d0 _lh_init_LH_C_1_0) in
            (let rec _lh_zip3_LH_C_0_1_1 = _lh_init_LH_C_0_0 in
              (fun _lh_zip3_arg2_2 _lh_zip3_arg3_2 -> 
                (let rec _lh_matchIdent_4 = _lh_zip3_arg2_2 in
                  (match _lh_matchIdent_4 with
                    | `LH_C(_lh_zip3_LH_C_0_1_2, _lh_zip3_LH_C_1_1_2) -> 
                      (let rec _lh_matchIdent_5 = _lh_zip3_arg3_2 in
                        ((((_lh_matchIdent_5 _lh_zip3_LH_C_0_1_1) _lh_zip3_LH_C_0_1_2) _lh_zip3_LH_C_1_1_1) _lh_zip3_LH_C_1_1_2))
                    | `LH_N -> 
                      (fun _lh_zipWith3_arg1_4 _lh_zipWith3_arg3_2 _lh_zipWith3_arg4_2 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d1__d0 _lh_init_arg1_1 =
  (match _lh_init_arg1_1 with
    | `LH_C(_lh_init_LH_C_0_1, _lh_init_LH_C_1_1) -> 
      (match _lh_init_LH_C_1_1 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_7 _lh_zip3_arg3_7 _lh_zipWith3_LH_C_0_1_2 _lh_zipWith3_LH_C_1_1_2 _lh_zipWith3_arg1_1_1 _lh_zipWith3_arg4_9 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_3_0 = (init__d1__d0 _lh_init_LH_C_1_1) in
            (let rec _lh_zip3_LH_C_0_3_0 = _lh_init_LH_C_0_1 in
              (fun _lh_zip3_arg2_8 _lh_zip3_arg3_8 -> 
                (let rec _lh_matchIdent_1_5 = _lh_zip3_arg2_8 in
                  (match _lh_matchIdent_1_5 with
                    | `LH_C(_lh_zip3_LH_C_0_3_1, _lh_zip3_LH_C_1_3_1) -> 
                      (let rec _lh_matchIdent_1_6 = _lh_zip3_arg3_8 in
                        ((((_lh_matchIdent_1_6 _lh_zip3_LH_C_0_3_1) _lh_zip3_LH_C_0_3_0) _lh_zip3_LH_C_1_3_1) _lh_zip3_LH_C_1_3_0))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_1_3 _lh_zipWith3_LH_C_1_1_3 _lh_zipWith3_arg1_1_2 _lh_zipWith3_arg4_1_0 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d2__d0 _lh_init_arg1_3 =
  (match _lh_init_arg1_3 with
    | `LH_C(_lh_init_LH_C_0_3, _lh_init_LH_C_1_3) -> 
      (match _lh_init_LH_C_1_3 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_1_4 _lh_zip3_arg3_1_4 _lh_zipWith3_LH_C_0_1_7 _lh_zipWith3_LH_C_0_1_8 _lh_zipWith3_LH_C_1_1_7 _lh_zipWith3_LH_C_1_1_8 _lh_zipWith3_arg1_1_6 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_4_3 = (init__d2__d0 _lh_init_LH_C_1_3) in
            (let rec _lh_zip3_LH_C_0_4_3 = _lh_init_LH_C_0_3 in
              (fun _lh_zip3_arg2_1_5 _lh_zip3_arg3_1_5 -> 
                (let rec _lh_matchIdent_2_5 = _lh_zip3_arg2_1_5 in
                  (match _lh_matchIdent_2_5 with
                    | `LH_C(_lh_zip3_LH_C_0_4_4, _lh_zip3_LH_C_1_4_4) -> 
                      (let rec _lh_matchIdent_2_6 = _lh_zip3_arg3_1_5 in
                        ((((_lh_matchIdent_2_6 _lh_zip3_LH_C_0_4_3) _lh_zip3_LH_C_0_4_4) _lh_zip3_LH_C_1_4_3) _lh_zip3_LH_C_1_4_4))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_1_9 _lh_zipWith3_LH_C_0_2_0 _lh_zipWith3_LH_C_1_1_9 _lh_zipWith3_LH_C_1_2_0 _lh_zipWith3_arg1_1_7 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d3__d0 _lh_init_arg1_2 =
  (match _lh_init_arg1_2 with
    | `LH_C(_lh_init_LH_C_0_2, _lh_init_LH_C_1_2) -> 
      (match _lh_init_LH_C_1_2 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_1_0 _lh_zip3_arg3_1_0 f_3_0 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_3_9 = (init__d3__d0 _lh_init_LH_C_1_2) in
            (let rec _lh_zip3_LH_C_0_3_9 = _lh_init_LH_C_0_2 in
              (fun _lh_zip3_arg2_1_1 _lh_zip3_arg3_1_1 -> 
                (let rec _lh_matchIdent_1_9 = _lh_zip3_arg2_1_1 in
                  (match _lh_matchIdent_1_9 with
                    | `LH_C(_lh_zip3_LH_C_0_4_0, _lh_zip3_LH_C_1_4_0) -> 
                      (let rec _lh_matchIdent_2_0 = _lh_zip3_arg3_1_1 in
                        ((((_lh_matchIdent_2_0 _lh_zip3_LH_C_0_3_9) _lh_zip3_LH_C_0_4_0) _lh_zip3_LH_C_1_3_9) _lh_zip3_LH_C_1_4_0))
                    | `LH_N -> 
                      (fun f_3_1 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec iterate__d0__d0 f_2_3 x_0 =
  (lazy (`LH_C(x_0, ((iterate__d0__d0 f_2_3) (f_2_3 x_0)))));;
let rec limit__d0__d0 _lh_limit_arg1_0 =
  (let rec _lh_matchIdent_0 = (Lazy.force _lh_limit_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_limit_LH_C_0_0, _lh_limit_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1 = (Lazy.force _lh_limit_LH_C_1_0) in
          (match _lh_matchIdent_1 with
            | `LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1) -> 
              (if (_lh_limit_LH_C_0_0 = _lh_limit_LH_C_0_1) then
                (let rec ty_0 = (fun xs_0 f_0 -> 
                  (`LH_N)) in
                  (let rec hy_0 = _lh_limit_LH_C_0_0 in
                    (fun xs_1 -> 
                      (((Lazy.force xs_1) hy_0) ty_0))))
              else
                (let rec ty_1 = (limit__d0__d0 (lazy (`LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1)))) in
                  (let rec hy_1 = _lh_limit_LH_C_0_0 in
                    (fun xs_2 -> 
                      (((Lazy.force xs_2) hy_1) ty_1)))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz__d0__d0 f_3_5 ls_1_2 =
  (lazy ((Lazy.force ls_1_2) f_3_5));;
let rec map__d2__d0 f_2_4 ls_6 =
  (ls_6 f_2_4);;
let rec map__d3__d0 f_2_0 ls_3 =
  (ls_3 f_2_0);;
let rec map__d4__d0 f_2 ls_1 =
  (ls_1 f_2);;
let rec mappend__d0__d0 xs_1_1 ys_7_0 =
  (xs_1_1 ys_7_0);;
let rec mappend__d1__d0 xs_1_5 ys_9_9 =
  (xs_1_5 ys_9_9);;
let rec mappend__d1_d0__d0 xs_7 ys_4 =
  (xs_7 ys_4);;
let rec mappend__d1_d2__d0 xs_1_4 ys_9_8 =
  (xs_1_4 ys_9_8);;
let rec mappend__d1_d3__d0 xs_9 ys_6_5 =
  (xs_9 ys_6_5);;
let rec mappend__d1_d4__d0 xs_1_6 ys_1_0_0 =
  (xs_1_6 ys_1_0_0);;
let rec mappend__d2__d0 xs_5 ys_2 =
  (xs_5 ys_2);;
let rec mappend__d3__d0 xs_8 ys_6 =
  (xs_8 ys_6);;
let rec mappend__d6__d0 xs_1_8 ys_1_0_2 =
  (xs_1_8 ys_1_0_2);;
let rec mappend__d8__d0 xs_1_3 ys_9_1 =
  (xs_1_3 ys_9_1);;
let rec row__d0__d0 _lh_row_arg1_0 =
  (_lh_row_arg1_0 99);;
let rec tail__d0__d0 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_3_6, t_1_3_6) -> 
      t_1_3_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1__d0 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_1_3_7, t_1_3_7) -> 
      t_1_3_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_4, t_4) -> 
      t_4
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3__d0 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_2_8, t_1_2_8) -> 
      t_1_2_8
    | `LH_N -> 
      (failwith "error"));;
let rec take__d0__d0 n_4_4 ls_4 =
  (if (n_4_4 > 0) then
    (ls_4 n_4_4)
  else
    (`LH_N));;
let rec take__d1__d0 n_4_5 ls_5 =
  (if (n_4_5 > 0) then
    (ls_5 n_4_5)
  else
    (`LH_N));;
let rec zip3__d0__d0 _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_0 =
  (let rec _lh_matchIdent_2 = _lh_zip3_arg1_0 in
    ((_lh_matchIdent_2 _lh_zip3_arg2_0) _lh_zip3_arg3_0));;
let rec zip3__d1__d0 _lh_zip3_arg1_1 _lh_zip3_arg2_3 _lh_zip3_arg3_3 =
  (let rec _lh_matchIdent_7 = _lh_zip3_arg1_1 in
    ((_lh_matchIdent_7 _lh_zip3_arg2_3) _lh_zip3_arg3_3));;
let rec zip3__d2__d0 _lh_zip3_arg1_3 _lh_zip3_arg2_1_3 _lh_zip3_arg3_1_3 =
  (let rec _lh_matchIdent_2_4 = _lh_zip3_arg1_3 in
    ((_lh_matchIdent_2_4 _lh_zip3_arg2_1_3) _lh_zip3_arg3_1_3));;
let rec zip3__d3__d0 _lh_zip3_arg1_2 _lh_zip3_arg2_5 _lh_zip3_arg3_5 =
  (let rec _lh_matchIdent_1_1 = _lh_zip3_arg1_2 in
    ((_lh_matchIdent_1_1 _lh_zip3_arg2_5) _lh_zip3_arg3_5));;
let rec zipWith3__d0__d0 _lh_zipWith3_arg1_1_5 _lh_zipWith3_arg2_0 _lh_zipWith3_arg3_6 _lh_zipWith3_arg4_1_2 =
  (let rec _lh_matchIdent_2_3 = _lh_zipWith3_arg2_0 in
    (((_lh_matchIdent_2_3 _lh_zipWith3_arg1_1_5) _lh_zipWith3_arg3_6) _lh_zipWith3_arg4_1_2));;
let rec zip_lz_nl__d0__d0 xs_6 ys_3 =
  (ys_3 xs_6);;
let rec copy__d0__d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (fun n_0 -> 
        (`LH_N))
    | _ -> 
      (let rec t_0 = ((copy__d0__d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
        (let rec h_0 = _lh_copy_arg2_0 in
          (fun n_1 -> 
            (`LH_C(h_0, ((take__d1__d0 (n_1 - 1)) t_0)))))))
and copy__d1__d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (match _lh_copy_arg1_2 with
    | 0 -> 
      (fun f_3_2 n_4_6 -> 
        (`LH_N))
    | _ -> 
      (let rec t_1_3_4 = ((copy__d1__d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
        (let rec h_1_3_4 = _lh_copy_arg2_2 in
          (fun f_3_3 -> 
            (let rec t_1_3_5 = ((map__d4__d0 f_3_3) t_1_3_4) in
              (let rec h_1_3_5 = (f_3_3 h_1_3_4) in
                (fun n_4_7 -> 
                  (`LH_C(h_1_3_5, ((take__d0__d0 (n_4_7 - 1)) t_1_3_5))))))))))
and copy__d2__d0 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (match _lh_copy_arg1_3 with
    | 0 -> 
      (fun ys_1_0_3 -> 
        ys_1_0_3)
    | _ -> 
      (let rec t_1_3_9 = ((copy__d2__d0 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
        (let rec h_1_3_9 = _lh_copy_arg2_3 in
          (fun ys_1_0_4 -> 
            (let rec t_1_4_0 = ((mappend__d1_d3__d0 t_1_3_9) ys_1_0_4) in
              (let rec h_1_4_0 = h_1_3_9 in
                (fun n_4_8 -> 
                  (`LH_C(h_1_4_0, ((take__d1__d0 (n_4_8 - 1)) t_1_4_0))))))))))
and enumFrom__d0__d0 a_0 =
  (lazy (let rec t_1_2_2 = (enumFrom__d0__d0 (a_0 + 1)) in
    (let rec h_1_2_2 = a_0 in
      (fun f_2_1 -> 
        (let rec tx_0 = ((map_lz__d0__d0 f_2_1) t_1_2_2) in
          (let rec hx_0 = (f_2_1 h_1_2_2) in
            (fun hy_2 ty_2 -> 
              (let rec t_1_2_3 = ((zip_lz_nl__d0__d0 tx_0) ty_2) in
                (let rec h_1_2_3 = (let rec _lh_disp_LH_P2_1_0 = hy_2 in
                  (let rec _lh_disp_LH_P2_0_0 = hx_0 in
                    (fun _lh_dummy_3 -> 
                      ((mappend__d3__d0 ((mappend__d4__d0 _lh_disp_LH_P2_0_0) (let rec t_1_2_4 = (let rec t_1_2_5 = (fun ys_8_6 -> 
                        ys_8_6) in
                        (let rec h_1_2_4 = 'n' in
                          (fun ys_8_7 -> 
                            (`LH_C(h_1_2_4, ((mappend__d3__d0 t_1_2_5) ys_8_7)))))) in
                        (let rec h_1_2_5 = 'n' in
                          (fun ys_8_8 -> 
                            (`LH_C(h_1_2_5, ((mappend__d3__d0 t_1_2_4) ys_8_8)))))))) ((fun _lh_funcomp_x_0 -> 
                        (((foldr__d0__d0 (glue__d0__d0 (let rec t_1_2_6 = (fun ys_8_9 -> 
                          ys_8_9) in
                          (let rec h_1_2_6 = 'n' in
                            (fun ys_9_0 -> 
                              (`LH_C(h_1_2_6, ((mappend__d1__d0 t_1_2_6) ys_9_0)))))))) (`LH_N)) ((map__d0__d0 (fun _lh_funcomp_x_1 -> 
                          (concat__d0__d0 ((map__d1__d0 star__d0__d0) _lh_funcomp_x_1)))) _lh_funcomp_x_0))) _lh_disp_LH_P2_1_0))))) in
                  (fun f_2_2 -> 
                    (`LH_C((f_2_2 h_1_2_3), ((map__d3__d0 f_2_2) t_1_2_3)))))))))))))
and gen__d0__d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  ((map__d2__d0 row__d0__d0) ((shift__d3__d0 ((copy__d3__d0 _lh_gen_arg1_0) 0)) _lh_gen_arg2_0))
and generations__d0__d0 _lh_generations_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      ((fun _lh_funcomp_x_4 -> 
        ((map__d3__d0 disp__d0__d0) ((zip_lz_nl__d0__d0 ((map_lz__d0__d0 string_of_int) (enumFrom__d0__d0 0))) _lh_funcomp_x_4))) (limit__d0__d0 _lh_funcomp_x_3))) ((iterate__d0__d0 (gen__d0__d0 _lh_generations_arg1_0)) _lh_funcomp_x_2))) ((take__d0__d0 _lh_generations_arg1_0) ((map__d4__d0 (fun _lh_funcomp_x_5 -> 
    ((fun l_0 -> 
      ((take__d1__d0 _lh_generations_arg1_0) l_0)) ((fun l_1 -> 
      ((mappend__d1_d3__d0 l_1) ((copy__d0__d0 _lh_generations_arg1_0) 0))) _lh_funcomp_x_5)))) ((mappend__d1_d4__d0 start__d0__d0) ((copy__d1__d0 _lh_generations_arg1_0) ((copy__d2__d0 _lh_generations_arg1_0) 0))))))
and glue__d0__d0 _lh_glue_arg1_0 _lh_glue_arg2_0 _lh_glue_arg3_0 =
  ((mappend__d1__d0 ((mappend__d2__d0 _lh_glue_arg2_0) _lh_glue_arg1_0)) _lh_glue_arg3_0)
and map__d0__d0 f_2_5 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_2_9, t_1_2_9) -> 
      (let rec t_1_3_0 = ((map__d0__d0 f_2_5) t_1_2_9) in
        (let rec h_1_3_0 = (f_2_5 h_1_2_9) in
          (fun f_2_6 i_0 -> 
            ((f_2_6 h_1_3_0) (((foldr__d0__d0 f_2_6) i_0) t_1_3_0)))))
    | `LH_N -> 
      (fun f_2_7 i_1 -> 
        i_1))
and map__d1__d0 f_3 ls_2 =
  (match ls_2 with
    | `LH_C(h_5, t_5) -> 
      (let rec t_6 = ((map__d1__d0 f_3) t_5) in
        (let rec h_6 = (f_3 h_5) in
          (fun _lh_dummy_1 -> 
            ((mappend__d0__d0 h_6) (concat__d0__d0 t_6)))))
    | `LH_N -> 
      (fun _lh_dummy_2 ys_5 -> 
        ys_5))
and mappend__d1_d1__d0 xs_4 ys_1 =
  (match xs_4 with
    | `LH_C(h_2, t_2) -> 
      (let rec _lh_zip3_LH_C_1_8 = ((mappend__d1_d1__d0 t_2) ys_1) in
        (let rec _lh_zip3_LH_C_0_8 = h_2 in
          (fun _lh_zip3_LH_C_0_9 _lh_zip3_LH_C_0_1_0 _lh_zip3_LH_C_1_9 _lh_zip3_LH_C_1_1_0 -> 
            (let rec t_3 = (((zip3__d3__d0 _lh_zip3_LH_C_1_9) _lh_zip3_LH_C_1_1_0) _lh_zip3_LH_C_1_8) in
              (let rec h_3 = (let rec _lh_row_LH_P3_2_0 = _lh_zip3_LH_C_0_8 in
                (let rec _lh_row_LH_P3_1_0 = _lh_zip3_LH_C_0_1_0 in
                  (let rec _lh_row_LH_P3_0_0 = _lh_zip3_LH_C_0_9 in
                    (fun _lh_dummy_0 -> 
                      ((((zipWith3__d0__d0 elt__d0__d0) ((shift__d0__d0 0) _lh_row_LH_P3_0_0)) ((shift__d1__d0 0) _lh_row_LH_P3_1_0)) ((shift__d2__d0 0) _lh_row_LH_P3_2_0)))))) in
                (fun f_1 -> 
                  (`LH_C((f_1 h_3), ((map__d2__d0 f_1) t_3)))))))))
    | `LH_N -> 
      ys_1)
and mappend__d4__d0 xs_1_0 ys_6_8 =
  (match xs_1_0 with
    | `LH_C(h_1_0_7, t_1_0_7) -> 
      (let rec t_1_0_8 = ((mappend__d4__d0 t_1_0_7) ys_6_8) in
        (let rec h_1_0_8 = h_1_0_7 in
          (fun ys_6_9 -> 
            (`LH_C(h_1_0_8, ((mappend__d3__d0 t_1_0_8) ys_6_9))))))
    | `LH_N -> 
      ys_6_8)
and mappend__d5__d0 xs_3 ys_0 =
  (match xs_3 with
    | `LH_C(h_1, t_1) -> 
      (let rec _lh_zip3_LH_C_1_5 = ((mappend__d5__d0 t_1) ys_0) in
        (let rec _lh_zip3_LH_C_0_5 = h_1 in
          (fun _lh_zip3_LH_C_0_6 _lh_zip3_LH_C_0_7 _lh_zip3_LH_C_1_6 _lh_zip3_LH_C_1_7 -> 
            (let rec _lh_zipWith3_LH_C_1_5 = (((zip3__d0__d0 _lh_zip3_LH_C_1_6) _lh_zip3_LH_C_1_7) _lh_zip3_LH_C_1_5) in
              (let rec _lh_zipWith3_LH_C_0_5 = (let rec _lh_elt_LH_P3_2_3 = _lh_zip3_LH_C_0_5 in
                (let rec _lh_elt_LH_P3_1_3 = _lh_zip3_LH_C_0_7 in
                  (let rec _lh_elt_LH_P3_0_3 = _lh_zip3_LH_C_0_6 in
                    (fun _lh_elt_arg2_0 _lh_elt_arg3_0 -> 
                      ((((_lh_elt_arg2_0 _lh_elt_LH_P3_0_3) _lh_elt_LH_P3_1_3) _lh_elt_LH_P3_2_3) _lh_elt_arg3_0))))) in
                (fun _lh_zipWith3_arg1_2 _lh_zipWith3_arg3_0 _lh_zipWith3_arg4_0 -> 
                  (let rec _lh_matchIdent_3 = _lh_zipWith3_arg3_0 in
                    ((((_lh_matchIdent_3 _lh_zipWith3_LH_C_0_5) _lh_zipWith3_LH_C_1_5) _lh_zipWith3_arg1_2) _lh_zipWith3_arg4_0))))))))
    | `LH_N -> 
      ys_0)
and mappend__d7__d0 xs_1_2 ys_8_5 =
  (match xs_1_2 with
    | `LH_C(h_1_2_1, t_1_2_1) -> 
      (let rec _lh_zip3_LH_C_1_2_5 = ((mappend__d7__d0 t_1_2_1) ys_8_5) in
        (let rec _lh_zip3_LH_C_0_2_5 = h_1_2_1 in
          (fun _lh_zip3_LH_C_0_2_6 _lh_zip3_LH_C_0_2_7 _lh_zip3_LH_C_1_2_6 _lh_zip3_LH_C_1_2_7 -> 
            (let rec _lh_zipWith3_LH_C_1_1_0 = (((zip3__d1__d0 _lh_zip3_LH_C_1_2_7) _lh_zip3_LH_C_1_2_6) _lh_zip3_LH_C_1_2_5) in
              (let rec _lh_zipWith3_LH_C_0_1_0 = (let rec _lh_elt_LH_P3_2_7 = _lh_zip3_LH_C_0_2_5 in
                (let rec _lh_elt_LH_P3_1_7 = _lh_zip3_LH_C_0_2_6 in
                  (let rec _lh_elt_LH_P3_0_7 = _lh_zip3_LH_C_0_2_7 in
                    (fun _lh_elt_LH_P3_0_8 _lh_elt_LH_P3_1_8 _lh_elt_LH_P3_2_8 _lh_elt_arg3_3 -> 
                      ((((((_lh_elt_arg3_3 _lh_elt_LH_P3_0_8) _lh_elt_LH_P3_0_7) _lh_elt_LH_P3_1_8) _lh_elt_LH_P3_1_7) _lh_elt_LH_P3_2_8) _lh_elt_LH_P3_2_7))))) in
                (fun _lh_zipWith3_LH_C_0_1_1 _lh_zipWith3_LH_C_1_1_1 _lh_zipWith3_arg1_9 _lh_zipWith3_arg4_7 -> 
                  (let rec _lh_matchIdent_1_2 = _lh_zipWith3_arg4_7 in
                    (((((_lh_matchIdent_1_2 _lh_zipWith3_LH_C_0_1_1) _lh_zipWith3_LH_C_0_1_0) _lh_zipWith3_LH_C_1_1_1) _lh_zipWith3_LH_C_1_1_0) _lh_zipWith3_arg1_9))))))))
    | `LH_N -> 
      ys_8_5)
and mappend__d9__d0 xs_1_7 ys_1_0_1 =
  (match xs_1_7 with
    | `LH_C(h_1_3_8, t_1_3_8) -> 
      (let rec _lh_zip3_LH_C_1_4_5 = ((mappend__d9__d0 t_1_3_8) ys_1_0_1) in
        (let rec _lh_zip3_LH_C_0_4_5 = h_1_3_8 in
          (fun _lh_zip3_LH_C_0_4_6 _lh_zip3_LH_C_0_4_7 _lh_zip3_LH_C_1_4_6 _lh_zip3_LH_C_1_4_7 -> 
            (let rec _lh_zipWith3_LH_C_1_2_1 = (((zip3__d2__d0 _lh_zip3_LH_C_1_4_6) _lh_zip3_LH_C_1_4_7) _lh_zip3_LH_C_1_4_5) in
              (let rec _lh_zipWith3_LH_C_0_2_1 = (let rec _lh_elt_LH_P3_2_9 = _lh_zip3_LH_C_0_4_5 in
                (let rec _lh_elt_LH_P3_1_9 = _lh_zip3_LH_C_0_4_7 in
                  (let rec _lh_elt_LH_P3_0_9 = _lh_zip3_LH_C_0_4_6 in
                    (fun _lh_elt_LH_P3_0_1_0 _lh_elt_LH_P3_0_1_1 _lh_elt_LH_P3_1_1_0 _lh_elt_LH_P3_1_1_1 _lh_elt_LH_P3_2_1_0 _lh_elt_LH_P3_2_1_1 -> 
                      (let rec tot_1 = (((((((_lh_elt_LH_P3_0_1_0 + _lh_elt_LH_P3_1_1_0) + _lh_elt_LH_P3_2_1_0) + _lh_elt_LH_P3_0_1_1) + _lh_elt_LH_P3_2_1_1) + _lh_elt_LH_P3_0_9) + _lh_elt_LH_P3_1_9) + _lh_elt_LH_P3_2_9) in
                        (if ((tot_1 < 2) || (tot_1 > 3)) then
                          0
                        else
                          (if (tot_1 = 3) then
                            1
                          else
                            _lh_elt_LH_P3_1_1_1))))))) in
                (fun _lh_zipWith3_LH_C_0_2_2 _lh_zipWith3_LH_C_0_2_3 _lh_zipWith3_LH_C_1_2_2 _lh_zipWith3_LH_C_1_2_3 _lh_zipWith3_arg1_1_8 -> 
                  (`LH_C((((_lh_zipWith3_arg1_1_8 _lh_zipWith3_LH_C_0_2_2) _lh_zipWith3_LH_C_0_2_3) _lh_zipWith3_LH_C_0_2_1), ((((zipWith3__d0__d0 _lh_zipWith3_arg1_1_8) _lh_zipWith3_LH_C_1_2_2) _lh_zipWith3_LH_C_1_2_3) _lh_zipWith3_LH_C_1_2_1)))))))))
    | `LH_N -> 
      ys_1_0_1)
and shift__d0__d0 _lh_shift_arg1_2 _lh_shift_arg2_2 =
  (((zip3__d0__d0 ((shiftr__d0__d0 _lh_shift_arg1_2) _lh_shift_arg2_2)) _lh_shift_arg2_2) ((shiftl__d0__d0 _lh_shift_arg1_2) _lh_shift_arg2_2))
and shift__d1__d0 _lh_shift_arg1_0 _lh_shift_arg2_0 =
  (((zip3__d1__d0 ((shiftr__d1__d0 _lh_shift_arg1_0) _lh_shift_arg2_0)) _lh_shift_arg2_0) ((shiftl__d1__d0 _lh_shift_arg1_0) _lh_shift_arg2_0))
and shift__d2__d0 _lh_shift_arg1_3 _lh_shift_arg2_3 =
  (((zip3__d2__d0 ((shiftr__d2__d0 _lh_shift_arg1_3) _lh_shift_arg2_3)) _lh_shift_arg2_3) ((shiftl__d2__d0 _lh_shift_arg1_3) _lh_shift_arg2_3))
and shift__d3__d0 _lh_shift_arg1_1 _lh_shift_arg2_1 =
  (((zip3__d3__d0 ((shiftr__d3__d0 _lh_shift_arg1_1) _lh_shift_arg2_1)) _lh_shift_arg2_1) ((shiftl__d3__d0 _lh_shift_arg1_1) _lh_shift_arg2_1))
and shiftl__d0__d0 _lh_shiftl_arg1_1 _lh_shiftl_arg2_1 =
  ((mappend__d5__d0 (tail__d0__d0 _lh_shiftl_arg2_1)) (let rec _lh_zip3_LH_C_1_1_3 = (fun _lh_zip3_LH_C_0_1_3 _lh_zip3_LH_C_0_1_4 _lh_zip3_LH_C_1_1_4 _lh_zip3_LH_C_1_1_5 _lh_zipWith3_arg1_5 _lh_zipWith3_arg3_3 _lh_zipWith3_arg4_3 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_1_5 = _lh_shiftl_arg1_1 in
      (fun _lh_zip3_LH_C_0_1_6 _lh_zip3_LH_C_0_1_7 _lh_zip3_LH_C_1_1_6 _lh_zip3_LH_C_1_1_7 -> 
        (let rec _lh_zipWith3_LH_C_1_6 = (((zip3__d0__d0 _lh_zip3_LH_C_1_1_6) _lh_zip3_LH_C_1_1_7) _lh_zip3_LH_C_1_1_3) in
          (let rec _lh_zipWith3_LH_C_0_6 = (let rec _lh_elt_LH_P3_2_4 = _lh_zip3_LH_C_0_1_5 in
            (let rec _lh_elt_LH_P3_1_4 = _lh_zip3_LH_C_0_1_7 in
              (let rec _lh_elt_LH_P3_0_4 = _lh_zip3_LH_C_0_1_6 in
                (fun _lh_elt_arg2_1 _lh_elt_arg3_1 -> 
                  ((((_lh_elt_arg2_1 _lh_elt_LH_P3_0_4) _lh_elt_LH_P3_1_4) _lh_elt_LH_P3_2_4) _lh_elt_arg3_1))))) in
            (fun _lh_zipWith3_arg1_6 _lh_zipWith3_arg3_4 _lh_zipWith3_arg4_4 -> 
              (let rec _lh_matchIdent_6 = _lh_zipWith3_arg3_4 in
                ((((_lh_matchIdent_6 _lh_zipWith3_LH_C_0_6) _lh_zipWith3_LH_C_1_6) _lh_zipWith3_arg1_6) _lh_zipWith3_arg4_4)))))))))
and shiftl__d1__d0 _lh_shiftl_arg1_2 _lh_shiftl_arg2_2 =
  ((mappend__d7__d0 (tail__d1__d0 _lh_shiftl_arg2_2)) (let rec _lh_zip3_LH_C_1_1_8 = (fun _lh_zip3_LH_C_0_1_8 _lh_zip3_LH_C_0_1_9 _lh_zip3_LH_C_1_1_9 _lh_zip3_LH_C_1_2_0 _lh_zipWith3_LH_C_0_7 _lh_zipWith3_LH_C_1_7 _lh_zipWith3_arg1_7 _lh_zipWith3_arg4_5 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_2_0 = _lh_shiftl_arg1_2 in
      (fun _lh_zip3_LH_C_0_2_1 _lh_zip3_LH_C_0_2_2 _lh_zip3_LH_C_1_2_1 _lh_zip3_LH_C_1_2_2 -> 
        (let rec _lh_zipWith3_LH_C_1_8 = (((zip3__d1__d0 _lh_zip3_LH_C_1_2_2) _lh_zip3_LH_C_1_2_1) _lh_zip3_LH_C_1_1_8) in
          (let rec _lh_zipWith3_LH_C_0_8 = (let rec _lh_elt_LH_P3_2_5 = _lh_zip3_LH_C_0_2_0 in
            (let rec _lh_elt_LH_P3_1_5 = _lh_zip3_LH_C_0_2_1 in
              (let rec _lh_elt_LH_P3_0_5 = _lh_zip3_LH_C_0_2_2 in
                (fun _lh_elt_LH_P3_0_6 _lh_elt_LH_P3_1_6 _lh_elt_LH_P3_2_6 _lh_elt_arg3_2 -> 
                  ((((((_lh_elt_arg3_2 _lh_elt_LH_P3_0_6) _lh_elt_LH_P3_0_5) _lh_elt_LH_P3_1_6) _lh_elt_LH_P3_1_5) _lh_elt_LH_P3_2_6) _lh_elt_LH_P3_2_5))))) in
            (fun _lh_zipWith3_LH_C_0_9 _lh_zipWith3_LH_C_1_9 _lh_zipWith3_arg1_8 _lh_zipWith3_arg4_6 -> 
              (let rec _lh_matchIdent_8 = _lh_zipWith3_arg4_6 in
                (((((_lh_matchIdent_8 _lh_zipWith3_LH_C_0_9) _lh_zipWith3_LH_C_0_8) _lh_zipWith3_LH_C_1_9) _lh_zipWith3_LH_C_1_8) _lh_zipWith3_arg1_8)))))))))
and shiftl__d2__d0 _lh_shiftl_arg1_0 _lh_shiftl_arg2_0 =
  ((mappend__d9__d0 (tail__d2__d0 _lh_shiftl_arg2_0)) (let rec _lh_zip3_LH_C_1_0 = (fun _lh_zip3_LH_C_0_0 _lh_zip3_LH_C_0_1 _lh_zip3_LH_C_1_1 _lh_zip3_LH_C_1_2 _lh_zipWith3_LH_C_0_0 _lh_zipWith3_LH_C_0_1 _lh_zipWith3_LH_C_1_0 _lh_zipWith3_LH_C_1_1 _lh_zipWith3_arg1_0 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_2 = _lh_shiftl_arg1_0 in
      (fun _lh_zip3_LH_C_0_3 _lh_zip3_LH_C_0_4 _lh_zip3_LH_C_1_3 _lh_zip3_LH_C_1_4 -> 
        (let rec _lh_zipWith3_LH_C_1_2 = (((zip3__d2__d0 _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_0) in
          (let rec _lh_zipWith3_LH_C_0_2 = (let rec _lh_elt_LH_P3_2_0 = _lh_zip3_LH_C_0_2 in
            (let rec _lh_elt_LH_P3_1_0 = _lh_zip3_LH_C_0_4 in
              (let rec _lh_elt_LH_P3_0_0 = _lh_zip3_LH_C_0_3 in
                (fun _lh_elt_LH_P3_0_1 _lh_elt_LH_P3_0_2 _lh_elt_LH_P3_1_1 _lh_elt_LH_P3_1_2 _lh_elt_LH_P3_2_1 _lh_elt_LH_P3_2_2 -> 
                  (let rec tot_0 = (((((((_lh_elt_LH_P3_0_1 + _lh_elt_LH_P3_1_1) + _lh_elt_LH_P3_2_1) + _lh_elt_LH_P3_0_2) + _lh_elt_LH_P3_2_2) + _lh_elt_LH_P3_0_0) + _lh_elt_LH_P3_1_0) + _lh_elt_LH_P3_2_0) in
                    (if ((tot_0 < 2) || (tot_0 > 3)) then
                      0
                    else
                      (if (tot_0 = 3) then
                        1
                      else
                        _lh_elt_LH_P3_1_2))))))) in
            (fun _lh_zipWith3_LH_C_0_3 _lh_zipWith3_LH_C_0_4 _lh_zipWith3_LH_C_1_3 _lh_zipWith3_LH_C_1_4 _lh_zipWith3_arg1_1 -> 
              (`LH_C((((_lh_zipWith3_arg1_1 _lh_zipWith3_LH_C_0_3) _lh_zipWith3_LH_C_0_4) _lh_zipWith3_LH_C_0_2), ((((zipWith3__d0__d0 _lh_zipWith3_arg1_1) _lh_zipWith3_LH_C_1_3) _lh_zipWith3_LH_C_1_4) _lh_zipWith3_LH_C_1_2))))))))))
and shiftl__d3__d0 _lh_shiftl_arg1_3 _lh_shiftl_arg2_3 =
  ((mappend__d1_d1__d0 (tail__d3__d0 _lh_shiftl_arg2_3)) (let rec _lh_zip3_LH_C_1_3_2 = (fun _lh_zip3_LH_C_0_3_2 _lh_zip3_LH_C_0_3_3 _lh_zip3_LH_C_1_3_3 _lh_zip3_LH_C_1_3_4 f_2_8 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_3_4 = _lh_shiftl_arg1_3 in
      (fun _lh_zip3_LH_C_0_3_5 _lh_zip3_LH_C_0_3_6 _lh_zip3_LH_C_1_3_5 _lh_zip3_LH_C_1_3_6 -> 
        (let rec t_1_3_1 = (((zip3__d3__d0 _lh_zip3_LH_C_1_3_5) _lh_zip3_LH_C_1_3_6) _lh_zip3_LH_C_1_3_2) in
          (let rec h_1_3_1 = (let rec _lh_row_LH_P3_2_1 = _lh_zip3_LH_C_0_3_4 in
            (let rec _lh_row_LH_P3_1_1 = _lh_zip3_LH_C_0_3_6 in
              (let rec _lh_row_LH_P3_0_1 = _lh_zip3_LH_C_0_3_5 in
                (fun _lh_dummy_4 -> 
                  ((((zipWith3__d0__d0 elt__d0__d0) ((shift__d0__d0 0) _lh_row_LH_P3_0_1)) ((shift__d1__d0 0) _lh_row_LH_P3_1_1)) ((shift__d2__d0 0) _lh_row_LH_P3_2_1)))))) in
            (fun f_2_9 -> 
              (`LH_C((f_2_9 h_1_3_1), ((map__d2__d0 f_2_9) t_1_3_1))))))))))
and shiftr__d0__d0 _lh_shiftr_arg1_1 _lh_shiftr_arg2_1 =
  ((mappend__d6__d0 (let rec t_1_2_7 = (fun ys_9_2 -> 
    ys_9_2) in
    (let rec h_1_2_7 = _lh_shiftr_arg1_1 in
      (fun ys_9_3 -> 
        (let rec _lh_zip3_LH_C_1_2_8 = ((mappend__d6__d0 t_1_2_7) ys_9_3) in
          (let rec _lh_zip3_LH_C_0_2_8 = h_1_2_7 in
            (fun _lh_zip3_arg2_6 _lh_zip3_arg3_6 -> 
              (let rec _lh_matchIdent_1_3 = _lh_zip3_arg2_6 in
                (match _lh_matchIdent_1_3 with
                  | `LH_C(_lh_zip3_LH_C_0_2_9, _lh_zip3_LH_C_1_2_9) -> 
                    (let rec _lh_matchIdent_1_4 = _lh_zip3_arg3_6 in
                      ((((_lh_matchIdent_1_4 _lh_zip3_LH_C_0_2_8) _lh_zip3_LH_C_0_2_9) _lh_zip3_LH_C_1_2_8) _lh_zip3_LH_C_1_2_9))
                  | `LH_N -> 
                    (fun _lh_zipWith3_arg1_1_0 _lh_zipWith3_arg3_5 _lh_zipWith3_arg4_8 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d0__d0 _lh_shiftr_arg2_1))
and shiftr__d1__d0 _lh_shiftr_arg1_3 _lh_shiftr_arg2_3 =
  ((mappend__d8__d0 (let rec t_1_3_3 = (fun ys_9_6 -> 
    ys_9_6) in
    (let rec h_1_3_3 = _lh_shiftr_arg1_3 in
      (fun ys_9_7 -> 
        (let rec _lh_zip3_LH_C_1_4_1 = ((mappend__d8__d0 t_1_3_3) ys_9_7) in
          (let rec _lh_zip3_LH_C_0_4_1 = h_1_3_3 in
            (fun _lh_zip3_arg2_1_2 _lh_zip3_arg3_1_2 -> 
              (let rec _lh_matchIdent_2_1 = _lh_zip3_arg2_1_2 in
                (match _lh_matchIdent_2_1 with
                  | `LH_C(_lh_zip3_LH_C_0_4_2, _lh_zip3_LH_C_1_4_2) -> 
                    (let rec _lh_matchIdent_2_2 = _lh_zip3_arg3_1_2 in
                      ((((_lh_matchIdent_2_2 _lh_zip3_LH_C_0_4_2) _lh_zip3_LH_C_0_4_1) _lh_zip3_LH_C_1_4_2) _lh_zip3_LH_C_1_4_1))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_1_6 _lh_zipWith3_LH_C_1_1_6 _lh_zipWith3_arg1_1_4 _lh_zipWith3_arg4_1_1 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d1__d0 _lh_shiftr_arg2_3))
and shiftr__d2__d0 _lh_shiftr_arg1_2 _lh_shiftr_arg2_2 =
  ((mappend__d1_d0__d0 (let rec t_1_3_2 = (fun ys_9_4 -> 
    ys_9_4) in
    (let rec h_1_3_2 = _lh_shiftr_arg1_2 in
      (fun ys_9_5 -> 
        (let rec _lh_zip3_LH_C_1_3_7 = ((mappend__d1_d0__d0 t_1_3_2) ys_9_5) in
          (let rec _lh_zip3_LH_C_0_3_7 = h_1_3_2 in
            (fun _lh_zip3_arg2_9 _lh_zip3_arg3_9 -> 
              (let rec _lh_matchIdent_1_7 = _lh_zip3_arg2_9 in
                (match _lh_matchIdent_1_7 with
                  | `LH_C(_lh_zip3_LH_C_0_3_8, _lh_zip3_LH_C_1_3_8) -> 
                    (let rec _lh_matchIdent_1_8 = _lh_zip3_arg3_9 in
                      ((((_lh_matchIdent_1_8 _lh_zip3_LH_C_0_3_7) _lh_zip3_LH_C_0_3_8) _lh_zip3_LH_C_1_3_7) _lh_zip3_LH_C_1_3_8))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_1_4 _lh_zipWith3_LH_C_0_1_5 _lh_zipWith3_LH_C_1_1_4 _lh_zipWith3_LH_C_1_1_5 _lh_zipWith3_arg1_1_3 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d2__d0 _lh_shiftr_arg2_2))
and shiftr__d3__d0 _lh_shiftr_arg1_0 _lh_shiftr_arg2_0 =
  ((mappend__d1_d2__d0 (let rec t_1_0_6 = (fun ys_6_6 -> 
    ys_6_6) in
    (let rec h_1_0_6 = _lh_shiftr_arg1_0 in
      (fun ys_6_7 -> 
        (let rec _lh_zip3_LH_C_1_2_3 = ((mappend__d1_d2__d0 t_1_0_6) ys_6_7) in
          (let rec _lh_zip3_LH_C_0_2_3 = h_1_0_6 in
            (fun _lh_zip3_arg2_4 _lh_zip3_arg3_4 -> 
              (let rec _lh_matchIdent_9 = _lh_zip3_arg2_4 in
                (match _lh_matchIdent_9 with
                  | `LH_C(_lh_zip3_LH_C_0_2_4, _lh_zip3_LH_C_1_2_4) -> 
                    (let rec _lh_matchIdent_1_0 = _lh_zip3_arg3_4 in
                      ((((_lh_matchIdent_1_0 _lh_zip3_LH_C_0_2_3) _lh_zip3_LH_C_0_2_4) _lh_zip3_LH_C_1_2_3) _lh_zip3_LH_C_1_2_4))
                  | `LH_N -> 
                    (fun f_1_9 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d3__d0 _lh_shiftr_arg2_0))
and star__d0__d0 _lh_star_arg1_0 =
  (match _lh_star_arg1_0 with
    | 0 -> 
      (let rec t_1_0_9 = (let rec t_1_1_0 = (fun ys_7_1 -> 
        ys_7_1) in
        (let rec h_1_0_9 = ' ' in
          (fun ys_7_2 -> 
            (let rec t_1_1_1 = ((mappend__d0__d0 t_1_1_0) ys_7_2) in
              (let rec h_1_1_0 = h_1_0_9 in
                (fun ys_7_3 -> 
                  (let rec t_1_1_2 = ((mappend__d2__d0 t_1_1_1) ys_7_3) in
                    (let rec h_1_1_1 = h_1_1_0 in
                      (fun ys_7_4 -> 
                        (`LH_C(h_1_1_1, ((mappend__d1__d0 t_1_1_2) ys_7_4)))))))))))) in
        (let rec h_1_1_2 = ' ' in
          (fun ys_7_5 -> 
            (let rec t_1_1_3 = ((mappend__d0__d0 t_1_0_9) ys_7_5) in
              (let rec h_1_1_3 = h_1_1_2 in
                (fun ys_7_6 -> 
                  (let rec t_1_1_4 = ((mappend__d2__d0 t_1_1_3) ys_7_6) in
                    (let rec h_1_1_4 = h_1_1_3 in
                      (fun ys_7_7 -> 
                        (`LH_C(h_1_1_4, ((mappend__d1__d0 t_1_1_4) ys_7_7))))))))))))
    | 1 -> 
      (let rec t_1_1_5 = (let rec t_1_1_6 = (fun ys_7_8 -> 
        ys_7_8) in
        (let rec h_1_1_5 = 'o' in
          (fun ys_7_9 -> 
            (let rec t_1_1_7 = ((mappend__d0__d0 t_1_1_6) ys_7_9) in
              (let rec h_1_1_6 = h_1_1_5 in
                (fun ys_8_0 -> 
                  (let rec t_1_1_8 = ((mappend__d2__d0 t_1_1_7) ys_8_0) in
                    (let rec h_1_1_7 = h_1_1_6 in
                      (fun ys_8_1 -> 
                        (`LH_C(h_1_1_7, ((mappend__d1__d0 t_1_1_8) ys_8_1)))))))))))) in
        (let rec h_1_1_8 = ' ' in
          (fun ys_8_2 -> 
            (let rec t_1_1_9 = ((mappend__d0__d0 t_1_1_5) ys_8_2) in
              (let rec h_1_1_9 = h_1_1_8 in
                (fun ys_8_3 -> 
                  (let rec t_1_2_0 = ((mappend__d2__d0 t_1_1_9) ys_8_3) in
                    (let rec h_1_2_0 = h_1_1_9 in
                      (fun ys_8_4 -> 
                        (`LH_C(h_1_2_0, ((mappend__d1__d0 t_1_2_0) ys_8_4))))))))))))
    | _ -> 
      (failwith "error"))
and start__d0__d0 =
  (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (fun ys_7 -> 
    ys_7) in
    (let rec h_7 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (fun ys_8 -> 
      ys_8) in
      (let rec h_8 = 0 in
        (fun ys_9 -> 
          (let rec t_4_9 = ((mappend__d1_d3__d0 t_4_8) ys_9) in
            (let rec h_9 = h_8 in
              (fun n_2 -> 
                (`LH_C(h_9, ((take__d1__d0 (n_2 - 1)) t_4_9))))))))) in
      (let rec h_1_0 = 1 in
        (fun ys_1_0 -> 
          (let rec t_5_0 = ((mappend__d1_d3__d0 t_4_7) ys_1_0) in
            (let rec h_1_1 = h_1_0 in
              (fun n_3 -> 
                (`LH_C(h_1_1, ((take__d1__d0 (n_3 - 1)) t_5_0))))))))) in
      (let rec h_1_2 = 1 in
        (fun ys_1_1 -> 
          (let rec t_5_1 = ((mappend__d1_d3__d0 t_4_6) ys_1_1) in
            (let rec h_1_3 = h_1_2 in
              (fun n_4 -> 
                (`LH_C(h_1_3, ((take__d1__d0 (n_4 - 1)) t_5_1))))))))) in
      (let rec h_1_4 = 1 in
        (fun ys_1_2 -> 
          (let rec t_5_2 = ((mappend__d1_d3__d0 t_4_5) ys_1_2) in
            (let rec h_1_5 = h_1_4 in
              (fun n_5 -> 
                (`LH_C(h_1_5, ((take__d1__d0 (n_5 - 1)) t_5_2))))))))) in
      (let rec h_1_6 = 1 in
        (fun ys_1_3 -> 
          (let rec t_5_3 = ((mappend__d1_d3__d0 t_4_4) ys_1_3) in
            (let rec h_1_7 = h_1_6 in
              (fun n_6 -> 
                (`LH_C(h_1_7, ((take__d1__d0 (n_6 - 1)) t_5_3))))))))) in
      (let rec h_1_8 = 1 in
        (fun ys_1_4 -> 
          (let rec t_5_4 = ((mappend__d1_d3__d0 t_4_3) ys_1_4) in
            (let rec h_1_9 = h_1_8 in
              (fun n_7 -> 
                (`LH_C(h_1_9, ((take__d1__d0 (n_7 - 1)) t_5_4))))))))) in
      (let rec h_2_0 = 0 in
        (fun ys_1_5 -> 
          (let rec t_5_5 = ((mappend__d1_d3__d0 t_4_2) ys_1_5) in
            (let rec h_2_1 = h_2_0 in
              (fun n_8 -> 
                (`LH_C(h_2_1, ((take__d1__d0 (n_8 - 1)) t_5_5))))))))) in
      (let rec h_2_2 = 1 in
        (fun ys_1_6 -> 
          (let rec t_5_6 = ((mappend__d1_d3__d0 t_4_1) ys_1_6) in
            (let rec h_2_3 = h_2_2 in
              (fun n_9 -> 
                (`LH_C(h_2_3, ((take__d1__d0 (n_9 - 1)) t_5_6))))))))) in
      (let rec h_2_4 = 1 in
        (fun ys_1_7 -> 
          (let rec t_5_7 = ((mappend__d1_d3__d0 t_4_0) ys_1_7) in
            (let rec h_2_5 = h_2_4 in
              (fun n_1_0 -> 
                (`LH_C(h_2_5, ((take__d1__d0 (n_1_0 - 1)) t_5_7))))))))) in
      (let rec h_2_6 = 1 in
        (fun ys_1_8 -> 
          (let rec t_5_8 = ((mappend__d1_d3__d0 t_3_9) ys_1_8) in
            (let rec h_2_7 = h_2_6 in
              (fun n_1_1 -> 
                (`LH_C(h_2_7, ((take__d1__d0 (n_1_1 - 1)) t_5_8))))))))) in
      (let rec h_2_8 = 1 in
        (fun ys_1_9 -> 
          (let rec t_5_9 = ((mappend__d1_d3__d0 t_3_8) ys_1_9) in
            (let rec h_2_9 = h_2_8 in
              (fun n_1_2 -> 
                (`LH_C(h_2_9, ((take__d1__d0 (n_1_2 - 1)) t_5_9))))))))) in
      (let rec h_3_0 = 1 in
        (fun ys_2_0 -> 
          (let rec t_6_0 = ((mappend__d1_d3__d0 t_3_7) ys_2_0) in
            (let rec h_3_1 = h_3_0 in
              (fun n_1_3 -> 
                (`LH_C(h_3_1, ((take__d1__d0 (n_1_3 - 1)) t_6_0))))))))) in
      (let rec h_3_2 = 0 in
        (fun ys_2_1 -> 
          (let rec t_6_1 = ((mappend__d1_d3__d0 t_3_6) ys_2_1) in
            (let rec h_3_3 = h_3_2 in
              (fun n_1_4 -> 
                (`LH_C(h_3_3, ((take__d1__d0 (n_1_4 - 1)) t_6_1))))))))) in
      (let rec h_3_4 = 1 in
        (fun ys_2_2 -> 
          (let rec t_6_2 = ((mappend__d1_d3__d0 t_3_5) ys_2_2) in
            (let rec h_3_5 = h_3_4 in
              (fun n_1_5 -> 
                (`LH_C(h_3_5, ((take__d1__d0 (n_1_5 - 1)) t_6_2))))))))) in
      (let rec h_3_6 = 1 in
        (fun ys_2_3 -> 
          (let rec t_6_3 = ((mappend__d1_d3__d0 t_3_4) ys_2_3) in
            (let rec h_3_7 = h_3_6 in
              (fun n_1_6 -> 
                (`LH_C(h_3_7, ((take__d1__d0 (n_1_6 - 1)) t_6_3))))))))) in
      (let rec h_3_8 = 1 in
        (fun ys_2_4 -> 
          (let rec t_6_4 = ((mappend__d1_d3__d0 t_3_3) ys_2_4) in
            (let rec h_3_9 = h_3_8 in
              (fun n_1_7 -> 
                (`LH_C(h_3_9, ((take__d1__d0 (n_1_7 - 1)) t_6_4))))))))) in
      (let rec h_4_0 = 1 in
        (fun ys_2_5 -> 
          (let rec t_6_5 = ((mappend__d1_d3__d0 t_3_2) ys_2_5) in
            (let rec h_4_1 = h_4_0 in
              (fun n_1_8 -> 
                (`LH_C(h_4_1, ((take__d1__d0 (n_1_8 - 1)) t_6_5))))))))) in
      (let rec h_4_2 = 1 in
        (fun ys_2_6 -> 
          (let rec t_6_6 = ((mappend__d1_d3__d0 t_3_1) ys_2_6) in
            (let rec h_4_3 = h_4_2 in
              (fun n_1_9 -> 
                (`LH_C(h_4_3, ((take__d1__d0 (n_1_9 - 1)) t_6_6))))))))) in
      (let rec h_4_4 = 0 in
        (fun ys_2_7 -> 
          (let rec t_6_7 = ((mappend__d1_d3__d0 t_3_0) ys_2_7) in
            (let rec h_4_5 = h_4_4 in
              (fun n_2_0 -> 
                (`LH_C(h_4_5, ((take__d1__d0 (n_2_0 - 1)) t_6_7))))))))) in
      (let rec h_4_6 = 1 in
        (fun ys_2_8 -> 
          (let rec t_6_8 = ((mappend__d1_d3__d0 t_2_9) ys_2_8) in
            (let rec h_4_7 = h_4_6 in
              (fun n_2_1 -> 
                (`LH_C(h_4_7, ((take__d1__d0 (n_2_1 - 1)) t_6_8))))))))) in
      (let rec h_4_8 = 1 in
        (fun ys_2_9 -> 
          (let rec t_6_9 = ((mappend__d1_d3__d0 t_2_8) ys_2_9) in
            (let rec h_4_9 = h_4_8 in
              (fun n_2_2 -> 
                (`LH_C(h_4_9, ((take__d1__d0 (n_2_2 - 1)) t_6_9))))))))) in
      (let rec h_5_0 = 1 in
        (fun ys_3_0 -> 
          (let rec t_7_0 = ((mappend__d1_d3__d0 t_2_7) ys_3_0) in
            (let rec h_5_1 = h_5_0 in
              (fun n_2_3 -> 
                (`LH_C(h_5_1, ((take__d1__d0 (n_2_3 - 1)) t_7_0))))))))) in
      (let rec h_5_2 = 1 in
        (fun ys_3_1 -> 
          (let rec t_7_1 = ((mappend__d1_d3__d0 t_2_6) ys_3_1) in
            (let rec h_5_3 = h_5_2 in
              (fun n_2_4 -> 
                (`LH_C(h_5_3, ((take__d1__d0 (n_2_4 - 1)) t_7_1))))))))) in
      (let rec h_5_4 = 1 in
        (fun ys_3_2 -> 
          (let rec t_7_2 = ((mappend__d1_d3__d0 t_2_5) ys_3_2) in
            (let rec h_5_5 = h_5_4 in
              (fun n_2_5 -> 
                (`LH_C(h_5_5, ((take__d1__d0 (n_2_5 - 1)) t_7_2))))))))) in
      (let rec h_5_6 = 0 in
        (fun ys_3_3 -> 
          (let rec t_7_3 = ((mappend__d1_d3__d0 t_2_4) ys_3_3) in
            (let rec h_5_7 = h_5_6 in
              (fun n_2_6 -> 
                (`LH_C(h_5_7, ((take__d1__d0 (n_2_6 - 1)) t_7_3))))))))) in
      (let rec h_5_8 = 0 in
        (fun ys_3_4 -> 
          (let rec t_7_4 = ((mappend__d1_d3__d0 t_2_3) ys_3_4) in
            (let rec h_5_9 = h_5_8 in
              (fun n_2_7 -> 
                (`LH_C(h_5_9, ((take__d1__d0 (n_2_7 - 1)) t_7_4))))))))) in
      (let rec h_6_0 = 0 in
        (fun ys_3_5 -> 
          (let rec t_7_5 = ((mappend__d1_d3__d0 t_2_2) ys_3_5) in
            (let rec h_6_1 = h_6_0 in
              (fun n_2_8 -> 
                (`LH_C(h_6_1, ((take__d1__d0 (n_2_8 - 1)) t_7_5))))))))) in
      (fun ys_3_6 -> 
        (let rec t_7_6 = ((mappend__d1_d4__d0 t_2_1) ys_3_6) in
          (let rec h_6_2 = h_7 in
            (fun f_4 -> 
              (let rec t_7_7 = ((map__d4__d0 f_4) t_7_6) in
                (let rec h_6_3 = (f_4 h_6_2) in
                  (fun n_2_9 -> 
                    (`LH_C(h_6_3, ((take__d0__d0 (n_2_9 - 1)) t_7_7)))))))))))) in
    (let rec h_6_4 = (fun ys_3_7 -> 
      ys_3_7) in
      (fun ys_3_8 -> 
        (let rec t_7_8 = ((mappend__d1_d4__d0 t_2_0) ys_3_8) in
          (let rec h_6_5 = h_6_4 in
            (fun f_5 -> 
              (let rec t_7_9 = ((map__d4__d0 f_5) t_7_8) in
                (let rec h_6_6 = (f_5 h_6_5) in
                  (fun n_3_0 -> 
                    (`LH_C(h_6_6, ((take__d0__d0 (n_3_0 - 1)) t_7_9)))))))))))) in
    (let rec h_6_7 = (fun ys_3_9 -> 
      ys_3_9) in
      (fun ys_4_0 -> 
        (let rec t_8_0 = ((mappend__d1_d4__d0 t_1_9) ys_4_0) in
          (let rec h_6_8 = h_6_7 in
            (fun f_6 -> 
              (let rec t_8_1 = ((map__d4__d0 f_6) t_8_0) in
                (let rec h_6_9 = (f_6 h_6_8) in
                  (fun n_3_1 -> 
                    (`LH_C(h_6_9, ((take__d0__d0 (n_3_1 - 1)) t_8_1)))))))))))) in
    (let rec h_7_0 = (fun ys_4_1 -> 
      ys_4_1) in
      (fun ys_4_2 -> 
        (let rec t_8_2 = ((mappend__d1_d4__d0 t_1_8) ys_4_2) in
          (let rec h_7_1 = h_7_0 in
            (fun f_7 -> 
              (let rec t_8_3 = ((map__d4__d0 f_7) t_8_2) in
                (let rec h_7_2 = (f_7 h_7_1) in
                  (fun n_3_2 -> 
                    (`LH_C(h_7_2, ((take__d0__d0 (n_3_2 - 1)) t_8_3)))))))))))) in
    (let rec h_7_3 = (fun ys_4_3 -> 
      ys_4_3) in
      (fun ys_4_4 -> 
        (let rec t_8_4 = ((mappend__d1_d4__d0 t_1_7) ys_4_4) in
          (let rec h_7_4 = h_7_3 in
            (fun f_8 -> 
              (let rec t_8_5 = ((map__d4__d0 f_8) t_8_4) in
                (let rec h_7_5 = (f_8 h_7_4) in
                  (fun n_3_3 -> 
                    (`LH_C(h_7_5, ((take__d0__d0 (n_3_3 - 1)) t_8_5)))))))))))) in
    (let rec h_7_6 = (fun ys_4_5 -> 
      ys_4_5) in
      (fun ys_4_6 -> 
        (let rec t_8_6 = ((mappend__d1_d4__d0 t_1_6) ys_4_6) in
          (let rec h_7_7 = h_7_6 in
            (fun f_9 -> 
              (let rec t_8_7 = ((map__d4__d0 f_9) t_8_6) in
                (let rec h_7_8 = (f_9 h_7_7) in
                  (fun n_3_4 -> 
                    (`LH_C(h_7_8, ((take__d0__d0 (n_3_4 - 1)) t_8_7)))))))))))) in
    (let rec h_7_9 = (fun ys_4_7 -> 
      ys_4_7) in
      (fun ys_4_8 -> 
        (let rec t_8_8 = ((mappend__d1_d4__d0 t_1_5) ys_4_8) in
          (let rec h_8_0 = h_7_9 in
            (fun f_1_0 -> 
              (let rec t_8_9 = ((map__d4__d0 f_1_0) t_8_8) in
                (let rec h_8_1 = (f_1_0 h_8_0) in
                  (fun n_3_5 -> 
                    (`LH_C(h_8_1, ((take__d0__d0 (n_3_5 - 1)) t_8_9)))))))))))) in
    (let rec h_8_2 = (fun ys_4_9 -> 
      ys_4_9) in
      (fun ys_5_0 -> 
        (let rec t_9_0 = ((mappend__d1_d4__d0 t_1_4) ys_5_0) in
          (let rec h_8_3 = h_8_2 in
            (fun f_1_1 -> 
              (let rec t_9_1 = ((map__d4__d0 f_1_1) t_9_0) in
                (let rec h_8_4 = (f_1_1 h_8_3) in
                  (fun n_3_6 -> 
                    (`LH_C(h_8_4, ((take__d0__d0 (n_3_6 - 1)) t_9_1)))))))))))) in
    (let rec h_8_5 = (fun ys_5_1 -> 
      ys_5_1) in
      (fun ys_5_2 -> 
        (let rec t_9_2 = ((mappend__d1_d4__d0 t_1_3) ys_5_2) in
          (let rec h_8_6 = h_8_5 in
            (fun f_1_2 -> 
              (let rec t_9_3 = ((map__d4__d0 f_1_2) t_9_2) in
                (let rec h_8_7 = (f_1_2 h_8_6) in
                  (fun n_3_7 -> 
                    (`LH_C(h_8_7, ((take__d0__d0 (n_3_7 - 1)) t_9_3)))))))))))) in
    (let rec h_8_8 = (fun ys_5_3 -> 
      ys_5_3) in
      (fun ys_5_4 -> 
        (let rec t_9_4 = ((mappend__d1_d4__d0 t_1_2) ys_5_4) in
          (let rec h_8_9 = h_8_8 in
            (fun f_1_3 -> 
              (let rec t_9_5 = ((map__d4__d0 f_1_3) t_9_4) in
                (let rec h_9_0 = (f_1_3 h_8_9) in
                  (fun n_3_8 -> 
                    (`LH_C(h_9_0, ((take__d0__d0 (n_3_8 - 1)) t_9_5)))))))))))) in
    (let rec h_9_1 = (fun ys_5_5 -> 
      ys_5_5) in
      (fun ys_5_6 -> 
        (let rec t_9_6 = ((mappend__d1_d4__d0 t_1_1) ys_5_6) in
          (let rec h_9_2 = h_9_1 in
            (fun f_1_4 -> 
              (let rec t_9_7 = ((map__d4__d0 f_1_4) t_9_6) in
                (let rec h_9_3 = (f_1_4 h_9_2) in
                  (fun n_3_9 -> 
                    (`LH_C(h_9_3, ((take__d0__d0 (n_3_9 - 1)) t_9_7)))))))))))) in
    (let rec h_9_4 = (fun ys_5_7 -> 
      ys_5_7) in
      (fun ys_5_8 -> 
        (let rec t_9_8 = ((mappend__d1_d4__d0 t_1_0) ys_5_8) in
          (let rec h_9_5 = h_9_4 in
            (fun f_1_5 -> 
              (let rec t_9_9 = ((map__d4__d0 f_1_5) t_9_8) in
                (let rec h_9_6 = (f_1_5 h_9_5) in
                  (fun n_4_0 -> 
                    (`LH_C(h_9_6, ((take__d0__d0 (n_4_0 - 1)) t_9_9)))))))))))) in
    (let rec h_9_7 = (fun ys_5_9 -> 
      ys_5_9) in
      (fun ys_6_0 -> 
        (let rec t_1_0_0 = ((mappend__d1_d4__d0 t_9) ys_6_0) in
          (let rec h_9_8 = h_9_7 in
            (fun f_1_6 -> 
              (let rec t_1_0_1 = ((map__d4__d0 f_1_6) t_1_0_0) in
                (let rec h_9_9 = (f_1_6 h_9_8) in
                  (fun n_4_1 -> 
                    (`LH_C(h_9_9, ((take__d0__d0 (n_4_1 - 1)) t_1_0_1)))))))))))) in
    (let rec h_1_0_0 = (fun ys_6_1 -> 
      ys_6_1) in
      (fun ys_6_2 -> 
        (let rec t_1_0_2 = ((mappend__d1_d4__d0 t_8) ys_6_2) in
          (let rec h_1_0_1 = h_1_0_0 in
            (fun f_1_7 -> 
              (let rec t_1_0_3 = ((map__d4__d0 f_1_7) t_1_0_2) in
                (let rec h_1_0_2 = (f_1_7 h_1_0_1) in
                  (fun n_4_2 -> 
                    (`LH_C(h_1_0_2, ((take__d0__d0 (n_4_2 - 1)) t_1_0_3)))))))))))) in
    (let rec h_1_0_3 = (fun ys_6_3 -> 
      ys_6_3) in
      (fun ys_6_4 -> 
        (let rec t_1_0_4 = ((mappend__d1_d4__d0 t_7) ys_6_4) in
          (let rec h_1_0_4 = h_1_0_3 in
            (fun f_1_8 -> 
              (let rec t_1_0_5 = ((map__d4__d0 f_1_8) t_1_0_4) in
                (let rec h_1_0_5 = (f_1_8 h_1_0_4) in
                  (fun n_4_3 -> 
                    (`LH_C(h_1_0_5, ((take__d0__d0 (n_4_3 - 1)) t_1_0_5))))))))))))
and testLife_nofib__d0__d0 _lh_testLife_nofib_arg1_0 =
  (generations__d0__d0 _lh_testLife_nofib_arg1_0);;

(* lumberhack_pop_out *)
let rec concat__d0__d0__d0 lss_1 =
  (lss_1 99);;
let rec concat__d0__d0__d1 lss_2 =
  (lss_2 99);;
let rec copy__d3__d0__d0 _lh_copy_arg1_7 _lh_copy_arg2_7 =
  (match _lh_copy_arg1_7 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_7, ((copy__d3__d0__d0 (_lh_copy_arg1_7 - 1)) _lh_copy_arg2_7))));;
let rec disp__d0__d0__d0 _lh_disp_arg1_1 =
  (_lh_disp_arg1_1 99);;
let rec elt__d0__d0__d0 _lh_elt_arg1_1 _lh_elt_arg2_4 _lh_elt_arg3_6 =
  ((_lh_elt_arg1_1 _lh_elt_arg2_4) _lh_elt_arg3_6);;
let rec elt__d0__d0__d1 _lh_elt_arg1_2 _lh_elt_arg2_6 _lh_elt_arg3_1_2 =
  ((_lh_elt_arg1_2 _lh_elt_arg2_6) _lh_elt_arg3_1_2);;
let rec foldr__d0__d0__d0 f_4_9 i_5 ls_4_5 =
  ((ls_4_5 f_4_9) i_5);;
let rec foldr__d0__d0__d1 f_5_9 i_6 ls_6_1 =
  ((ls_6_1 f_5_9) i_6);;
let rec init__d0__d0__d0 _lh_init_arg1_4 =
  (match _lh_init_arg1_4 with
    | `LH_C(_lh_init_LH_C_0_4, _lh_init_LH_C_1_4) -> 
      (match _lh_init_LH_C_1_4 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_2_3 _lh_zip3_arg3_2_3 _lh_zipWith3_arg1_2_6 _lh_zipWith3_arg3_1_0 _lh_zipWith3_arg4_1_7 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_6_5 = (init__d0__d0__d0 _lh_init_LH_C_1_4) in
            (let rec _lh_zip3_LH_C_0_6_5 = _lh_init_LH_C_0_4 in
              (fun _lh_zip3_arg2_2_4 _lh_zip3_arg3_2_4 -> 
                (let rec _lh_matchIdent_3_7 = _lh_zip3_arg2_2_4 in
                  (match _lh_matchIdent_3_7 with
                    | `LH_C(_lh_zip3_LH_C_0_6_6, _lh_zip3_LH_C_1_6_6) -> 
                      (let rec _lh_matchIdent_3_8 = _lh_zip3_arg3_2_4 in
                        ((((_lh_matchIdent_3_8 _lh_zip3_LH_C_0_6_5) _lh_zip3_LH_C_0_6_6) _lh_zip3_LH_C_1_6_5) _lh_zip3_LH_C_1_6_6))
                    | `LH_N -> 
                      (fun _lh_zipWith3_arg1_2_7 _lh_zipWith3_arg3_1_1 _lh_zipWith3_arg4_1_8 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d0__d0__d1 _lh_init_arg1_1_0 =
  (match _lh_init_arg1_1_0 with
    | `LH_C(_lh_init_LH_C_0_1_0, _lh_init_LH_C_1_1_0) -> 
      (match _lh_init_LH_C_1_1_0 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_5_1 _lh_zip3_arg3_5_1 _lh_zipWith3_arg1_5_2 _lh_zipWith3_arg3_1_9 _lh_zipWith3_arg4_3_7 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_1_1_2 = (init__d0__d0__d1 _lh_init_LH_C_1_1_0) in
            (let rec _lh_zip3_LH_C_0_1_1_2 = _lh_init_LH_C_0_1_0 in
              (fun _lh_zip3_arg2_5_2 _lh_zip3_arg3_5_2 -> 
                (let rec _lh_matchIdent_8_0 = _lh_zip3_arg2_5_2 in
                  (match _lh_matchIdent_8_0 with
                    | `LH_C(_lh_zip3_LH_C_0_1_1_3, _lh_zip3_LH_C_1_1_1_3) -> 
                      (let rec _lh_matchIdent_8_1 = _lh_zip3_arg3_5_2 in
                        ((((_lh_matchIdent_8_1 _lh_zip3_LH_C_0_1_1_2) _lh_zip3_LH_C_0_1_1_3) _lh_zip3_LH_C_1_1_1_2) _lh_zip3_LH_C_1_1_1_3))
                    | `LH_N -> 
                      (fun _lh_zipWith3_arg1_5_3 _lh_zipWith3_arg3_2_0 _lh_zipWith3_arg4_3_8 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d1__d0__d0 _lh_init_arg1_9 =
  (match _lh_init_arg1_9 with
    | `LH_C(_lh_init_LH_C_0_9, _lh_init_LH_C_1_9) -> 
      (match _lh_init_LH_C_1_9 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_4_8 _lh_zip3_arg3_4_8 _lh_zipWith3_LH_C_0_6_1 _lh_zipWith3_LH_C_1_6_1 _lh_zipWith3_arg1_4_9 _lh_zipWith3_arg4_3_4 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_1_0_7 = (init__d1__d0__d0 _lh_init_LH_C_1_9) in
            (let rec _lh_zip3_LH_C_0_1_0_7 = _lh_init_LH_C_0_9 in
              (fun _lh_zip3_arg2_4_9 _lh_zip3_arg3_4_9 -> 
                (let rec _lh_matchIdent_7_6 = _lh_zip3_arg2_4_9 in
                  (match _lh_matchIdent_7_6 with
                    | `LH_C(_lh_zip3_LH_C_0_1_0_8, _lh_zip3_LH_C_1_1_0_8) -> 
                      (let rec _lh_matchIdent_7_7 = _lh_zip3_arg3_4_9 in
                        ((((_lh_matchIdent_7_7 _lh_zip3_LH_C_0_1_0_8) _lh_zip3_LH_C_0_1_0_7) _lh_zip3_LH_C_1_1_0_8) _lh_zip3_LH_C_1_1_0_7))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_6_2 _lh_zipWith3_LH_C_1_6_2 _lh_zipWith3_arg1_5_0 _lh_zipWith3_arg4_3_5 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d1__d0__d1 _lh_init_arg1_6 =
  (match _lh_init_arg1_6 with
    | `LH_C(_lh_init_LH_C_0_6, _lh_init_LH_C_1_6) -> 
      (match _lh_init_LH_C_1_6 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_3_5 _lh_zip3_arg3_3_5 _lh_zipWith3_LH_C_0_4_8 _lh_zipWith3_LH_C_1_4_8 _lh_zipWith3_arg1_3_8 _lh_zipWith3_arg4_2_5 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_8_6 = (init__d1__d0__d1 _lh_init_LH_C_1_6) in
            (let rec _lh_zip3_LH_C_0_8_6 = _lh_init_LH_C_0_6 in
              (fun _lh_zip3_arg2_3_6 _lh_zip3_arg3_3_6 -> 
                (let rec _lh_matchIdent_5_8 = _lh_zip3_arg2_3_6 in
                  (match _lh_matchIdent_5_8 with
                    | `LH_C(_lh_zip3_LH_C_0_8_7, _lh_zip3_LH_C_1_8_7) -> 
                      (let rec _lh_matchIdent_5_9 = _lh_zip3_arg3_3_6 in
                        ((((_lh_matchIdent_5_9 _lh_zip3_LH_C_0_8_7) _lh_zip3_LH_C_0_8_6) _lh_zip3_LH_C_1_8_7) _lh_zip3_LH_C_1_8_6))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_4_9 _lh_zipWith3_LH_C_1_4_9 _lh_zipWith3_arg1_3_9 _lh_zipWith3_arg4_2_6 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d2__d0__d0 _lh_init_arg1_7 =
  (match _lh_init_arg1_7 with
    | `LH_C(_lh_init_LH_C_0_7, _lh_init_LH_C_1_7) -> 
      (match _lh_init_LH_C_1_7 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_3_7 _lh_zip3_arg3_3_7 _lh_zipWith3_LH_C_0_5_0 _lh_zipWith3_LH_C_0_5_1 _lh_zipWith3_LH_C_1_5_0 _lh_zipWith3_LH_C_1_5_1 _lh_zipWith3_arg1_4_0 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_8_8 = (init__d2__d0__d0 _lh_init_LH_C_1_7) in
            (let rec _lh_zip3_LH_C_0_8_8 = _lh_init_LH_C_0_7 in
              (fun _lh_zip3_arg2_3_8 _lh_zip3_arg3_3_8 -> 
                (let rec _lh_matchIdent_6_0 = _lh_zip3_arg2_3_8 in
                  (match _lh_matchIdent_6_0 with
                    | `LH_C(_lh_zip3_LH_C_0_8_9, _lh_zip3_LH_C_1_8_9) -> 
                      (let rec _lh_matchIdent_6_1 = _lh_zip3_arg3_3_8 in
                        ((((_lh_matchIdent_6_1 _lh_zip3_LH_C_0_8_8) _lh_zip3_LH_C_0_8_9) _lh_zip3_LH_C_1_8_8) _lh_zip3_LH_C_1_8_9))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_5_2 _lh_zipWith3_LH_C_0_5_3 _lh_zipWith3_LH_C_1_5_2 _lh_zipWith3_LH_C_1_5_3 _lh_zipWith3_arg1_4_1 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d2__d0__d1 _lh_init_arg1_5 =
  (match _lh_init_arg1_5 with
    | `LH_C(_lh_init_LH_C_0_5, _lh_init_LH_C_1_5) -> 
      (match _lh_init_LH_C_1_5 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_3_2 _lh_zip3_arg3_3_2 _lh_zipWith3_LH_C_0_3_9 _lh_zipWith3_LH_C_0_4_0 _lh_zipWith3_LH_C_1_3_9 _lh_zipWith3_LH_C_1_4_0 _lh_zipWith3_arg1_3_3 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_7_8 = (init__d2__d0__d1 _lh_init_LH_C_1_5) in
            (let rec _lh_zip3_LH_C_0_7_8 = _lh_init_LH_C_0_5 in
              (fun _lh_zip3_arg2_3_3 _lh_zip3_arg3_3_3 -> 
                (let rec _lh_matchIdent_5_3 = _lh_zip3_arg2_3_3 in
                  (match _lh_matchIdent_5_3 with
                    | `LH_C(_lh_zip3_LH_C_0_7_9, _lh_zip3_LH_C_1_7_9) -> 
                      (let rec _lh_matchIdent_5_4 = _lh_zip3_arg3_3_3 in
                        ((((_lh_matchIdent_5_4 _lh_zip3_LH_C_0_7_8) _lh_zip3_LH_C_0_7_9) _lh_zip3_LH_C_1_7_8) _lh_zip3_LH_C_1_7_9))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_4_1 _lh_zipWith3_LH_C_0_4_2 _lh_zipWith3_LH_C_1_4_1 _lh_zipWith3_LH_C_1_4_2 _lh_zipWith3_arg1_3_4 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d3__d0__d0 _lh_init_arg1_8 =
  (match _lh_init_arg1_8 with
    | `LH_C(_lh_init_LH_C_0_8, _lh_init_LH_C_1_8) -> 
      (match _lh_init_LH_C_1_8 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_4_5 _lh_zip3_arg3_4_5 f_6_4 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_1_0_5 = (init__d3__d0__d0 _lh_init_LH_C_1_8) in
            (let rec _lh_zip3_LH_C_0_1_0_5 = _lh_init_LH_C_0_8 in
              (fun _lh_zip3_arg2_4_6 _lh_zip3_arg3_4_6 -> 
                (let rec _lh_matchIdent_7_2 = _lh_zip3_arg2_4_6 in
                  (match _lh_matchIdent_7_2 with
                    | `LH_C(_lh_zip3_LH_C_0_1_0_6, _lh_zip3_LH_C_1_1_0_6) -> 
                      (let rec _lh_matchIdent_7_3 = _lh_zip3_arg3_4_6 in
                        ((((_lh_matchIdent_7_3 _lh_zip3_LH_C_0_1_0_5) _lh_zip3_LH_C_0_1_0_6) _lh_zip3_LH_C_1_1_0_5) _lh_zip3_LH_C_1_1_0_6))
                    | `LH_N -> 
                      (fun f_6_5 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec iterate__d0__d0__d0 f_5_3 x_1 =
  (lazy (`LH_C(x_1, ((iterate__d0__d0__d0 f_5_3) (f_5_3 x_1)))));;
let rec limit__d0__d0__d0 _lh_limit_arg1_1 =
  (let rec _lh_matchIdent_4_5 = (Lazy.force _lh_limit_arg1_1) in
    (match _lh_matchIdent_4_5 with
      | `LH_C(_lh_limit_LH_C_0_2, _lh_limit_LH_C_1_2) -> 
        (let rec _lh_matchIdent_4_6 = (Lazy.force _lh_limit_LH_C_1_2) in
          (match _lh_matchIdent_4_6 with
            | `LH_C(_lh_limit_LH_C_0_3, _lh_limit_LH_C_1_3) -> 
              (if (_lh_limit_LH_C_0_2 = _lh_limit_LH_C_0_3) then
                (let rec ty_3 = (fun xs_3_8 f_4_5 -> 
                  (`LH_N)) in
                  (let rec hy_3 = _lh_limit_LH_C_0_2 in
                    (fun xs_3_9 -> 
                      (((Lazy.force xs_3_9) hy_3) ty_3))))
              else
                (let rec ty_4 = (limit__d0__d0__d0 (lazy (`LH_C(_lh_limit_LH_C_0_3, _lh_limit_LH_C_1_3)))) in
                  (let rec hy_4 = _lh_limit_LH_C_0_2 in
                    (fun xs_4_0 -> 
                      (((Lazy.force xs_4_0) hy_4) ty_4)))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz__d0__d0__d0 f_5_5 ls_5_0 =
  (lazy ((Lazy.force ls_5_0) f_5_5));;
let rec map_lz__d0__d0__d1 f_8_3 ls_7_3 =
  (lazy ((Lazy.force ls_7_3) f_8_3));;
let rec map__d2__d0__d0 f_4_1 ls_2_4 =
  (ls_2_4 f_4_1);;
let rec map__d2__d0__d1 f_4_0 ls_2_3 =
  (ls_2_3 f_4_0);;
let rec map__d2__d0__d2 f_8_4 ls_7_5 =
  (ls_7_5 f_8_4);;
let rec map__d3__d0__d0 f_6_3 ls_6_3 =
  (ls_6_3 f_6_3);;
let rec map__d3__d0__d1 f_6_6 ls_6_5 =
  (ls_6_5 f_6_6);;
let rec map__d4__d0__d0 f_5_7 ls_5_6 =
  (ls_5_6 f_5_7);;
let rec map__d4__d0__d1 f_6_0 ls_6_2 =
  (ls_6_2 f_6_0);;
let rec map__d4__d0__d1_d0 f_3_9 ls_2_2 =
  (ls_2_2 f_3_9);;
let rec map__d4__d0__d1_d1 f_5_6 ls_5_3 =
  (ls_5_3 f_5_6);;
let rec map__d4__d0__d1_d2 f_8_8 ls_8_2 =
  (ls_8_2 f_8_8);;
let rec map__d4__d0__d1_d3 f_3_8 ls_2_1 =
  (ls_2_1 f_3_8);;
let rec map__d4__d0__d1_d4 f_6_7 ls_6_9 =
  (ls_6_9 f_6_7);;
let rec map__d4__d0__d1_d5 f_8_7 ls_7_9 =
  (ls_7_9 f_8_7);;
let rec map__d4__d0__d1_d6 f_3_7 ls_2_0 =
  (ls_2_0 f_3_7);;
let rec map__d4__d0__d2 f_8_5 ls_7_6 =
  (ls_7_6 f_8_5);;
let rec map__d4__d0__d3 f_4_7 ls_3_9 =
  (ls_3_9 f_4_7);;
let rec map__d4__d0__d4 f_5_0 ls_4_7 =
  (ls_4_7 f_5_0);;
let rec map__d4__d0__d5 f_5_4 ls_4_8 =
  (ls_4_8 f_5_4);;
let rec map__d4__d0__d6 f_8_6 ls_7_7 =
  (ls_7_7 f_8_6);;
let rec map__d4__d0__d7 f_3_6 ls_1_8 =
  (ls_1_8 f_3_6);;
let rec map__d4__d0__d8 f_5_8 ls_5_8 =
  (ls_5_8 f_5_8);;
let rec map__d4__d0__d9 f_4_6 ls_3_2 =
  (ls_3_2 f_4_6);;
let rec mappend__d0__d0__d0 xs_6_0 ys_1_5_4 =
  (xs_6_0 ys_1_5_4);;
let rec mappend__d0__d0__d1 xs_7_6 ys_1_7_2 =
  (xs_7_6 ys_1_7_2);;
let rec mappend__d0__d0__d2 xs_6_7 ys_1_6_1 =
  (xs_6_7 ys_1_6_1);;
let rec mappend__d0__d0__d3 xs_4_8 ys_1_4_2 =
  (xs_4_8 ys_1_4_2);;
let rec mappend__d0__d0__d4 xs_8_9 ys_1_9_0 =
  (xs_8_9 ys_1_9_0);;
let rec mappend__d1__d0__d0 xs_4_3 ys_1_3_5 =
  (xs_4_3 ys_1_3_5);;
let rec mappend__d1__d0__d1 xs_5_4 ys_1_4_8 =
  (xs_5_4 ys_1_4_8);;
let rec mappend__d1__d0__d2 xs_4_2 ys_1_3_4 =
  (xs_4_2 ys_1_3_4);;
let rec mappend__d1__d0__d3 xs_3_0 ys_1_2_0 =
  (xs_3_0 ys_1_2_0);;
let rec mappend__d1__d0__d4 xs_2_4 ys_1_1_4 =
  (xs_2_4 ys_1_1_4);;
let rec mappend__d1__d0__d5 xs_8_0 ys_1_8_1 =
  (xs_8_0 ys_1_8_1);;
let rec mappend__d1_d0__d0__d0 xs_6_5 ys_1_5_9 =
  (xs_6_5 ys_1_5_9);;
let rec mappend__d1_d0__d0__d1 xs_5_2 ys_1_4_6 =
  (xs_5_2 ys_1_4_6);;
let rec mappend__d1_d0__d0__d2 xs_9_4 ys_2_0_9 =
  (xs_9_4 ys_2_0_9);;
let rec mappend__d1_d0__d0__d3 xs_6_3 ys_1_5_7 =
  (xs_6_3 ys_1_5_7);;
let rec mappend__d1_d2__d0__d0 xs_9_8 ys_2_7_1 =
  (xs_9_8 ys_2_7_1);;
let rec mappend__d1_d2__d0__d1 xs_5_7 ys_1_5_1 =
  (xs_5_7 ys_1_5_1);;
let rec mappend__d1_d3__d0__d0 xs_1_0_4 ys_2_8_2 =
  (xs_1_0_4 ys_2_8_2);;
let rec mappend__d1_d3__d0__d1 xs_2_1 ys_1_1_1 =
  (xs_2_1 ys_1_1_1);;
let rec mappend__d1_d3__d0__d1_d0 xs_2_2 ys_1_1_2 =
  (xs_2_2 ys_1_1_2);;
let rec mappend__d1_d3__d0__d1_d1 xs_1_0_8 ys_2_8_6 =
  (xs_1_0_8 ys_2_8_6);;
let rec mappend__d1_d3__d0__d1_d2 xs_5_0 ys_1_4_4 =
  (xs_5_0 ys_1_4_4);;
let rec mappend__d1_d3__d0__d1_d3 xs_9_0 ys_1_9_1 =
  (xs_9_0 ys_1_9_1);;
let rec mappend__d1_d3__d0__d1_d4 xs_3_4 ys_1_2_4 =
  (xs_3_4 ys_1_2_4);;
let rec mappend__d1_d3__d0__d1_d5 xs_8_5 ys_1_8_6 =
  (xs_8_5 ys_1_8_6);;
let rec mappend__d1_d3__d0__d1_d6 xs_7_7 ys_1_7_3 =
  (xs_7_7 ys_1_7_3);;
let rec mappend__d1_d3__d0__d1_d7 xs_2_0 ys_1_1_0 =
  (xs_2_0 ys_1_1_0);;
let rec mappend__d1_d3__d0__d1_d8 xs_7_1 ys_1_6_5 =
  (xs_7_1 ys_1_6_5);;
let rec mappend__d1_d3__d0__d1_d9 xs_8_7 ys_1_8_8 =
  (xs_8_7 ys_1_8_8);;
let rec mappend__d1_d3__d0__d2 xs_8_2 ys_1_8_3 =
  (xs_8_2 ys_1_8_3);;
let rec mappend__d1_d3__d0__d2_d0 xs_2_9 ys_1_1_9 =
  (xs_2_9 ys_1_1_9);;
let rec mappend__d1_d3__d0__d2_d1 xs_2_3 ys_1_1_3 =
  (xs_2_3 ys_1_1_3);;
let rec mappend__d1_d3__d0__d2_d2 xs_7_0 ys_1_6_4 =
  (xs_7_0 ys_1_6_4);;
let rec mappend__d1_d3__d0__d2_d3 xs_7_5 ys_1_7_1 =
  (xs_7_5 ys_1_7_1);;
let rec mappend__d1_d3__d0__d2_d4 xs_1_0_6 ys_2_8_4 =
  (xs_1_0_6 ys_2_8_4);;
let rec mappend__d1_d3__d0__d2_d5 xs_9_3 ys_2_0_8 =
  (xs_9_3 ys_2_0_8);;
let rec mappend__d1_d3__d0__d2_d6 xs_2_8 ys_1_1_8 =
  (xs_2_8 ys_1_1_8);;
let rec mappend__d1_d3__d0__d2_d7 xs_9_6 ys_2_6_9 =
  (xs_9_6 ys_2_6_9);;
let rec mappend__d1_d3__d0__d2_d8 xs_7_4 ys_1_7_0 =
  (xs_7_4 ys_1_7_0);;
let rec mappend__d1_d3__d0__d3 xs_7_3 ys_1_6_9 =
  (xs_7_3 ys_1_6_9);;
let rec mappend__d1_d3__d0__d4 xs_7_9 ys_1_8_0 =
  (xs_7_9 ys_1_8_0);;
let rec mappend__d1_d3__d0__d5 xs_6_2 ys_1_5_6 =
  (xs_6_2 ys_1_5_6);;
let rec mappend__d1_d3__d0__d6 xs_2_5 ys_1_1_5 =
  (xs_2_5 ys_1_1_5);;
let rec mappend__d1_d3__d0__d7 xs_6_8 ys_1_6_2 =
  (xs_6_8 ys_1_6_2);;
let rec mappend__d1_d3__d0__d8 xs_4_9 ys_1_4_3 =
  (xs_4_9 ys_1_4_3);;
let rec mappend__d1_d3__d0__d9 xs_3_1 ys_1_2_1 =
  (xs_3_1 ys_1_2_1);;
let rec mappend__d1_d4__d0__d0 xs_2_7 ys_1_1_7 =
  (xs_2_7 ys_1_1_7);;
let rec mappend__d1_d4__d0__d1 xs_5_9 ys_1_5_3 =
  (xs_5_9 ys_1_5_3);;
let rec mappend__d1_d4__d0__d1_d0 xs_3_7 ys_1_3_1 =
  (xs_3_7 ys_1_3_1);;
let rec mappend__d1_d4__d0__d1_d1 xs_5_6 ys_1_5_0 =
  (xs_5_6 ys_1_5_0);;
let rec mappend__d1_d4__d0__d1_d2 xs_4_6 ys_1_3_8 =
  (xs_4_6 ys_1_3_8);;
let rec mappend__d1_d4__d0__d1_d3 xs_6_6 ys_1_6_0 =
  (xs_6_6 ys_1_6_0);;
let rec mappend__d1_d4__d0__d1_d4 xs_9_1 ys_2_0_6 =
  (xs_9_1 ys_2_0_6);;
let rec mappend__d1_d4__d0__d1_d5 xs_4_4 ys_1_3_6 =
  (xs_4_4 ys_1_3_6);;
let rec mappend__d1_d4__d0__d2 xs_8_8 ys_1_8_9 =
  (xs_8_8 ys_1_8_9);;
let rec mappend__d1_d4__d0__d3 xs_1_0_1 ys_2_7_6 =
  (xs_1_0_1 ys_2_7_6);;
let rec mappend__d1_d4__d0__d4 xs_7_2 ys_1_6_6 =
  (xs_7_2 ys_1_6_6);;
let rec mappend__d1_d4__d0__d5 xs_1_0_3 ys_2_8_1 =
  (xs_1_0_3 ys_2_8_1);;
let rec mappend__d1_d4__d0__d6 xs_2_6 ys_1_1_6 =
  (xs_2_6 ys_1_1_6);;
let rec mappend__d1_d4__d0__d7 xs_3_2 ys_1_2_2 =
  (xs_3_2 ys_1_2_2);;
let rec mappend__d1_d4__d0__d8 xs_8_4 ys_1_8_5 =
  (xs_8_4 ys_1_8_5);;
let rec mappend__d1_d4__d0__d9 xs_1_0_0 ys_2_7_5 =
  (xs_1_0_0 ys_2_7_5);;
let rec mappend__d2__d0__d0 xs_6_4 ys_1_5_8 =
  (xs_6_4 ys_1_5_8);;
let rec mappend__d2__d0__d1 xs_9_9 ys_2_7_4 =
  (xs_9_9 ys_2_7_4);;
let rec mappend__d2__d0__d2 xs_8_1 ys_1_8_2 =
  (xs_8_1 ys_1_8_2);;
let rec mappend__d2__d0__d3 xs_9_7 ys_2_7_0 =
  (xs_9_7 ys_2_7_0);;
let rec mappend__d2__d0__d4 xs_4_7 ys_1_3_9 =
  (xs_4_7 ys_1_3_9);;
let rec mappend__d3__d0__d0 xs_5_5 ys_1_4_9 =
  (xs_5_5 ys_1_4_9);;
let rec mappend__d3__d0__d1 xs_1_0_9 ys_2_8_7 =
  (xs_1_0_9 ys_2_8_7);;
let rec mappend__d3__d0__d2 xs_1_0_5 ys_2_8_3 =
  (xs_1_0_5 ys_2_8_3);;
let rec mappend__d3__d0__d3 xs_3_5 ys_1_2_5 =
  (xs_3_5 ys_1_2_5);;
let rec mappend__d6__d0__d0 xs_1_1_0 ys_2_8_8 =
  (xs_1_1_0 ys_2_8_8);;
let rec mappend__d6__d0__d1 xs_3_3 ys_1_2_3 =
  (xs_3_3 ys_1_2_3);;
let rec mappend__d6__d0__d2 xs_4_5 ys_1_3_7 =
  (xs_4_5 ys_1_3_7);;
let rec mappend__d6__d0__d3 xs_8_3 ys_1_8_4 =
  (xs_8_3 ys_1_8_4);;
let rec mappend__d8__d0__d0 xs_3_6 ys_1_2_8 =
  (xs_3_6 ys_1_2_8);;
let rec mappend__d8__d0__d1 xs_1_0_2 ys_2_7_8 =
  (xs_1_0_2 ys_2_7_8);;
let rec mappend__d8__d0__d2 xs_8_6 ys_1_8_7 =
  (xs_8_6 ys_1_8_7);;
let rec mappend__d8__d0__d3 xs_6_9 ys_1_6_3 =
  (xs_6_9 ys_1_6_3);;
let rec row__d0__d0__d0 _lh_row_arg1_1 =
  (_lh_row_arg1_1 99);;
let rec tail__d0__d0__d0 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_1_5_9, t_1_5_9) -> 
      t_1_5_9
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d0__d0__d1 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_1_4_4, t_1_4_4) -> 
      t_1_4_4
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1__d0__d0 ls_8_9 =
  (match ls_8_9 with
    | `LH_C(h_2_8_6, t_2_8_6) -> 
      t_2_8_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1__d0__d1 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_1_5_3, t_1_5_3) -> 
      t_1_5_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2__d0__d0 ls_9_1 =
  (match ls_9_1 with
    | `LH_C(h_2_9_0, t_2_9_0) -> 
      t_2_9_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2__d0__d1 ls_8_0 =
  (match ls_8_0 with
    | `LH_C(h_2_8_2, t_2_8_2) -> 
      t_2_8_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3__d0__d0 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_1_5_1, t_1_5_1) -> 
      t_1_5_1
    | `LH_N -> 
      (failwith "error"));;
let rec take__d0__d0__d0 n_6_8 ls_4_2 =
  (if (n_6_8 > 0) then
    (ls_4_2 n_6_8)
  else
    (`LH_N));;
let rec take__d0__d0__d1 n_1_3_6 ls_8_6 =
  (if (n_1_3_6 > 0) then
    (ls_8_6 n_1_3_6)
  else
    (`LH_N));;
let rec take__d0__d0__d1_d0 n_8_3 ls_6_7 =
  (if (n_8_3 > 0) then
    (ls_6_7 n_8_3)
  else
    (`LH_N));;
let rec take__d0__d0__d1_d1 n_1_3_9 ls_9_0 =
  (if (n_1_3_9 > 0) then
    (ls_9_0 n_1_3_9)
  else
    (`LH_N));;
let rec take__d0__d0__d1_d2 n_7_6 ls_5_4 =
  (if (n_7_6 > 0) then
    (ls_5_4 n_7_6)
  else
    (`LH_N));;
let rec take__d0__d0__d1_d3 n_7_8 ls_5_7 =
  (if (n_7_8 > 0) then
    (ls_5_7 n_7_8)
  else
    (`LH_N));;
let rec take__d0__d0__d1_d4 n_1_3_8 ls_8_8 =
  (if (n_1_3_8 > 0) then
    (ls_8_8 n_1_3_8)
  else
    (`LH_N));;
let rec take__d0__d0__d1_d5 n_6_4 ls_3_8 =
  (if (n_6_4 > 0) then
    (ls_3_8 n_6_4)
  else
    (`LH_N));;
let rec take__d0__d0__d1_d6 n_5_3 ls_1_9 =
  (if (n_5_3 > 0) then
    (ls_1_9 n_5_3)
  else
    (`LH_N));;
let rec take__d0__d0__d2 n_8_0 ls_6_0 =
  (if (n_8_0 > 0) then
    (ls_6_0 n_8_0)
  else
    (`LH_N));;
let rec take__d0__d0__d3 n_8_6 ls_7_1 =
  (if (n_8_6 > 0) then
    (ls_7_1 n_8_6)
  else
    (`LH_N));;
let rec take__d0__d0__d4 n_1_4_1 ls_9_3 =
  (if (n_1_4_1 > 0) then
    (ls_9_3 n_1_4_1)
  else
    (`LH_N));;
let rec take__d0__d0__d5 n_5_8 ls_2_9 =
  (if (n_5_8 > 0) then
    (ls_2_9 n_5_8)
  else
    (`LH_N));;
let rec take__d0__d0__d6 n_1_3_4 ls_8_4 =
  (if (n_1_3_4 > 0) then
    (ls_8_4 n_1_3_4)
  else
    (`LH_N));;
let rec take__d0__d0__d7 n_4_9 ls_1_3 =
  (if (n_4_9 > 0) then
    (ls_1_3 n_4_9)
  else
    (`LH_N));;
let rec take__d0__d0__d8 n_6_0 ls_3_4 =
  (if (n_6_0 > 0) then
    (ls_3_4 n_6_0)
  else
    (`LH_N));;
let rec take__d0__d0__d9 n_6_7 ls_4_1 =
  (if (n_6_7 > 0) then
    (ls_4_1 n_6_7)
  else
    (`LH_N));;
let rec take__d1__d0__d0 n_7_5 ls_5_2 =
  (if (n_7_5 > 0) then
    (ls_5_2 n_7_5)
  else
    (`LH_N));;
let rec take__d1__d0__d1 n_6_3 ls_3_7 =
  (if (n_6_3 > 0) then
    (ls_3_7 n_6_3)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d0 n_6_2 ls_3_6 =
  (if (n_6_2 > 0) then
    (ls_3_6 n_6_2)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d1 n_8_7 ls_7_2 =
  (if (n_8_7 > 0) then
    (ls_7_2 n_8_7)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d2 n_1_4_0 ls_9_2 =
  (if (n_1_4_0 > 0) then
    (ls_9_2 n_1_4_0)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d3 n_5_6 ls_2_7 =
  (if (n_5_6 > 0) then
    (ls_2_7 n_5_6)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d4 n_7_7 ls_5_5 =
  (if (n_7_7 > 0) then
    (ls_5_5 n_7_7)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d5 n_5_7 ls_2_8 =
  (if (n_5_7 > 0) then
    (ls_2_8 n_5_7)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d6 n_7_9 ls_5_9 =
  (if (n_7_9 > 0) then
    (ls_5_9 n_7_9)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d7 n_1_3_3 ls_8_1 =
  (if (n_1_3_3 > 0) then
    (ls_8_1 n_1_3_3)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d8 n_8_5 ls_7_0 =
  (if (n_8_5 > 0) then
    (ls_7_0 n_8_5)
  else
    (`LH_N));;
let rec take__d1__d0__d1_d9 n_1_3_7 ls_8_7 =
  (if (n_1_3_7 > 0) then
    (ls_8_7 n_1_3_7)
  else
    (`LH_N));;
let rec take__d1__d0__d2 n_7_4 ls_4_9 =
  (if (n_7_4 > 0) then
    (ls_4_9 n_7_4)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d0 n_5_4 ls_2_5 =
  (if (n_5_4 > 0) then
    (ls_2_5 n_5_4)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d1 n_7_0 ls_4_4 =
  (if (n_7_0 > 0) then
    (ls_4_4 n_7_0)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d2 n_1_3_5 ls_8_5 =
  (if (n_1_3_5 > 0) then
    (ls_8_5 n_1_3_5)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d3 n_5_9 ls_3_1 =
  (if (n_5_9 > 0) then
    (ls_3_1 n_5_9)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d4 n_8_4 ls_6_8 =
  (if (n_8_4 > 0) then
    (ls_6_8 n_8_4)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d5 n_1_3_0 ls_7_4 =
  (if (n_1_3_0 > 0) then
    (ls_7_4 n_1_3_0)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d6 n_1_4_2 ls_9_4 =
  (if (n_1_4_2 > 0) then
    (ls_9_4 n_1_4_2)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d7 n_6_9 ls_4_3 =
  (if (n_6_9 > 0) then
    (ls_4_3 n_6_9)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d8 n_5_5 ls_2_6 =
  (if (n_5_5 > 0) then
    (ls_2_6 n_5_5)
  else
    (`LH_N));;
let rec take__d1__d0__d2_d9 n_5_2 ls_1_7 =
  (if (n_5_2 > 0) then
    (ls_1_7 n_5_2)
  else
    (`LH_N));;
let rec take__d1__d0__d3 n_5_0 ls_1_5 =
  (if (n_5_0 > 0) then
    (ls_1_5 n_5_0)
  else
    (`LH_N));;
let rec take__d1__d0__d4 n_8_2 ls_6_6 =
  (if (n_8_2 > 0) then
    (ls_6_6 n_8_2)
  else
    (`LH_N));;
let rec take__d1__d0__d5 n_7_1 ls_4_6 =
  (if (n_7_1 > 0) then
    (ls_4_6 n_7_1)
  else
    (`LH_N));;
let rec take__d1__d0__d6 n_6_1 ls_3_5 =
  (if (n_6_1 > 0) then
    (ls_3_5 n_6_1)
  else
    (`LH_N));;
let rec take__d1__d0__d7 n_1_3_1 ls_7_8 =
  (if (n_1_3_1 > 0) then
    (ls_7_8 n_1_3_1)
  else
    (`LH_N));;
let rec take__d1__d0__d8 n_5_1 ls_1_6 =
  (if (n_5_1 > 0) then
    (ls_1_6 n_5_1)
  else
    (`LH_N));;
let rec take__d1__d0__d9 n_8_1 ls_6_4 =
  (if (n_8_1 > 0) then
    (ls_6_4 n_8_1)
  else
    (`LH_N));;
let rec zip3__d0__d0__d0 _lh_zip3_arg1_8 _lh_zip3_arg2_2_2 _lh_zip3_arg3_2_2 =
  (let rec _lh_matchIdent_3_6 = _lh_zip3_arg1_8 in
    ((_lh_matchIdent_3_6 _lh_zip3_arg2_2_2) _lh_zip3_arg3_2_2));;
let rec zip3__d0__d0__d1 _lh_zip3_arg1_6 _lh_zip3_arg2_2_0 _lh_zip3_arg3_2_0 =
  (let rec _lh_matchIdent_3_4 = _lh_zip3_arg1_6 in
    ((_lh_matchIdent_3_4 _lh_zip3_arg2_2_0) _lh_zip3_arg3_2_0));;
let rec zip3__d0__d0__d2 _lh_zip3_arg1_7 _lh_zip3_arg2_2_1 _lh_zip3_arg3_2_1 =
  (let rec _lh_matchIdent_3_5 = _lh_zip3_arg1_7 in
    ((_lh_matchIdent_3_5 _lh_zip3_arg2_2_1) _lh_zip3_arg3_2_1));;
let rec zip3__d0__d0__d3 _lh_zip3_arg1_1_3 _lh_zip3_arg2_3_4 _lh_zip3_arg3_3_4 =
  (let rec _lh_matchIdent_5_7 = _lh_zip3_arg1_1_3 in
    ((_lh_matchIdent_5_7 _lh_zip3_arg2_3_4) _lh_zip3_arg3_3_4));;
let rec zip3__d0__d0__d4 _lh_zip3_arg1_1_1 _lh_zip3_arg2_2_9 _lh_zip3_arg3_2_9 =
  (let rec _lh_matchIdent_4_7 = _lh_zip3_arg1_1_1 in
    ((_lh_matchIdent_4_7 _lh_zip3_arg2_2_9) _lh_zip3_arg3_2_9));;
let rec zip3__d0__d0__d5 _lh_zip3_arg1_4 _lh_zip3_arg2_1_7 _lh_zip3_arg3_1_7 =
  (let rec _lh_matchIdent_2_9 = _lh_zip3_arg1_4 in
    ((_lh_matchIdent_2_9 _lh_zip3_arg2_1_7) _lh_zip3_arg3_1_7));;
let rec zip3__d1__d0__d0 _lh_zip3_arg1_2_0 _lh_zip3_arg2_5_0 _lh_zip3_arg3_5_0 =
  (let rec _lh_matchIdent_7_8 = _lh_zip3_arg1_2_0 in
    ((_lh_matchIdent_7_8 _lh_zip3_arg2_5_0) _lh_zip3_arg3_5_0));;
let rec zip3__d1__d0__d1 _lh_zip3_arg1_9 _lh_zip3_arg2_2_5 _lh_zip3_arg3_2_5 =
  (let rec _lh_matchIdent_3_9 = _lh_zip3_arg1_9 in
    ((_lh_matchIdent_3_9 _lh_zip3_arg2_2_5) _lh_zip3_arg3_2_5));;
let rec zip3__d1__d0__d2 _lh_zip3_arg1_1_7 _lh_zip3_arg2_4_3 _lh_zip3_arg3_4_3 =
  (let rec _lh_matchIdent_6_8 = _lh_zip3_arg1_1_7 in
    ((_lh_matchIdent_6_8 _lh_zip3_arg2_4_3) _lh_zip3_arg3_4_3));;
let rec zip3__d1__d0__d3 _lh_zip3_arg1_1_6 _lh_zip3_arg2_4_2 _lh_zip3_arg3_4_2 =
  (let rec _lh_matchIdent_6_7 = _lh_zip3_arg1_1_6 in
    ((_lh_matchIdent_6_7 _lh_zip3_arg2_4_2) _lh_zip3_arg3_4_2));;
let rec zip3__d1__d0__d4 _lh_zip3_arg1_2_3 _lh_zip3_arg2_5_6 _lh_zip3_arg3_5_6 =
  (let rec _lh_matchIdent_9_0 = _lh_zip3_arg1_2_3 in
    ((_lh_matchIdent_9_0 _lh_zip3_arg2_5_6) _lh_zip3_arg3_5_6));;
let rec zip3__d1__d0__d5 _lh_zip3_arg1_5 _lh_zip3_arg2_1_9 _lh_zip3_arg3_1_9 =
  (let rec _lh_matchIdent_3_2 = _lh_zip3_arg1_5 in
    ((_lh_matchIdent_3_2 _lh_zip3_arg2_1_9) _lh_zip3_arg3_1_9));;
let rec zip3__d2__d0__d0 _lh_zip3_arg1_2_4 _lh_zip3_arg2_5_7 _lh_zip3_arg3_5_7 =
  (let rec _lh_matchIdent_9_1 = _lh_zip3_arg1_2_4 in
    ((_lh_matchIdent_9_1 _lh_zip3_arg2_5_7) _lh_zip3_arg3_5_7));;
let rec zip3__d2__d0__d1 _lh_zip3_arg1_1_5 _lh_zip3_arg2_4_1 _lh_zip3_arg3_4_1 =
  (let rec _lh_matchIdent_6_6 = _lh_zip3_arg1_1_5 in
    ((_lh_matchIdent_6_6 _lh_zip3_arg2_4_1) _lh_zip3_arg3_4_1));;
let rec zip3__d2__d0__d2 _lh_zip3_arg1_1_0 _lh_zip3_arg2_2_6 _lh_zip3_arg3_2_6 =
  (let rec _lh_matchIdent_4_0 = _lh_zip3_arg1_1_0 in
    ((_lh_matchIdent_4_0 _lh_zip3_arg2_2_6) _lh_zip3_arg3_2_6));;
let rec zip3__d2__d0__d3 _lh_zip3_arg1_1_9 _lh_zip3_arg2_4_7 _lh_zip3_arg3_4_7 =
  (let rec _lh_matchIdent_7_4 = _lh_zip3_arg1_1_9 in
    ((_lh_matchIdent_7_4 _lh_zip3_arg2_4_7) _lh_zip3_arg3_4_7));;
let rec zip3__d2__d0__d4 _lh_zip3_arg1_2_1 _lh_zip3_arg2_5_3 _lh_zip3_arg3_5_3 =
  (let rec _lh_matchIdent_8_4 = _lh_zip3_arg1_2_1 in
    ((_lh_matchIdent_8_4 _lh_zip3_arg2_5_3) _lh_zip3_arg3_5_3));;
let rec zip3__d2__d0__d5 _lh_zip3_arg1_1_8 _lh_zip3_arg2_4_4 _lh_zip3_arg3_4_4 =
  (let rec _lh_matchIdent_7_0 = _lh_zip3_arg1_1_8 in
    ((_lh_matchIdent_7_0 _lh_zip3_arg2_4_4) _lh_zip3_arg3_4_4));;
let rec zip3__d3__d0__d0 _lh_zip3_arg1_2_2 _lh_zip3_arg2_5_4 _lh_zip3_arg3_5_4 =
  (let rec _lh_matchIdent_8_5 = _lh_zip3_arg1_2_2 in
    ((_lh_matchIdent_8_5 _lh_zip3_arg2_5_4) _lh_zip3_arg3_5_4));;
let rec zip3__d3__d0__d1 _lh_zip3_arg1_1_4 _lh_zip3_arg2_3_9 _lh_zip3_arg3_3_9 =
  (let rec _lh_matchIdent_6_2 = _lh_zip3_arg1_1_4 in
    ((_lh_matchIdent_6_2 _lh_zip3_arg2_3_9) _lh_zip3_arg3_3_9));;
let rec zip3__d3__d0__d2 _lh_zip3_arg1_1_2 _lh_zip3_arg2_3_1 _lh_zip3_arg3_3_1 =
  (let rec _lh_matchIdent_5_2 = _lh_zip3_arg1_1_2 in
    ((_lh_matchIdent_5_2 _lh_zip3_arg2_3_1) _lh_zip3_arg3_3_1));;
let rec zipWith3__d0__d0__d0 _lh_zipWith3_arg1_6_0 _lh_zipWith3_arg2_6 _lh_zipWith3_arg3_2_4 _lh_zipWith3_arg4_4_2 =
  (let rec _lh_matchIdent_8_9 = _lh_zipWith3_arg2_6 in
    (((_lh_matchIdent_8_9 _lh_zipWith3_arg1_6_0) _lh_zipWith3_arg3_2_4) _lh_zipWith3_arg4_4_2));;
let rec zipWith3__d0__d0__d1 _lh_zipWith3_arg1_5_9 _lh_zipWith3_arg2_5 _lh_zipWith3_arg3_2_3 _lh_zipWith3_arg4_4_1 =
  (let rec _lh_matchIdent_8_8 = _lh_zipWith3_arg2_5 in
    (((_lh_matchIdent_8_8 _lh_zipWith3_arg1_5_9) _lh_zipWith3_arg3_2_3) _lh_zipWith3_arg4_4_1));;
let rec zipWith3__d0__d0__d2 _lh_zipWith3_arg1_3_0 _lh_zipWith3_arg2_1 _lh_zipWith3_arg3_1_3 _lh_zipWith3_arg4_2_0 =
  (let rec _lh_matchIdent_4_8 = _lh_zipWith3_arg2_1 in
    (((_lh_matchIdent_4_8 _lh_zipWith3_arg1_3_0) _lh_zipWith3_arg3_1_3) _lh_zipWith3_arg4_2_0));;
let rec zipWith3__d0__d0__d3 _lh_zipWith3_arg1_3_6 _lh_zipWith3_arg2_2 _lh_zipWith3_arg3_1_4 _lh_zipWith3_arg4_2_4 =
  (let rec _lh_matchIdent_5_6 = _lh_zipWith3_arg2_2 in
    (((_lh_matchIdent_5_6 _lh_zipWith3_arg1_3_6) _lh_zipWith3_arg3_1_4) _lh_zipWith3_arg4_2_4));;
let rec zipWith3__d0__d0__d4 _lh_zipWith3_arg1_4_8 _lh_zipWith3_arg2_3 _lh_zipWith3_arg3_1_7 _lh_zipWith3_arg4_3_3 =
  (let rec _lh_matchIdent_7_5 = _lh_zipWith3_arg2_3 in
    (((_lh_matchIdent_7_5 _lh_zipWith3_arg1_4_8) _lh_zipWith3_arg3_1_7) _lh_zipWith3_arg4_3_3));;
let rec zipWith3__d0__d0__d5 _lh_zipWith3_arg1_5_4 _lh_zipWith3_arg2_4 _lh_zipWith3_arg3_2_1 _lh_zipWith3_arg4_3_9 =
  (let rec _lh_matchIdent_8_2 = _lh_zipWith3_arg2_4 in
    (((_lh_matchIdent_8_2 _lh_zipWith3_arg1_5_4) _lh_zipWith3_arg3_2_1) _lh_zipWith3_arg4_3_9));;
let rec zip_lz_nl__d0__d0__d0 xs_5_1 ys_1_4_5 =
  (ys_1_4_5 xs_5_1);;
let rec zip_lz_nl__d0__d0__d1 xs_5_8 ys_1_5_2 =
  (ys_1_5_2 xs_5_8);;
let rec copy__d0__d0__d0 _lh_copy_arg1_4 _lh_copy_arg2_4 _lh_popOutId_0_1_0 =
  (match _lh_copy_arg1_4 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_5_4 = ((copy__d0__d0__d0 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4) in
        (let rec h_1_5_4 = _lh_copy_arg2_4 in
          (`LH_C(h_1_5_4, ((take__d1__d0__d0 (_lh_popOutId_0_1_0 - 1)) t_1_5_4))))))
and copy__d1__d0__d0 _lh_copy_arg1_5 _lh_copy_arg2_5 _lh_popOutId_0_6 _lh_popOutId_1_5 =
  (match _lh_copy_arg1_5 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_5_7 = ((copy__d1__d0__d0 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5) in
        (let rec h_1_5_7 = _lh_copy_arg2_5 in
          (let rec t_1_5_8 = ((map__d4__d0__d0 _lh_popOutId_0_6) t_1_5_7) in
            (let rec h_1_5_8 = (_lh_popOutId_0_6 h_1_5_7) in
              (`LH_C(h_1_5_8, ((take__d0__d0__d0 (_lh_popOutId_1_5 - 1)) t_1_5_8))))))))
and copy__d2__d0__d0 _lh_copy_arg1_6 _lh_copy_arg2_6 _lh_popOutId_0_7 =
  (match _lh_copy_arg1_6 with
    | 0 -> 
      _lh_popOutId_0_7
    | _ -> 
      (fun n_1_3_2 -> 
        (let rec t_2_8_0 = ((copy__d2__d0__d0 (_lh_copy_arg1_6 - 1)) _lh_copy_arg2_6) in
          (let rec h_2_8_0 = _lh_copy_arg2_6 in
            (let rec t_2_8_1 = ((mappend__d1_d3__d0__d0 t_2_8_0) _lh_popOutId_0_7) in
              (let rec h_2_8_1 = h_2_8_0 in
                (`LH_C(h_2_8_1, ((take__d1__d0__d1 (n_1_3_2 - 1)) t_2_8_1)))))))))
and enumFrom__d0__d0__d0 a_1 =
  (lazy (let rec t_1_6_1 = (enumFrom__d0__d0__d0 (a_1 + 1)) in
    (let rec h_1_6_1 = a_1 in
      (fun f_6_1 -> 
        (let rec tx_1 = ((map_lz__d0__d0__d0 f_6_1) t_1_6_1) in
          (let rec hx_1 = (f_6_1 h_1_6_1) in
            (fun hy_5 ty_5 -> 
              (let rec t_1_6_2 = ((zip_lz_nl__d0__d0__d0 tx_1) ty_5) in
                (let rec h_1_6_2 = (let rec _lh_disp_LH_P2_1_1 = hy_5 in
                  (let rec _lh_disp_LH_P2_0_1 = hx_1 in
                    (fun _lh_dummy_5 -> 
                      ((mappend__d3__d0__d0 ((mappend__d4__d0__d0 _lh_disp_LH_P2_0_1) (let rec t_1_6_3 = (let rec t_1_6_4 = (fun ys_1_7_4 -> 
                        ys_1_7_4) in
                        (let rec h_1_6_3 = 'n' in
                          (fun ys_1_7_5 -> 
                            (`LH_C(h_1_6_3, ((mappend__d3__d0__d1 t_1_6_4) ys_1_7_5)))))) in
                        (let rec h_1_6_4 = 'n' in
                          (fun ys_1_7_6 -> 
                            (`LH_C(h_1_6_4, ((mappend__d3__d0__d2 t_1_6_3) ys_1_7_6)))))))) ((fun _lh_funcomp_x_6 -> 
                        (((foldr__d0__d0__d0 (glue__d0__d0__d0 (let rec t_1_6_5 = (fun ys_1_7_7 -> 
                          ys_1_7_7) in
                          (let rec h_1_6_5 = 'n' in
                            (fun ys_1_7_8 -> 
                              (`LH_C(h_1_6_5, ((mappend__d1__d0__d1 t_1_6_5) ys_1_7_8)))))))) (`LH_N)) ((map__d0__d0__d0 (fun _lh_funcomp_x_7 -> 
                          (concat__d0__d0__d0 ((map__d1__d0__d0 star__d0__d0__d0) _lh_funcomp_x_7)))) _lh_funcomp_x_6))) _lh_disp_LH_P2_1_1))))) in
                  (fun f_6_2 -> 
                    (`LH_C((f_6_2 h_1_6_2), ((map__d3__d0__d0 f_6_2) t_1_6_2)))))))))))))
and gen__d0__d0__d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  ((map__d2__d0__d0 row__d0__d0__d0) ((shift__d3__d0__d0 ((copy__d3__d0__d0 _lh_gen_arg1_1) 0)) _lh_gen_arg2_1))
and generations__d0__d0__d0 _lh_generations_arg1_1 =
  ((fun _lh_funcomp_x_8 -> 
    ((fun _lh_funcomp_x_9 -> 
      ((fun _lh_funcomp_x_1_0 -> 
        ((map__d3__d0__d1 disp__d0__d0__d0) ((zip_lz_nl__d0__d0__d1 ((map_lz__d0__d0__d1 string_of_int) (enumFrom__d0__d0__d0 0))) _lh_funcomp_x_1_0))) (limit__d0__d0__d0 _lh_funcomp_x_9))) ((iterate__d0__d0__d0 (gen__d0__d0__d0 _lh_generations_arg1_1)) _lh_funcomp_x_8))) ((take__d0__d0__d1_d6 _lh_generations_arg1_1) ((map__d4__d0__d1 (fun _lh_funcomp_x_1_1 -> 
    ((fun l_2 -> 
      ((take__d1__d0__d2_d9 _lh_generations_arg1_1) l_2)) ((fun l_3 -> 
      ((mappend__d1_d3__d0__d1 l_3) ((copy__d0__d0__d0 _lh_generations_arg1_1) 0))) _lh_funcomp_x_1_1)))) ((mappend__d1_d4__d0__d0 start__d0__d0__d0) ((copy__d1__d0__d0 _lh_generations_arg1_1) ((copy__d2__d0__d0 _lh_generations_arg1_1) 0))))))
and glue__d0__d0__d0 _lh_glue_arg1_1 _lh_glue_arg2_1 _lh_glue_arg3_1 =
  ((mappend__d1__d0__d0 ((mappend__d2__d0__d0 _lh_glue_arg2_1) _lh_glue_arg1_1)) _lh_glue_arg3_1)
and map__d0__d0__d0 f_4_2 ls_3_0 _lh_popOutId_0_2 _lh_popOutId_1_1 =
  (match ls_3_0 with
    | `LH_C(h_1_4_7, t_1_4_7) -> 
      (let rec t_1_4_8 = ((map__d0__d0__d0 f_4_2) t_1_4_7) in
        (let rec h_1_4_8 = (f_4_2 h_1_4_7) in
          ((_lh_popOutId_0_2 h_1_4_8) (((foldr__d0__d0__d1 _lh_popOutId_0_2) _lh_popOutId_1_1) t_1_4_8))))
    | `LH_N -> 
      _lh_popOutId_1_1)
and map__d1__d0__d0 f_8_9 ls_8_3 _lh_popOutId_0_1_2 =
  (match ls_8_3 with
    | `LH_C(h_2_8_3, t_2_8_3) -> 
      (let rec t_2_8_4 = ((map__d1__d0__d0 f_8_9) t_2_8_3) in
        (let rec h_2_8_4 = (f_8_9 h_2_8_3) in
          ((mappend__d0__d0__d0 h_2_8_4) (concat__d0__d0__d1 t_2_8_4))))
    | `LH_N -> 
      (fun ys_2_7_7 -> 
        ys_2_7_7))
and mappend__d1_d1__d0__d0 xs_1_0_7 ys_2_8_5 =
  (match xs_1_0_7 with
    | `LH_C(h_2_8_8, t_2_8_8) -> 
      (let rec _lh_zip3_LH_C_1_1_2_9 = ((mappend__d1_d1__d0__d0 t_2_8_8) ys_2_8_5) in
        (let rec _lh_zip3_LH_C_0_1_2_9 = h_2_8_8 in
          (fun _lh_zip3_LH_C_0_1_3_0 _lh_zip3_LH_C_0_1_3_1 _lh_zip3_LH_C_1_1_3_0 _lh_zip3_LH_C_1_1_3_1 -> 
            (let rec t_2_8_9 = (((zip3__d3__d0__d0 _lh_zip3_LH_C_1_1_3_0) _lh_zip3_LH_C_1_1_3_1) _lh_zip3_LH_C_1_1_2_9) in
              (let rec h_2_8_9 = (let rec _lh_row_LH_P3_2_3 = _lh_zip3_LH_C_0_1_2_9 in
                (let rec _lh_row_LH_P3_1_3 = _lh_zip3_LH_C_0_1_3_1 in
                  (let rec _lh_row_LH_P3_0_3 = _lh_zip3_LH_C_0_1_3_0 in
                    (fun _lh_dummy_9 -> 
                      ((((zipWith3__d0__d0__d2 elt__d0__d0__d1) ((shift__d0__d0__d0 0) _lh_row_LH_P3_0_3)) ((shift__d1__d0__d0 0) _lh_row_LH_P3_1_3)) ((shift__d2__d0__d0 0) _lh_row_LH_P3_2_3)))))) in
                (fun f_9_2 -> 
                  (`LH_C((f_9_2 h_2_8_9), ((map__d2__d0__d2 f_9_2) t_2_8_9)))))))))
    | `LH_N -> 
      ys_2_8_5)
and mappend__d4__d0__d0 xs_4_1 ys_1_3_2 =
  (match xs_4_1 with
    | `LH_C(h_1_4_9, t_1_4_9) -> 
      (let rec t_1_5_0 = ((mappend__d4__d0__d0 t_1_4_9) ys_1_3_2) in
        (let rec h_1_5_0 = h_1_4_9 in
          (fun ys_1_3_3 -> 
            (`LH_C(h_1_5_0, ((mappend__d3__d0__d3 t_1_5_0) ys_1_3_3))))))
    | `LH_N -> 
      ys_1_3_2)
and mappend__d5__d0__d0 xs_9_5 ys_2_6_8 =
  (match xs_9_5 with
    | `LH_C(h_2_7_9, t_2_7_9) -> 
      (let rec _lh_zip3_LH_C_1_1_1_4 = ((mappend__d5__d0__d0 t_2_7_9) ys_2_6_8) in
        (let rec _lh_zip3_LH_C_0_1_1_4 = h_2_7_9 in
          (fun _lh_zip3_LH_C_0_1_1_5 _lh_zip3_LH_C_0_1_1_6 _lh_zip3_LH_C_1_1_1_5 _lh_zip3_LH_C_1_1_1_6 -> 
            (let rec _lh_zipWith3_LH_C_1_6_4 = (((zip3__d0__d0__d0 _lh_zip3_LH_C_1_1_1_5) _lh_zip3_LH_C_1_1_1_6) _lh_zip3_LH_C_1_1_1_4) in
              (let rec _lh_zipWith3_LH_C_0_6_4 = (let rec _lh_elt_LH_P3_2_3_2 = _lh_zip3_LH_C_0_1_1_4 in
                (let rec _lh_elt_LH_P3_1_3_2 = _lh_zip3_LH_C_0_1_1_6 in
                  (let rec _lh_elt_LH_P3_0_3_2 = _lh_zip3_LH_C_0_1_1_5 in
                    (fun _lh_elt_arg2_8 _lh_elt_arg3_1_4 -> 
                      ((((_lh_elt_arg2_8 _lh_elt_LH_P3_0_3_2) _lh_elt_LH_P3_1_3_2) _lh_elt_LH_P3_2_3_2) _lh_elt_arg3_1_4))))) in
                (fun _lh_zipWith3_arg1_5_5 _lh_zipWith3_arg3_2_2 _lh_zipWith3_arg4_4_0 -> 
                  (let rec _lh_matchIdent_8_3 = _lh_zipWith3_arg3_2_2 in
                    ((((_lh_matchIdent_8_3 _lh_zipWith3_LH_C_0_6_4) _lh_zipWith3_LH_C_1_6_4) _lh_zipWith3_arg1_5_5) _lh_zipWith3_arg4_4_0))))))))
    | `LH_N -> 
      ys_2_6_8)
and mappend__d5__d0__d1 xs_9_2 ys_2_0_7 =
  (match xs_9_2 with
    | `LH_C(h_1_7_9, t_1_7_9) -> 
      (let rec _lh_zip3_LH_C_1_1_0_9 = ((mappend__d5__d0__d1 t_1_7_9) ys_2_0_7) in
        (let rec _lh_zip3_LH_C_0_1_0_9 = h_1_7_9 in
          (fun _lh_zip3_LH_C_0_1_1_0 _lh_zip3_LH_C_0_1_1_1 _lh_zip3_LH_C_1_1_1_0 _lh_zip3_LH_C_1_1_1_1 -> 
            (let rec _lh_zipWith3_LH_C_1_6_3 = (((zip3__d0__d0__d3 _lh_zip3_LH_C_1_1_1_0) _lh_zip3_LH_C_1_1_1_1) _lh_zip3_LH_C_1_1_0_9) in
              (let rec _lh_zipWith3_LH_C_0_6_3 = (let rec _lh_elt_LH_P3_2_3_1 = _lh_zip3_LH_C_0_1_0_9 in
                (let rec _lh_elt_LH_P3_1_3_1 = _lh_zip3_LH_C_0_1_1_1 in
                  (let rec _lh_elt_LH_P3_0_3_1 = _lh_zip3_LH_C_0_1_1_0 in
                    (fun _lh_elt_arg2_7 _lh_elt_arg3_1_3 -> 
                      ((((_lh_elt_arg2_7 _lh_elt_LH_P3_0_3_1) _lh_elt_LH_P3_1_3_1) _lh_elt_LH_P3_2_3_1) _lh_elt_arg3_1_3))))) in
                (fun _lh_zipWith3_arg1_5_1 _lh_zipWith3_arg3_1_8 _lh_zipWith3_arg4_3_6 -> 
                  (let rec _lh_matchIdent_7_9 = _lh_zipWith3_arg3_1_8 in
                    ((((_lh_matchIdent_7_9 _lh_zipWith3_LH_C_0_6_3) _lh_zipWith3_LH_C_1_6_3) _lh_zipWith3_arg1_5_1) _lh_zipWith3_arg4_3_6))))))))
    | `LH_N -> 
      ys_2_0_7)
and mappend__d7__d0__d0 xs_5_3 ys_1_4_7 =
  (match xs_5_3 with
    | `LH_C(h_1_5_5, t_1_5_5) -> 
      (let rec _lh_zip3_LH_C_1_8_0 = ((mappend__d7__d0__d0 t_1_5_5) ys_1_4_7) in
        (let rec _lh_zip3_LH_C_0_8_0 = h_1_5_5 in
          (fun _lh_zip3_LH_C_0_8_1 _lh_zip3_LH_C_0_8_2 _lh_zip3_LH_C_1_8_1 _lh_zip3_LH_C_1_8_2 -> 
            (let rec _lh_zipWith3_LH_C_1_4_3 = (((zip3__d1__d0__d0 _lh_zip3_LH_C_1_8_2) _lh_zip3_LH_C_1_8_1) _lh_zip3_LH_C_1_8_0) in
              (let rec _lh_zipWith3_LH_C_0_4_3 = (let rec _lh_elt_LH_P3_2_2_1 = _lh_zip3_LH_C_0_8_0 in
                (let rec _lh_elt_LH_P3_1_2_1 = _lh_zip3_LH_C_0_8_1 in
                  (let rec _lh_elt_LH_P3_0_2_1 = _lh_zip3_LH_C_0_8_2 in
                    (fun _lh_elt_LH_P3_0_2_2 _lh_elt_LH_P3_1_2_2 _lh_elt_LH_P3_2_2_2 _lh_elt_arg3_8 -> 
                      ((((((_lh_elt_arg3_8 _lh_elt_LH_P3_0_2_2) _lh_elt_LH_P3_0_2_1) _lh_elt_LH_P3_1_2_2) _lh_elt_LH_P3_1_2_1) _lh_elt_LH_P3_2_2_2) _lh_elt_LH_P3_2_2_1))))) in
                (fun _lh_zipWith3_LH_C_0_4_4 _lh_zipWith3_LH_C_1_4_4 _lh_zipWith3_arg1_3_5 _lh_zipWith3_arg4_2_3 -> 
                  (let rec _lh_matchIdent_5_5 = _lh_zipWith3_arg4_2_3 in
                    (((((_lh_matchIdent_5_5 _lh_zipWith3_LH_C_0_4_4) _lh_zipWith3_LH_C_0_4_3) _lh_zipWith3_LH_C_1_4_4) _lh_zipWith3_LH_C_1_4_3) _lh_zipWith3_arg1_3_5))))))))
    | `LH_N -> 
      ys_1_4_7)
and mappend__d7__d0__d1 xs_7_8 ys_1_7_9 =
  (match xs_7_8 with
    | `LH_C(h_1_6_6, t_1_6_6) -> 
      (let rec _lh_zip3_LH_C_1_9_7 = ((mappend__d7__d0__d1 t_1_6_6) ys_1_7_9) in
        (let rec _lh_zip3_LH_C_0_9_7 = h_1_6_6 in
          (fun _lh_zip3_LH_C_0_9_8 _lh_zip3_LH_C_0_9_9 _lh_zip3_LH_C_1_9_8 _lh_zip3_LH_C_1_9_9 -> 
            (let rec _lh_zipWith3_LH_C_1_5_6 = (((zip3__d1__d0__d3 _lh_zip3_LH_C_1_9_9) _lh_zip3_LH_C_1_9_8) _lh_zip3_LH_C_1_9_7) in
              (let rec _lh_zipWith3_LH_C_0_5_6 = (let rec _lh_elt_LH_P3_2_2_7 = _lh_zip3_LH_C_0_9_7 in
                (let rec _lh_elt_LH_P3_1_2_7 = _lh_zip3_LH_C_0_9_8 in
                  (let rec _lh_elt_LH_P3_0_2_7 = _lh_zip3_LH_C_0_9_9 in
                    (fun _lh_elt_LH_P3_0_2_8 _lh_elt_LH_P3_1_2_8 _lh_elt_LH_P3_2_2_8 _lh_elt_arg3_1_0 -> 
                      ((((((_lh_elt_arg3_1_0 _lh_elt_LH_P3_0_2_8) _lh_elt_LH_P3_0_2_7) _lh_elt_LH_P3_1_2_8) _lh_elt_LH_P3_1_2_7) _lh_elt_LH_P3_2_2_8) _lh_elt_LH_P3_2_2_7))))) in
                (fun _lh_zipWith3_LH_C_0_5_7 _lh_zipWith3_LH_C_1_5_7 _lh_zipWith3_arg1_4_5 _lh_zipWith3_arg4_3_0 -> 
                  (let rec _lh_matchIdent_6_9 = _lh_zipWith3_arg4_3_0 in
                    (((((_lh_matchIdent_6_9 _lh_zipWith3_LH_C_0_5_7) _lh_zipWith3_LH_C_0_5_6) _lh_zipWith3_LH_C_1_5_7) _lh_zipWith3_LH_C_1_5_6) _lh_zipWith3_arg1_4_5))))))))
    | `LH_N -> 
      ys_1_7_9)
and mappend__d9__d0__d0 xs_6_1 ys_1_5_5 =
  (match xs_6_1 with
    | `LH_C(h_1_5_6, t_1_5_6) -> 
      (let rec _lh_zip3_LH_C_1_8_3 = ((mappend__d9__d0__d0 t_1_5_6) ys_1_5_5) in
        (let rec _lh_zip3_LH_C_0_8_3 = h_1_5_6 in
          (fun _lh_zip3_LH_C_0_8_4 _lh_zip3_LH_C_0_8_5 _lh_zip3_LH_C_1_8_4 _lh_zip3_LH_C_1_8_5 -> 
            (let rec _lh_zipWith3_LH_C_1_4_5 = (((zip3__d2__d0__d0 _lh_zip3_LH_C_1_8_4) _lh_zip3_LH_C_1_8_5) _lh_zip3_LH_C_1_8_3) in
              (let rec _lh_zipWith3_LH_C_0_4_5 = (let rec _lh_elt_LH_P3_2_2_3 = _lh_zip3_LH_C_0_8_3 in
                (let rec _lh_elt_LH_P3_1_2_3 = _lh_zip3_LH_C_0_8_5 in
                  (let rec _lh_elt_LH_P3_0_2_3 = _lh_zip3_LH_C_0_8_4 in
                    (fun _lh_elt_LH_P3_0_2_4 _lh_elt_LH_P3_0_2_5 _lh_elt_LH_P3_1_2_4 _lh_elt_LH_P3_1_2_5 _lh_elt_LH_P3_2_2_4 _lh_elt_LH_P3_2_2_5 -> 
                      (let rec tot_4 = (((((((_lh_elt_LH_P3_0_2_4 + _lh_elt_LH_P3_1_2_4) + _lh_elt_LH_P3_2_2_4) + _lh_elt_LH_P3_0_2_5) + _lh_elt_LH_P3_2_2_5) + _lh_elt_LH_P3_0_2_3) + _lh_elt_LH_P3_1_2_3) + _lh_elt_LH_P3_2_2_3) in
                        (if ((tot_4 < 2) || (tot_4 > 3)) then
                          0
                        else
                          (if (tot_4 = 3) then
                            1
                          else
                            _lh_elt_LH_P3_1_2_5))))))) in
                (fun _lh_zipWith3_LH_C_0_4_6 _lh_zipWith3_LH_C_0_4_7 _lh_zipWith3_LH_C_1_4_6 _lh_zipWith3_LH_C_1_4_7 _lh_zipWith3_arg1_3_7 -> 
                  (`LH_C((((_lh_zipWith3_arg1_3_7 _lh_zipWith3_LH_C_0_4_6) _lh_zipWith3_LH_C_0_4_7) _lh_zipWith3_LH_C_0_4_5), ((((zipWith3__d0__d0__d0 _lh_zipWith3_arg1_3_7) _lh_zipWith3_LH_C_1_4_6) _lh_zipWith3_LH_C_1_4_7) _lh_zipWith3_LH_C_1_4_5)))))))))
    | `LH_N -> 
      ys_1_5_5)
and mappend__d9__d0__d1 xs_1_9 ys_1_0_9 =
  (match xs_1_9 with
    | `LH_C(h_1_4_3, t_1_4_3) -> 
      (let rec _lh_zip3_LH_C_1_5_7 = ((mappend__d9__d0__d1 t_1_4_3) ys_1_0_9) in
        (let rec _lh_zip3_LH_C_0_5_7 = h_1_4_3 in
          (fun _lh_zip3_LH_C_0_5_8 _lh_zip3_LH_C_0_5_9 _lh_zip3_LH_C_1_5_8 _lh_zip3_LH_C_1_5_9 -> 
            (let rec _lh_zipWith3_LH_C_1_3_0 = (((zip3__d2__d0__d3 _lh_zip3_LH_C_1_5_8) _lh_zip3_LH_C_1_5_9) _lh_zip3_LH_C_1_5_7) in
              (let rec _lh_zipWith3_LH_C_0_3_0 = (let rec _lh_elt_LH_P3_2_1_5 = _lh_zip3_LH_C_0_5_7 in
                (let rec _lh_elt_LH_P3_1_1_5 = _lh_zip3_LH_C_0_5_9 in
                  (let rec _lh_elt_LH_P3_0_1_5 = _lh_zip3_LH_C_0_5_8 in
                    (fun _lh_elt_LH_P3_0_1_6 _lh_elt_LH_P3_0_1_7 _lh_elt_LH_P3_1_1_6 _lh_elt_LH_P3_1_1_7 _lh_elt_LH_P3_2_1_6 _lh_elt_LH_P3_2_1_7 -> 
                      (let rec tot_3 = (((((((_lh_elt_LH_P3_0_1_6 + _lh_elt_LH_P3_1_1_6) + _lh_elt_LH_P3_2_1_6) + _lh_elt_LH_P3_0_1_7) + _lh_elt_LH_P3_2_1_7) + _lh_elt_LH_P3_0_1_5) + _lh_elt_LH_P3_1_1_5) + _lh_elt_LH_P3_2_1_5) in
                        (if ((tot_3 < 2) || (tot_3 > 3)) then
                          0
                        else
                          (if (tot_3 = 3) then
                            1
                          else
                            _lh_elt_LH_P3_1_1_7))))))) in
                (fun _lh_zipWith3_LH_C_0_3_1 _lh_zipWith3_LH_C_0_3_2 _lh_zipWith3_LH_C_1_3_1 _lh_zipWith3_LH_C_1_3_2 _lh_zipWith3_arg1_2_3 -> 
                  (`LH_C((((_lh_zipWith3_arg1_2_3 _lh_zipWith3_LH_C_0_3_1) _lh_zipWith3_LH_C_0_3_2) _lh_zipWith3_LH_C_0_3_0), ((((zipWith3__d0__d0__d3 _lh_zipWith3_arg1_2_3) _lh_zipWith3_LH_C_1_3_1) _lh_zipWith3_LH_C_1_3_2) _lh_zipWith3_LH_C_1_3_0)))))))))
    | `LH_N -> 
      ys_1_0_9)
and shift__d0__d0__d0 _lh_shift_arg1_8 _lh_shift_arg2_8 =
  (((zip3__d0__d0__d2 ((shiftr__d0__d0__d0 _lh_shift_arg1_8) _lh_shift_arg2_8)) _lh_shift_arg2_8) ((shiftl__d0__d0__d0 _lh_shift_arg1_8) _lh_shift_arg2_8))
and shift__d0__d0__d1 _lh_shift_arg1_7 _lh_shift_arg2_7 =
  (((zip3__d0__d0__d5 ((shiftr__d0__d0__d1 _lh_shift_arg1_7) _lh_shift_arg2_7)) _lh_shift_arg2_7) ((shiftl__d0__d0__d1 _lh_shift_arg1_7) _lh_shift_arg2_7))
and shift__d1__d0__d0 _lh_shift_arg1_1_0 _lh_shift_arg2_1_0 =
  (((zip3__d1__d0__d2 ((shiftr__d1__d0__d0 _lh_shift_arg1_1_0) _lh_shift_arg2_1_0)) _lh_shift_arg2_1_0) ((shiftl__d1__d0__d0 _lh_shift_arg1_1_0) _lh_shift_arg2_1_0))
and shift__d1__d0__d1 _lh_shift_arg1_6 _lh_shift_arg2_6 =
  (((zip3__d1__d0__d5 ((shiftr__d1__d0__d1 _lh_shift_arg1_6) _lh_shift_arg2_6)) _lh_shift_arg2_6) ((shiftl__d1__d0__d1 _lh_shift_arg1_6) _lh_shift_arg2_6))
and shift__d2__d0__d0 _lh_shift_arg1_4 _lh_shift_arg2_4 =
  (((zip3__d2__d0__d2 ((shiftr__d2__d0__d0 _lh_shift_arg1_4) _lh_shift_arg2_4)) _lh_shift_arg2_4) ((shiftl__d2__d0__d0 _lh_shift_arg1_4) _lh_shift_arg2_4))
and shift__d2__d0__d1 _lh_shift_arg1_9 _lh_shift_arg2_9 =
  (((zip3__d2__d0__d5 ((shiftr__d2__d0__d1 _lh_shift_arg1_9) _lh_shift_arg2_9)) _lh_shift_arg2_9) ((shiftl__d2__d0__d1 _lh_shift_arg1_9) _lh_shift_arg2_9))
and shift__d3__d0__d0 _lh_shift_arg1_5 _lh_shift_arg2_5 =
  (((zip3__d3__d0__d2 ((shiftr__d3__d0__d0 _lh_shift_arg1_5) _lh_shift_arg2_5)) _lh_shift_arg2_5) ((shiftl__d3__d0__d0 _lh_shift_arg1_5) _lh_shift_arg2_5))
and shiftl__d0__d0__d0 _lh_shiftl_arg1_7 _lh_shiftl_arg2_7 =
  ((mappend__d5__d0__d0 (tail__d0__d0__d0 _lh_shiftl_arg2_7)) (let rec _lh_zip3_LH_C_1_9_0 = (fun _lh_zip3_LH_C_0_9_0 _lh_zip3_LH_C_0_9_1 _lh_zip3_LH_C_1_9_1 _lh_zip3_LH_C_1_9_2 _lh_zipWith3_arg1_4_2 _lh_zipWith3_arg3_1_5 _lh_zipWith3_arg4_2_7 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_9_2 = _lh_shiftl_arg1_7 in
      (fun _lh_zip3_LH_C_0_9_3 _lh_zip3_LH_C_0_9_4 _lh_zip3_LH_C_1_9_3 _lh_zip3_LH_C_1_9_4 -> 
        (let rec _lh_zipWith3_LH_C_1_5_4 = (((zip3__d0__d0__d1 _lh_zip3_LH_C_1_9_3) _lh_zip3_LH_C_1_9_4) _lh_zip3_LH_C_1_9_0) in
          (let rec _lh_zipWith3_LH_C_0_5_4 = (let rec _lh_elt_LH_P3_2_2_6 = _lh_zip3_LH_C_0_9_2 in
            (let rec _lh_elt_LH_P3_1_2_6 = _lh_zip3_LH_C_0_9_4 in
              (let rec _lh_elt_LH_P3_0_2_6 = _lh_zip3_LH_C_0_9_3 in
                (fun _lh_elt_arg2_5 _lh_elt_arg3_9 -> 
                  ((((_lh_elt_arg2_5 _lh_elt_LH_P3_0_2_6) _lh_elt_LH_P3_1_2_6) _lh_elt_LH_P3_2_2_6) _lh_elt_arg3_9))))) in
            (fun _lh_zipWith3_arg1_4_3 _lh_zipWith3_arg3_1_6 _lh_zipWith3_arg4_2_8 -> 
              (let rec _lh_matchIdent_6_3 = _lh_zipWith3_arg3_1_6 in
                ((((_lh_matchIdent_6_3 _lh_zipWith3_LH_C_0_5_4) _lh_zipWith3_LH_C_1_5_4) _lh_zipWith3_arg1_4_3) _lh_zipWith3_arg4_2_8)))))))))
and shiftl__d0__d0__d1 _lh_shiftl_arg1_5 _lh_shiftl_arg2_5 =
  ((mappend__d5__d0__d1 (tail__d0__d0__d1 _lh_shiftl_arg2_5)) (let rec _lh_zip3_LH_C_1_6_0 = (fun _lh_zip3_LH_C_0_6_0 _lh_zip3_LH_C_0_6_1 _lh_zip3_LH_C_1_6_1 _lh_zip3_LH_C_1_6_2 _lh_zipWith3_arg1_2_4 _lh_zipWith3_arg3_8 _lh_zipWith3_arg4_1_5 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_6_2 = _lh_shiftl_arg1_5 in
      (fun _lh_zip3_LH_C_0_6_3 _lh_zip3_LH_C_0_6_4 _lh_zip3_LH_C_1_6_3 _lh_zip3_LH_C_1_6_4 -> 
        (let rec _lh_zipWith3_LH_C_1_3_3 = (((zip3__d0__d0__d4 _lh_zip3_LH_C_1_6_3) _lh_zip3_LH_C_1_6_4) _lh_zip3_LH_C_1_6_0) in
          (let rec _lh_zipWith3_LH_C_0_3_3 = (let rec _lh_elt_LH_P3_2_1_8 = _lh_zip3_LH_C_0_6_2 in
            (let rec _lh_elt_LH_P3_1_1_8 = _lh_zip3_LH_C_0_6_4 in
              (let rec _lh_elt_LH_P3_0_1_8 = _lh_zip3_LH_C_0_6_3 in
                (fun _lh_elt_arg2_3 _lh_elt_arg3_5 -> 
                  ((((_lh_elt_arg2_3 _lh_elt_LH_P3_0_1_8) _lh_elt_LH_P3_1_1_8) _lh_elt_LH_P3_2_1_8) _lh_elt_arg3_5))))) in
            (fun _lh_zipWith3_arg1_2_5 _lh_zipWith3_arg3_9 _lh_zipWith3_arg4_1_6 -> 
              (let rec _lh_matchIdent_3_3 = _lh_zipWith3_arg3_9 in
                ((((_lh_matchIdent_3_3 _lh_zipWith3_LH_C_0_3_3) _lh_zipWith3_LH_C_1_3_3) _lh_zipWith3_arg1_2_5) _lh_zipWith3_arg4_1_6)))))))))
and shiftl__d1__d0__d0 _lh_shiftl_arg1_8 _lh_shiftl_arg2_8 =
  ((mappend__d7__d0__d0 (tail__d1__d0__d0 _lh_shiftl_arg2_8)) (let rec _lh_zip3_LH_C_1_1_0_0 = (fun _lh_zip3_LH_C_0_1_0_0 _lh_zip3_LH_C_0_1_0_1 _lh_zip3_LH_C_1_1_0_1 _lh_zip3_LH_C_1_1_0_2 _lh_zipWith3_LH_C_0_5_8 _lh_zipWith3_LH_C_1_5_8 _lh_zipWith3_arg1_4_6 _lh_zipWith3_arg4_3_1 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_1_0_2 = _lh_shiftl_arg1_8 in
      (fun _lh_zip3_LH_C_0_1_0_3 _lh_zip3_LH_C_0_1_0_4 _lh_zip3_LH_C_1_1_0_3 _lh_zip3_LH_C_1_1_0_4 -> 
        (let rec _lh_zipWith3_LH_C_1_5_9 = (((zip3__d1__d0__d1 _lh_zip3_LH_C_1_1_0_4) _lh_zip3_LH_C_1_1_0_3) _lh_zip3_LH_C_1_1_0_0) in
          (let rec _lh_zipWith3_LH_C_0_5_9 = (let rec _lh_elt_LH_P3_2_2_9 = _lh_zip3_LH_C_0_1_0_2 in
            (let rec _lh_elt_LH_P3_1_2_9 = _lh_zip3_LH_C_0_1_0_3 in
              (let rec _lh_elt_LH_P3_0_2_9 = _lh_zip3_LH_C_0_1_0_4 in
                (fun _lh_elt_LH_P3_0_3_0 _lh_elt_LH_P3_1_3_0 _lh_elt_LH_P3_2_3_0 _lh_elt_arg3_1_1 -> 
                  ((((((_lh_elt_arg3_1_1 _lh_elt_LH_P3_0_3_0) _lh_elt_LH_P3_0_2_9) _lh_elt_LH_P3_1_3_0) _lh_elt_LH_P3_1_2_9) _lh_elt_LH_P3_2_3_0) _lh_elt_LH_P3_2_2_9))))) in
            (fun _lh_zipWith3_LH_C_0_6_0 _lh_zipWith3_LH_C_1_6_0 _lh_zipWith3_arg1_4_7 _lh_zipWith3_arg4_3_2 -> 
              (let rec _lh_matchIdent_7_1 = _lh_zipWith3_arg4_3_2 in
                (((((_lh_matchIdent_7_1 _lh_zipWith3_LH_C_0_6_0) _lh_zipWith3_LH_C_0_5_9) _lh_zipWith3_LH_C_1_6_0) _lh_zipWith3_LH_C_1_5_9) _lh_zipWith3_arg1_4_7)))))))))
and shiftl__d1__d0__d1 _lh_shiftl_arg1_6 _lh_shiftl_arg2_6 =
  ((mappend__d7__d0__d1 (tail__d1__d0__d1 _lh_shiftl_arg2_6)) (let rec _lh_zip3_LH_C_1_7_1 = (fun _lh_zip3_LH_C_0_7_1 _lh_zip3_LH_C_0_7_2 _lh_zip3_LH_C_1_7_2 _lh_zip3_LH_C_1_7_3 _lh_zipWith3_LH_C_0_3_6 _lh_zipWith3_LH_C_1_3_6 _lh_zipWith3_arg1_3_1 _lh_zipWith3_arg4_2_1 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_7_3 = _lh_shiftl_arg1_6 in
      (fun _lh_zip3_LH_C_0_7_4 _lh_zip3_LH_C_0_7_5 _lh_zip3_LH_C_1_7_4 _lh_zip3_LH_C_1_7_5 -> 
        (let rec _lh_zipWith3_LH_C_1_3_7 = (((zip3__d1__d0__d4 _lh_zip3_LH_C_1_7_5) _lh_zip3_LH_C_1_7_4) _lh_zip3_LH_C_1_7_1) in
          (let rec _lh_zipWith3_LH_C_0_3_7 = (let rec _lh_elt_LH_P3_2_1_9 = _lh_zip3_LH_C_0_7_3 in
            (let rec _lh_elt_LH_P3_1_1_9 = _lh_zip3_LH_C_0_7_4 in
              (let rec _lh_elt_LH_P3_0_1_9 = _lh_zip3_LH_C_0_7_5 in
                (fun _lh_elt_LH_P3_0_2_0 _lh_elt_LH_P3_1_2_0 _lh_elt_LH_P3_2_2_0 _lh_elt_arg3_7 -> 
                  ((((((_lh_elt_arg3_7 _lh_elt_LH_P3_0_2_0) _lh_elt_LH_P3_0_1_9) _lh_elt_LH_P3_1_2_0) _lh_elt_LH_P3_1_1_9) _lh_elt_LH_P3_2_2_0) _lh_elt_LH_P3_2_1_9))))) in
            (fun _lh_zipWith3_LH_C_0_3_8 _lh_zipWith3_LH_C_1_3_8 _lh_zipWith3_arg1_3_2 _lh_zipWith3_arg4_2_2 -> 
              (let rec _lh_matchIdent_4_9 = _lh_zipWith3_arg4_2_2 in
                (((((_lh_matchIdent_4_9 _lh_zipWith3_LH_C_0_3_8) _lh_zipWith3_LH_C_0_3_7) _lh_zipWith3_LH_C_1_3_8) _lh_zipWith3_LH_C_1_3_7) _lh_zipWith3_arg1_3_2)))))))))
and shiftl__d2__d0__d0 _lh_shiftl_arg1_9 _lh_shiftl_arg2_9 =
  ((mappend__d9__d0__d0 (tail__d2__d0__d0 _lh_shiftl_arg2_9)) (let rec _lh_zip3_LH_C_1_1_1_7 = (fun _lh_zip3_LH_C_0_1_1_7 _lh_zip3_LH_C_0_1_1_8 _lh_zip3_LH_C_1_1_1_8 _lh_zip3_LH_C_1_1_1_9 _lh_zipWith3_LH_C_0_6_5 _lh_zipWith3_LH_C_0_6_6 _lh_zipWith3_LH_C_1_6_5 _lh_zipWith3_LH_C_1_6_6 _lh_zipWith3_arg1_5_6 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_1_1_9 = _lh_shiftl_arg1_9 in
      (fun _lh_zip3_LH_C_0_1_2_0 _lh_zip3_LH_C_0_1_2_1 _lh_zip3_LH_C_1_1_2_0 _lh_zip3_LH_C_1_1_2_1 -> 
        (let rec _lh_zipWith3_LH_C_1_6_7 = (((zip3__d2__d0__d1 _lh_zip3_LH_C_1_1_2_0) _lh_zip3_LH_C_1_1_2_1) _lh_zip3_LH_C_1_1_1_7) in
          (let rec _lh_zipWith3_LH_C_0_6_7 = (let rec _lh_elt_LH_P3_2_3_3 = _lh_zip3_LH_C_0_1_1_9 in
            (let rec _lh_elt_LH_P3_1_3_3 = _lh_zip3_LH_C_0_1_2_1 in
              (let rec _lh_elt_LH_P3_0_3_3 = _lh_zip3_LH_C_0_1_2_0 in
                (fun _lh_elt_LH_P3_0_3_4 _lh_elt_LH_P3_0_3_5 _lh_elt_LH_P3_1_3_4 _lh_elt_LH_P3_1_3_5 _lh_elt_LH_P3_2_3_4 _lh_elt_LH_P3_2_3_5 -> 
                  (let rec tot_5 = (((((((_lh_elt_LH_P3_0_3_4 + _lh_elt_LH_P3_1_3_4) + _lh_elt_LH_P3_2_3_4) + _lh_elt_LH_P3_0_3_5) + _lh_elt_LH_P3_2_3_5) + _lh_elt_LH_P3_0_3_3) + _lh_elt_LH_P3_1_3_3) + _lh_elt_LH_P3_2_3_3) in
                    (if ((tot_5 < 2) || (tot_5 > 3)) then
                      0
                    else
                      (if (tot_5 = 3) then
                        1
                      else
                        _lh_elt_LH_P3_1_3_5))))))) in
            (fun _lh_zipWith3_LH_C_0_6_8 _lh_zipWith3_LH_C_0_6_9 _lh_zipWith3_LH_C_1_6_8 _lh_zipWith3_LH_C_1_6_9 _lh_zipWith3_arg1_5_7 -> 
              (`LH_C((((_lh_zipWith3_arg1_5_7 _lh_zipWith3_LH_C_0_6_8) _lh_zipWith3_LH_C_0_6_9) _lh_zipWith3_LH_C_0_6_7), ((((zipWith3__d0__d0__d1 _lh_zipWith3_arg1_5_7) _lh_zipWith3_LH_C_1_6_8) _lh_zipWith3_LH_C_1_6_9) _lh_zipWith3_LH_C_1_6_7))))))))))
and shiftl__d2__d0__d1 _lh_shiftl_arg1_4 _lh_shiftl_arg2_4 =
  ((mappend__d9__d0__d1 (tail__d2__d0__d1 _lh_shiftl_arg2_4)) (let rec _lh_zip3_LH_C_1_4_8 = (fun _lh_zip3_LH_C_0_4_8 _lh_zip3_LH_C_0_4_9 _lh_zip3_LH_C_1_4_9 _lh_zip3_LH_C_1_5_0 _lh_zipWith3_LH_C_0_2_4 _lh_zipWith3_LH_C_0_2_5 _lh_zipWith3_LH_C_1_2_4 _lh_zipWith3_LH_C_1_2_5 _lh_zipWith3_arg1_1_9 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_5_0 = _lh_shiftl_arg1_4 in
      (fun _lh_zip3_LH_C_0_5_1 _lh_zip3_LH_C_0_5_2 _lh_zip3_LH_C_1_5_1 _lh_zip3_LH_C_1_5_2 -> 
        (let rec _lh_zipWith3_LH_C_1_2_6 = (((zip3__d2__d0__d4 _lh_zip3_LH_C_1_5_1) _lh_zip3_LH_C_1_5_2) _lh_zip3_LH_C_1_4_8) in
          (let rec _lh_zipWith3_LH_C_0_2_6 = (let rec _lh_elt_LH_P3_2_1_2 = _lh_zip3_LH_C_0_5_0 in
            (let rec _lh_elt_LH_P3_1_1_2 = _lh_zip3_LH_C_0_5_2 in
              (let rec _lh_elt_LH_P3_0_1_2 = _lh_zip3_LH_C_0_5_1 in
                (fun _lh_elt_LH_P3_0_1_3 _lh_elt_LH_P3_0_1_4 _lh_elt_LH_P3_1_1_3 _lh_elt_LH_P3_1_1_4 _lh_elt_LH_P3_2_1_3 _lh_elt_LH_P3_2_1_4 -> 
                  (let rec tot_2 = (((((((_lh_elt_LH_P3_0_1_3 + _lh_elt_LH_P3_1_1_3) + _lh_elt_LH_P3_2_1_3) + _lh_elt_LH_P3_0_1_4) + _lh_elt_LH_P3_2_1_4) + _lh_elt_LH_P3_0_1_2) + _lh_elt_LH_P3_1_1_2) + _lh_elt_LH_P3_2_1_2) in
                    (if ((tot_2 < 2) || (tot_2 > 3)) then
                      0
                    else
                      (if (tot_2 = 3) then
                        1
                      else
                        _lh_elt_LH_P3_1_1_4))))))) in
            (fun _lh_zipWith3_LH_C_0_2_7 _lh_zipWith3_LH_C_0_2_8 _lh_zipWith3_LH_C_1_2_7 _lh_zipWith3_LH_C_1_2_8 _lh_zipWith3_arg1_2_0 -> 
              (`LH_C((((_lh_zipWith3_arg1_2_0 _lh_zipWith3_LH_C_0_2_7) _lh_zipWith3_LH_C_0_2_8) _lh_zipWith3_LH_C_0_2_6), ((((zipWith3__d0__d0__d4 _lh_zipWith3_arg1_2_0) _lh_zipWith3_LH_C_1_2_7) _lh_zipWith3_LH_C_1_2_8) _lh_zipWith3_LH_C_1_2_6))))))))))
and shiftl__d3__d0__d0 _lh_shiftl_arg1_1_0 _lh_shiftl_arg2_1_0 =
  ((mappend__d1_d1__d0__d0 (tail__d3__d0__d0 _lh_shiftl_arg2_1_0)) (let rec _lh_zip3_LH_C_1_1_2_4 = (fun _lh_zip3_LH_C_0_1_2_4 _lh_zip3_LH_C_0_1_2_5 _lh_zip3_LH_C_1_1_2_5 _lh_zip3_LH_C_1_1_2_6 f_9_0 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_1_2_6 = _lh_shiftl_arg1_1_0 in
      (fun _lh_zip3_LH_C_0_1_2_7 _lh_zip3_LH_C_0_1_2_8 _lh_zip3_LH_C_1_1_2_7 _lh_zip3_LH_C_1_1_2_8 -> 
        (let rec t_2_8_7 = (((zip3__d3__d0__d1 _lh_zip3_LH_C_1_1_2_7) _lh_zip3_LH_C_1_1_2_8) _lh_zip3_LH_C_1_1_2_4) in
          (let rec h_2_8_7 = (let rec _lh_row_LH_P3_2_2 = _lh_zip3_LH_C_0_1_2_6 in
            (let rec _lh_row_LH_P3_1_2 = _lh_zip3_LH_C_0_1_2_8 in
              (let rec _lh_row_LH_P3_0_2 = _lh_zip3_LH_C_0_1_2_7 in
                (fun _lh_dummy_8 -> 
                  ((((zipWith3__d0__d0__d5 elt__d0__d0__d0) ((shift__d0__d0__d1 0) _lh_row_LH_P3_0_2)) ((shift__d1__d0__d1 0) _lh_row_LH_P3_1_2)) ((shift__d2__d0__d1 0) _lh_row_LH_P3_2_2)))))) in
            (fun f_9_1 -> 
              (`LH_C((f_9_1 h_2_8_7), ((map__d2__d0__d1 f_9_1) t_2_8_7))))))))))
and shiftr__d0__d0__d0 _lh_shiftr_arg1_5 _lh_shiftr_arg2_5 =
  ((mappend__d6__d0__d0 (let rec t_1_4_2 = (fun ys_1_0_7 -> 
    ys_1_0_7) in
    (let rec h_1_4_2 = _lh_shiftr_arg1_5 in
      (fun ys_1_0_8 -> 
        (let rec _lh_zip3_LH_C_1_5_5 = ((mappend__d6__d0__d1 t_1_4_2) ys_1_0_8) in
          (let rec _lh_zip3_LH_C_0_5_5 = h_1_4_2 in
            (fun _lh_zip3_arg2_1_8 _lh_zip3_arg3_1_8 -> 
              (let rec _lh_matchIdent_3_0 = _lh_zip3_arg2_1_8 in
                (match _lh_matchIdent_3_0 with
                  | `LH_C(_lh_zip3_LH_C_0_5_6, _lh_zip3_LH_C_1_5_6) -> 
                    (let rec _lh_matchIdent_3_1 = _lh_zip3_arg3_1_8 in
                      ((((_lh_matchIdent_3_1 _lh_zip3_LH_C_0_5_5) _lh_zip3_LH_C_0_5_6) _lh_zip3_LH_C_1_5_5) _lh_zip3_LH_C_1_5_6))
                  | `LH_N -> 
                    (fun _lh_zipWith3_arg1_2_2 _lh_zipWith3_arg3_7 _lh_zipWith3_arg4_1_4 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d0__d0__d0 _lh_shiftr_arg2_5))
and shiftr__d0__d0__d1 _lh_shiftr_arg1_6 _lh_shiftr_arg2_6 =
  ((mappend__d6__d0__d2 (let rec t_1_4_5 = (fun ys_1_2_6 -> 
    ys_1_2_6) in
    (let rec h_1_4_5 = _lh_shiftr_arg1_6 in
      (fun ys_1_2_7 -> 
        (let rec _lh_zip3_LH_C_1_6_7 = ((mappend__d6__d0__d3 t_1_4_5) ys_1_2_7) in
          (let rec _lh_zip3_LH_C_0_6_7 = h_1_4_5 in
            (fun _lh_zip3_arg2_2_7 _lh_zip3_arg3_2_7 -> 
              (let rec _lh_matchIdent_4_1 = _lh_zip3_arg2_2_7 in
                (match _lh_matchIdent_4_1 with
                  | `LH_C(_lh_zip3_LH_C_0_6_8, _lh_zip3_LH_C_1_6_8) -> 
                    (let rec _lh_matchIdent_4_2 = _lh_zip3_arg3_2_7 in
                      ((((_lh_matchIdent_4_2 _lh_zip3_LH_C_0_6_7) _lh_zip3_LH_C_0_6_8) _lh_zip3_LH_C_1_6_7) _lh_zip3_LH_C_1_6_8))
                  | `LH_N -> 
                    (fun _lh_zipWith3_arg1_2_8 _lh_zipWith3_arg3_1_2 _lh_zipWith3_arg4_1_9 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d0__d0__d1 _lh_shiftr_arg2_6))
and shiftr__d1__d0__d0 _lh_shiftr_arg1_9 _lh_shiftr_arg2_9 =
  ((mappend__d8__d0__d0 (let rec t_1_6_0 = (fun ys_1_6_7 -> 
    ys_1_6_7) in
    (let rec h_1_6_0 = _lh_shiftr_arg1_9 in
      (fun ys_1_6_8 -> 
        (let rec _lh_zip3_LH_C_1_9_5 = ((mappend__d8__d0__d1 t_1_6_0) ys_1_6_8) in
          (let rec _lh_zip3_LH_C_0_9_5 = h_1_6_0 in
            (fun _lh_zip3_arg2_4_0 _lh_zip3_arg3_4_0 -> 
              (let rec _lh_matchIdent_6_4 = _lh_zip3_arg2_4_0 in
                (match _lh_matchIdent_6_4 with
                  | `LH_C(_lh_zip3_LH_C_0_9_6, _lh_zip3_LH_C_1_9_6) -> 
                    (let rec _lh_matchIdent_6_5 = _lh_zip3_arg3_4_0 in
                      ((((_lh_matchIdent_6_5 _lh_zip3_LH_C_0_9_6) _lh_zip3_LH_C_0_9_5) _lh_zip3_LH_C_1_9_6) _lh_zip3_LH_C_1_9_5))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_5_5 _lh_zipWith3_LH_C_1_5_5 _lh_zipWith3_arg1_4_4 _lh_zipWith3_arg4_2_9 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d1__d0__d0 _lh_shiftr_arg2_9))
and shiftr__d1__d0__d1 _lh_shiftr_arg1_4 _lh_shiftr_arg2_4 =
  ((mappend__d8__d0__d2 (let rec t_1_4_1 = (fun ys_1_0_5 -> 
    ys_1_0_5) in
    (let rec h_1_4_1 = _lh_shiftr_arg1_4 in
      (fun ys_1_0_6 -> 
        (let rec _lh_zip3_LH_C_1_5_3 = ((mappend__d8__d0__d3 t_1_4_1) ys_1_0_6) in
          (let rec _lh_zip3_LH_C_0_5_3 = h_1_4_1 in
            (fun _lh_zip3_arg2_1_6 _lh_zip3_arg3_1_6 -> 
              (let rec _lh_matchIdent_2_7 = _lh_zip3_arg2_1_6 in
                (match _lh_matchIdent_2_7 with
                  | `LH_C(_lh_zip3_LH_C_0_5_4, _lh_zip3_LH_C_1_5_4) -> 
                    (let rec _lh_matchIdent_2_8 = _lh_zip3_arg3_1_6 in
                      ((((_lh_matchIdent_2_8 _lh_zip3_LH_C_0_5_4) _lh_zip3_LH_C_0_5_3) _lh_zip3_LH_C_1_5_4) _lh_zip3_LH_C_1_5_3))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_2_9 _lh_zipWith3_LH_C_1_2_9 _lh_zipWith3_arg1_2_1 _lh_zipWith3_arg4_1_3 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d1__d0__d1 _lh_shiftr_arg2_4))
and shiftr__d2__d0__d0 _lh_shiftr_arg1_1_0 _lh_shiftr_arg2_1_0 =
  ((mappend__d1_d0__d0__d0 (let rec t_2_8_5 = (fun ys_2_7_9 -> 
    ys_2_7_9) in
    (let rec h_2_8_5 = _lh_shiftr_arg1_1_0 in
      (fun ys_2_8_0 -> 
        (let rec _lh_zip3_LH_C_1_1_2_2 = ((mappend__d1_d0__d0__d1 t_2_8_5) ys_2_8_0) in
          (let rec _lh_zip3_LH_C_0_1_2_2 = h_2_8_5 in
            (fun _lh_zip3_arg2_5_5 _lh_zip3_arg3_5_5 -> 
              (let rec _lh_matchIdent_8_6 = _lh_zip3_arg2_5_5 in
                (match _lh_matchIdent_8_6 with
                  | `LH_C(_lh_zip3_LH_C_0_1_2_3, _lh_zip3_LH_C_1_1_2_3) -> 
                    (let rec _lh_matchIdent_8_7 = _lh_zip3_arg3_5_5 in
                      ((((_lh_matchIdent_8_7 _lh_zip3_LH_C_0_1_2_2) _lh_zip3_LH_C_0_1_2_3) _lh_zip3_LH_C_1_1_2_2) _lh_zip3_LH_C_1_1_2_3))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_7_0 _lh_zipWith3_LH_C_0_7_1 _lh_zipWith3_LH_C_1_7_0 _lh_zipWith3_LH_C_1_7_1 _lh_zipWith3_arg1_5_8 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d2__d0__d0 _lh_shiftr_arg2_1_0))
and shiftr__d2__d0__d1 _lh_shiftr_arg1_7 _lh_shiftr_arg2_7 =
  ((mappend__d1_d0__d0__d2 (let rec t_1_4_6 = (fun ys_1_2_9 -> 
    ys_1_2_9) in
    (let rec h_1_4_6 = _lh_shiftr_arg1_7 in
      (fun ys_1_3_0 -> 
        (let rec _lh_zip3_LH_C_1_6_9 = ((mappend__d1_d0__d0__d3 t_1_4_6) ys_1_3_0) in
          (let rec _lh_zip3_LH_C_0_6_9 = h_1_4_6 in
            (fun _lh_zip3_arg2_2_8 _lh_zip3_arg3_2_8 -> 
              (let rec _lh_matchIdent_4_3 = _lh_zip3_arg2_2_8 in
                (match _lh_matchIdent_4_3 with
                  | `LH_C(_lh_zip3_LH_C_0_7_0, _lh_zip3_LH_C_1_7_0) -> 
                    (let rec _lh_matchIdent_4_4 = _lh_zip3_arg3_2_8 in
                      ((((_lh_matchIdent_4_4 _lh_zip3_LH_C_0_6_9) _lh_zip3_LH_C_0_7_0) _lh_zip3_LH_C_1_6_9) _lh_zip3_LH_C_1_7_0))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_3_4 _lh_zipWith3_LH_C_0_3_5 _lh_zipWith3_LH_C_1_3_4 _lh_zipWith3_LH_C_1_3_5 _lh_zipWith3_arg1_2_9 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d2__d0__d1 _lh_shiftr_arg2_7))
and shiftr__d3__d0__d0 _lh_shiftr_arg1_8 _lh_shiftr_arg2_8 =
  ((mappend__d1_d2__d0__d0 (let rec t_1_5_2 = (fun ys_1_4_0 -> 
    ys_1_4_0) in
    (let rec h_1_5_2 = _lh_shiftr_arg1_8 in
      (fun ys_1_4_1 -> 
        (let rec _lh_zip3_LH_C_1_7_6 = ((mappend__d1_d2__d0__d1 t_1_5_2) ys_1_4_1) in
          (let rec _lh_zip3_LH_C_0_7_6 = h_1_5_2 in
            (fun _lh_zip3_arg2_3_0 _lh_zip3_arg3_3_0 -> 
              (let rec _lh_matchIdent_5_0 = _lh_zip3_arg2_3_0 in
                (match _lh_matchIdent_5_0 with
                  | `LH_C(_lh_zip3_LH_C_0_7_7, _lh_zip3_LH_C_1_7_7) -> 
                    (let rec _lh_matchIdent_5_1 = _lh_zip3_arg3_3_0 in
                      ((((_lh_matchIdent_5_1 _lh_zip3_LH_C_0_7_6) _lh_zip3_LH_C_0_7_7) _lh_zip3_LH_C_1_7_6) _lh_zip3_LH_C_1_7_7))
                  | `LH_N -> 
                    (fun f_4_8 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d3__d0__d0 _lh_shiftr_arg2_8))
and star__d0__d0__d0 _lh_star_arg1_1 =
  (match _lh_star_arg1_1 with
    | 0 -> 
      (let rec t_1_6_7 = (let rec t_1_6_8 = (fun ys_1_9_2 -> 
        ys_1_9_2) in
        (let rec h_1_6_7 = ' ' in
          (fun ys_1_9_3 -> 
            (let rec t_1_6_9 = ((mappend__d0__d0__d1 t_1_6_8) ys_1_9_3) in
              (let rec h_1_6_8 = h_1_6_7 in
                (fun ys_1_9_4 -> 
                  (let rec t_1_7_0 = ((mappend__d2__d0__d1 t_1_6_9) ys_1_9_4) in
                    (let rec h_1_6_9 = h_1_6_8 in
                      (fun ys_1_9_5 -> 
                        (`LH_C(h_1_6_9, ((mappend__d1__d0__d2 t_1_7_0) ys_1_9_5)))))))))))) in
        (let rec h_1_7_0 = ' ' in
          (fun ys_1_9_6 -> 
            (let rec t_1_7_1 = ((mappend__d0__d0__d2 t_1_6_7) ys_1_9_6) in
              (let rec h_1_7_1 = h_1_7_0 in
                (fun ys_1_9_7 -> 
                  (let rec t_1_7_2 = ((mappend__d2__d0__d2 t_1_7_1) ys_1_9_7) in
                    (let rec h_1_7_2 = h_1_7_1 in
                      (fun ys_1_9_8 -> 
                        (`LH_C(h_1_7_2, ((mappend__d1__d0__d3 t_1_7_2) ys_1_9_8))))))))))))
    | 1 -> 
      (let rec t_1_7_3 = (let rec t_1_7_4 = (fun ys_1_9_9 -> 
        ys_1_9_9) in
        (let rec h_1_7_3 = 'o' in
          (fun ys_2_0_0 -> 
            (let rec t_1_7_5 = ((mappend__d0__d0__d3 t_1_7_4) ys_2_0_0) in
              (let rec h_1_7_4 = h_1_7_3 in
                (fun ys_2_0_1 -> 
                  (let rec t_1_7_6 = ((mappend__d2__d0__d3 t_1_7_5) ys_2_0_1) in
                    (let rec h_1_7_5 = h_1_7_4 in
                      (fun ys_2_0_2 -> 
                        (`LH_C(h_1_7_5, ((mappend__d1__d0__d4 t_1_7_6) ys_2_0_2)))))))))))) in
        (let rec h_1_7_6 = ' ' in
          (fun ys_2_0_3 -> 
            (let rec t_1_7_7 = ((mappend__d0__d0__d4 t_1_7_3) ys_2_0_3) in
              (let rec h_1_7_7 = h_1_7_6 in
                (fun ys_2_0_4 -> 
                  (let rec t_1_7_8 = ((mappend__d2__d0__d4 t_1_7_7) ys_2_0_4) in
                    (let rec h_1_7_8 = h_1_7_7 in
                      (fun ys_2_0_5 -> 
                        (`LH_C(h_1_7_8, ((mappend__d1__d0__d5 t_1_7_8) ys_2_0_5))))))))))))
    | _ -> 
      (failwith "error"))
and start__d0__d0__d0 ys_2_6_7 f_8_2 n_1_2_9 =
  (let rec t_1_8_0 = (let rec t_1_8_1 = (let rec t_1_8_2 = (let rec t_1_8_3 = (let rec t_1_8_4 = (let rec t_1_8_5 = (let rec t_1_8_6 = (let rec t_1_8_7 = (let rec t_1_8_8 = (let rec t_1_8_9 = (let rec t_1_9_0 = (let rec t_1_9_1 = (let rec t_1_9_2 = (let rec t_1_9_3 = (let rec t_1_9_4 = (fun ys_2_1_0 -> 
    ys_2_1_0) in
    (let rec h_1_8_0 = (let rec t_1_9_5 = (let rec t_1_9_6 = (let rec t_1_9_7 = (let rec t_1_9_8 = (let rec t_1_9_9 = (let rec t_2_0_0 = (let rec t_2_0_1 = (let rec t_2_0_2 = (let rec t_2_0_3 = (let rec t_2_0_4 = (let rec t_2_0_5 = (let rec t_2_0_6 = (let rec t_2_0_7 = (let rec t_2_0_8 = (let rec t_2_0_9 = (let rec t_2_1_0 = (let rec t_2_1_1 = (let rec t_2_1_2 = (let rec t_2_1_3 = (let rec t_2_1_4 = (let rec t_2_1_5 = (let rec t_2_1_6 = (let rec t_2_1_7 = (let rec t_2_1_8 = (let rec t_2_1_9 = (let rec t_2_2_0 = (let rec t_2_2_1 = (fun ys_2_1_1 -> 
      ys_2_1_1) in
      (let rec h_1_8_1 = 0 in
        (fun ys_2_1_2 -> 
          (let rec t_2_2_2 = ((mappend__d1_d3__d0__d8 t_2_2_1) ys_2_1_2) in
            (let rec h_1_8_2 = h_1_8_1 in
              (fun n_8_8 -> 
                (`LH_C(h_1_8_2, ((take__d1__d0__d8 (n_8_8 - 1)) t_2_2_2))))))))) in
      (let rec h_1_8_3 = 1 in
        (fun ys_2_1_3 -> 
          (let rec t_2_2_3 = ((mappend__d1_d3__d0__d9 t_2_2_0) ys_2_1_3) in
            (let rec h_1_8_4 = h_1_8_3 in
              (fun n_8_9 -> 
                (`LH_C(h_1_8_4, ((take__d1__d0__d9 (n_8_9 - 1)) t_2_2_3))))))))) in
      (let rec h_1_8_5 = 1 in
        (fun ys_2_1_4 -> 
          (let rec t_2_2_4 = ((mappend__d1_d3__d0__d1_d0 t_2_1_9) ys_2_1_4) in
            (let rec h_1_8_6 = h_1_8_5 in
              (fun n_9_0 -> 
                (`LH_C(h_1_8_6, ((take__d1__d0__d1_d0 (n_9_0 - 1)) t_2_2_4))))))))) in
      (let rec h_1_8_7 = 1 in
        (fun ys_2_1_5 -> 
          (let rec t_2_2_5 = ((mappend__d1_d3__d0__d1_d1 t_2_1_8) ys_2_1_5) in
            (let rec h_1_8_8 = h_1_8_7 in
              (fun n_9_1 -> 
                (`LH_C(h_1_8_8, ((take__d1__d0__d1_d1 (n_9_1 - 1)) t_2_2_5))))))))) in
      (let rec h_1_8_9 = 1 in
        (fun ys_2_1_6 -> 
          (let rec t_2_2_6 = ((mappend__d1_d3__d0__d1_d2 t_2_1_7) ys_2_1_6) in
            (let rec h_1_9_0 = h_1_8_9 in
              (fun n_9_2 -> 
                (`LH_C(h_1_9_0, ((take__d1__d0__d1_d2 (n_9_2 - 1)) t_2_2_6))))))))) in
      (let rec h_1_9_1 = 1 in
        (fun ys_2_1_7 -> 
          (let rec t_2_2_7 = ((mappend__d1_d3__d0__d1_d3 t_2_1_6) ys_2_1_7) in
            (let rec h_1_9_2 = h_1_9_1 in
              (fun n_9_3 -> 
                (`LH_C(h_1_9_2, ((take__d1__d0__d1_d3 (n_9_3 - 1)) t_2_2_7))))))))) in
      (let rec h_1_9_3 = 0 in
        (fun ys_2_1_8 -> 
          (let rec t_2_2_8 = ((mappend__d1_d3__d0__d1_d4 t_2_1_5) ys_2_1_8) in
            (let rec h_1_9_4 = h_1_9_3 in
              (fun n_9_4 -> 
                (`LH_C(h_1_9_4, ((take__d1__d0__d1_d4 (n_9_4 - 1)) t_2_2_8))))))))) in
      (let rec h_1_9_5 = 1 in
        (fun ys_2_1_9 -> 
          (let rec t_2_2_9 = ((mappend__d1_d3__d0__d1_d5 t_2_1_4) ys_2_1_9) in
            (let rec h_1_9_6 = h_1_9_5 in
              (fun n_9_5 -> 
                (`LH_C(h_1_9_6, ((take__d1__d0__d1_d5 (n_9_5 - 1)) t_2_2_9))))))))) in
      (let rec h_1_9_7 = 1 in
        (fun ys_2_2_0 -> 
          (let rec t_2_3_0 = ((mappend__d1_d3__d0__d1_d6 t_2_1_3) ys_2_2_0) in
            (let rec h_1_9_8 = h_1_9_7 in
              (fun n_9_6 -> 
                (`LH_C(h_1_9_8, ((take__d1__d0__d1_d6 (n_9_6 - 1)) t_2_3_0))))))))) in
      (let rec h_1_9_9 = 1 in
        (fun ys_2_2_1 -> 
          (let rec t_2_3_1 = ((mappend__d1_d3__d0__d1_d7 t_2_1_2) ys_2_2_1) in
            (let rec h_2_0_0 = h_1_9_9 in
              (fun n_9_7 -> 
                (`LH_C(h_2_0_0, ((take__d1__d0__d1_d7 (n_9_7 - 1)) t_2_3_1))))))))) in
      (let rec h_2_0_1 = 1 in
        (fun ys_2_2_2 -> 
          (let rec t_2_3_2 = ((mappend__d1_d3__d0__d1_d8 t_2_1_1) ys_2_2_2) in
            (let rec h_2_0_2 = h_2_0_1 in
              (fun n_9_8 -> 
                (`LH_C(h_2_0_2, ((take__d1__d0__d1_d8 (n_9_8 - 1)) t_2_3_2))))))))) in
      (let rec h_2_0_3 = 1 in
        (fun ys_2_2_3 -> 
          (let rec t_2_3_3 = ((mappend__d1_d3__d0__d1_d9 t_2_1_0) ys_2_2_3) in
            (let rec h_2_0_4 = h_2_0_3 in
              (fun n_9_9 -> 
                (`LH_C(h_2_0_4, ((take__d1__d0__d1_d9 (n_9_9 - 1)) t_2_3_3))))))))) in
      (let rec h_2_0_5 = 0 in
        (fun ys_2_2_4 -> 
          (let rec t_2_3_4 = ((mappend__d1_d3__d0__d2_d0 t_2_0_9) ys_2_2_4) in
            (let rec h_2_0_6 = h_2_0_5 in
              (fun n_1_0_0 -> 
                (`LH_C(h_2_0_6, ((take__d1__d0__d2_d0 (n_1_0_0 - 1)) t_2_3_4))))))))) in
      (let rec h_2_0_7 = 1 in
        (fun ys_2_2_5 -> 
          (let rec t_2_3_5 = ((mappend__d1_d3__d0__d2_d1 t_2_0_8) ys_2_2_5) in
            (let rec h_2_0_8 = h_2_0_7 in
              (fun n_1_0_1 -> 
                (`LH_C(h_2_0_8, ((take__d1__d0__d2_d1 (n_1_0_1 - 1)) t_2_3_5))))))))) in
      (let rec h_2_0_9 = 1 in
        (fun ys_2_2_6 -> 
          (let rec t_2_3_6 = ((mappend__d1_d3__d0__d2_d2 t_2_0_7) ys_2_2_6) in
            (let rec h_2_1_0 = h_2_0_9 in
              (fun n_1_0_2 -> 
                (`LH_C(h_2_1_0, ((take__d1__d0__d2_d2 (n_1_0_2 - 1)) t_2_3_6))))))))) in
      (let rec h_2_1_1 = 1 in
        (fun ys_2_2_7 -> 
          (let rec t_2_3_7 = ((mappend__d1_d3__d0__d2_d3 t_2_0_6) ys_2_2_7) in
            (let rec h_2_1_2 = h_2_1_1 in
              (fun n_1_0_3 -> 
                (`LH_C(h_2_1_2, ((take__d1__d0__d2_d3 (n_1_0_3 - 1)) t_2_3_7))))))))) in
      (let rec h_2_1_3 = 1 in
        (fun ys_2_2_8 -> 
          (let rec t_2_3_8 = ((mappend__d1_d3__d0__d2_d4 t_2_0_5) ys_2_2_8) in
            (let rec h_2_1_4 = h_2_1_3 in
              (fun n_1_0_4 -> 
                (`LH_C(h_2_1_4, ((take__d1__d0__d2_d4 (n_1_0_4 - 1)) t_2_3_8))))))))) in
      (let rec h_2_1_5 = 1 in
        (fun ys_2_2_9 -> 
          (let rec t_2_3_9 = ((mappend__d1_d3__d0__d2_d5 t_2_0_4) ys_2_2_9) in
            (let rec h_2_1_6 = h_2_1_5 in
              (fun n_1_0_5 -> 
                (`LH_C(h_2_1_6, ((take__d1__d0__d2_d5 (n_1_0_5 - 1)) t_2_3_9))))))))) in
      (let rec h_2_1_7 = 0 in
        (fun ys_2_3_0 -> 
          (let rec t_2_4_0 = ((mappend__d1_d3__d0__d2_d6 t_2_0_3) ys_2_3_0) in
            (let rec h_2_1_8 = h_2_1_7 in
              (fun n_1_0_6 -> 
                (`LH_C(h_2_1_8, ((take__d1__d0__d2_d6 (n_1_0_6 - 1)) t_2_4_0))))))))) in
      (let rec h_2_1_9 = 1 in
        (fun ys_2_3_1 -> 
          (let rec t_2_4_1 = ((mappend__d1_d3__d0__d2_d7 t_2_0_2) ys_2_3_1) in
            (let rec h_2_2_0 = h_2_1_9 in
              (fun n_1_0_7 -> 
                (`LH_C(h_2_2_0, ((take__d1__d0__d2_d7 (n_1_0_7 - 1)) t_2_4_1))))))))) in
      (let rec h_2_2_1 = 1 in
        (fun ys_2_3_2 -> 
          (let rec t_2_4_2 = ((mappend__d1_d3__d0__d2_d8 t_2_0_1) ys_2_3_2) in
            (let rec h_2_2_2 = h_2_2_1 in
              (fun n_1_0_8 -> 
                (`LH_C(h_2_2_2, ((take__d1__d0__d2_d8 (n_1_0_8 - 1)) t_2_4_2))))))))) in
      (let rec h_2_2_3 = 1 in
        (fun ys_2_3_3 -> 
          (let rec t_2_4_3 = ((mappend__d1_d3__d0__d2 t_2_0_0) ys_2_3_3) in
            (let rec h_2_2_4 = h_2_2_3 in
              (fun n_1_0_9 -> 
                (`LH_C(h_2_2_4, ((take__d1__d0__d2 (n_1_0_9 - 1)) t_2_4_3))))))))) in
      (let rec h_2_2_5 = 1 in
        (fun ys_2_3_4 -> 
          (let rec t_2_4_4 = ((mappend__d1_d3__d0__d3 t_1_9_9) ys_2_3_4) in
            (let rec h_2_2_6 = h_2_2_5 in
              (fun n_1_1_0 -> 
                (`LH_C(h_2_2_6, ((take__d1__d0__d3 (n_1_1_0 - 1)) t_2_4_4))))))))) in
      (let rec h_2_2_7 = 1 in
        (fun ys_2_3_5 -> 
          (let rec t_2_4_5 = ((mappend__d1_d3__d0__d4 t_1_9_8) ys_2_3_5) in
            (let rec h_2_2_8 = h_2_2_7 in
              (fun n_1_1_1 -> 
                (`LH_C(h_2_2_8, ((take__d1__d0__d4 (n_1_1_1 - 1)) t_2_4_5))))))))) in
      (let rec h_2_2_9 = 0 in
        (fun ys_2_3_6 -> 
          (let rec t_2_4_6 = ((mappend__d1_d3__d0__d5 t_1_9_7) ys_2_3_6) in
            (let rec h_2_3_0 = h_2_2_9 in
              (fun n_1_1_2 -> 
                (`LH_C(h_2_3_0, ((take__d1__d0__d5 (n_1_1_2 - 1)) t_2_4_6))))))))) in
      (let rec h_2_3_1 = 0 in
        (fun ys_2_3_7 -> 
          (let rec t_2_4_7 = ((mappend__d1_d3__d0__d6 t_1_9_6) ys_2_3_7) in
            (let rec h_2_3_2 = h_2_3_1 in
              (fun n_1_1_3 -> 
                (`LH_C(h_2_3_2, ((take__d1__d0__d6 (n_1_1_3 - 1)) t_2_4_7))))))))) in
      (let rec h_2_3_3 = 0 in
        (fun ys_2_3_8 -> 
          (let rec t_2_4_8 = ((mappend__d1_d3__d0__d7 t_1_9_5) ys_2_3_8) in
            (let rec h_2_3_4 = h_2_3_3 in
              (fun n_1_1_4 -> 
                (`LH_C(h_2_3_4, ((take__d1__d0__d7 (n_1_1_4 - 1)) t_2_4_8))))))))) in
      (fun ys_2_3_9 -> 
        (let rec t_2_4_9 = ((mappend__d1_d4__d0__d1 t_1_9_4) ys_2_3_9) in
          (let rec h_2_3_5 = h_1_8_0 in
            (fun f_6_8 -> 
              (let rec t_2_5_0 = ((map__d4__d0__d2 f_6_8) t_2_4_9) in
                (let rec h_2_3_6 = (f_6_8 h_2_3_5) in
                  (fun n_1_1_5 -> 
                    (`LH_C(h_2_3_6, ((take__d0__d0__d1 (n_1_1_5 - 1)) t_2_5_0)))))))))))) in
    (let rec h_2_3_7 = (fun ys_2_4_0 -> 
      ys_2_4_0) in
      (fun ys_2_4_1 -> 
        (let rec t_2_5_1 = ((mappend__d1_d4__d0__d2 t_1_9_3) ys_2_4_1) in
          (let rec h_2_3_8 = h_2_3_7 in
            (fun f_6_9 -> 
              (let rec t_2_5_2 = ((map__d4__d0__d3 f_6_9) t_2_5_1) in
                (let rec h_2_3_9 = (f_6_9 h_2_3_8) in
                  (fun n_1_1_6 -> 
                    (`LH_C(h_2_3_9, ((take__d0__d0__d2 (n_1_1_6 - 1)) t_2_5_2)))))))))))) in
    (let rec h_2_4_0 = (fun ys_2_4_2 -> 
      ys_2_4_2) in
      (fun ys_2_4_3 -> 
        (let rec t_2_5_3 = ((mappend__d1_d4__d0__d3 t_1_9_2) ys_2_4_3) in
          (let rec h_2_4_1 = h_2_4_0 in
            (fun f_7_0 -> 
              (let rec t_2_5_4 = ((map__d4__d0__d4 f_7_0) t_2_5_3) in
                (let rec h_2_4_2 = (f_7_0 h_2_4_1) in
                  (fun n_1_1_7 -> 
                    (`LH_C(h_2_4_2, ((take__d0__d0__d3 (n_1_1_7 - 1)) t_2_5_4)))))))))))) in
    (let rec h_2_4_3 = (fun ys_2_4_4 -> 
      ys_2_4_4) in
      (fun ys_2_4_5 -> 
        (let rec t_2_5_5 = ((mappend__d1_d4__d0__d4 t_1_9_1) ys_2_4_5) in
          (let rec h_2_4_4 = h_2_4_3 in
            (fun f_7_1 -> 
              (let rec t_2_5_6 = ((map__d4__d0__d5 f_7_1) t_2_5_5) in
                (let rec h_2_4_5 = (f_7_1 h_2_4_4) in
                  (fun n_1_1_8 -> 
                    (`LH_C(h_2_4_5, ((take__d0__d0__d4 (n_1_1_8 - 1)) t_2_5_6)))))))))))) in
    (let rec h_2_4_6 = (fun ys_2_4_6 -> 
      ys_2_4_6) in
      (fun ys_2_4_7 -> 
        (let rec t_2_5_7 = ((mappend__d1_d4__d0__d5 t_1_9_0) ys_2_4_7) in
          (let rec h_2_4_7 = h_2_4_6 in
            (fun f_7_2 -> 
              (let rec t_2_5_8 = ((map__d4__d0__d6 f_7_2) t_2_5_7) in
                (let rec h_2_4_8 = (f_7_2 h_2_4_7) in
                  (fun n_1_1_9 -> 
                    (`LH_C(h_2_4_8, ((take__d0__d0__d5 (n_1_1_9 - 1)) t_2_5_8)))))))))))) in
    (let rec h_2_4_9 = (fun ys_2_4_8 -> 
      ys_2_4_8) in
      (fun ys_2_4_9 -> 
        (let rec t_2_5_9 = ((mappend__d1_d4__d0__d6 t_1_8_9) ys_2_4_9) in
          (let rec h_2_5_0 = h_2_4_9 in
            (fun f_7_3 -> 
              (let rec t_2_6_0 = ((map__d4__d0__d7 f_7_3) t_2_5_9) in
                (let rec h_2_5_1 = (f_7_3 h_2_5_0) in
                  (fun n_1_2_0 -> 
                    (`LH_C(h_2_5_1, ((take__d0__d0__d6 (n_1_2_0 - 1)) t_2_6_0)))))))))))) in
    (let rec h_2_5_2 = (fun ys_2_5_0 -> 
      ys_2_5_0) in
      (fun ys_2_5_1 -> 
        (let rec t_2_6_1 = ((mappend__d1_d4__d0__d7 t_1_8_8) ys_2_5_1) in
          (let rec h_2_5_3 = h_2_5_2 in
            (fun f_7_4 -> 
              (let rec t_2_6_2 = ((map__d4__d0__d8 f_7_4) t_2_6_1) in
                (let rec h_2_5_4 = (f_7_4 h_2_5_3) in
                  (fun n_1_2_1 -> 
                    (`LH_C(h_2_5_4, ((take__d0__d0__d7 (n_1_2_1 - 1)) t_2_6_2)))))))))))) in
    (let rec h_2_5_5 = (fun ys_2_5_2 -> 
      ys_2_5_2) in
      (fun ys_2_5_3 -> 
        (let rec t_2_6_3 = ((mappend__d1_d4__d0__d8 t_1_8_7) ys_2_5_3) in
          (let rec h_2_5_6 = h_2_5_5 in
            (fun f_7_5 -> 
              (let rec t_2_6_4 = ((map__d4__d0__d9 f_7_5) t_2_6_3) in
                (let rec h_2_5_7 = (f_7_5 h_2_5_6) in
                  (fun n_1_2_2 -> 
                    (`LH_C(h_2_5_7, ((take__d0__d0__d8 (n_1_2_2 - 1)) t_2_6_4)))))))))))) in
    (let rec h_2_5_8 = (fun ys_2_5_4 -> 
      ys_2_5_4) in
      (fun ys_2_5_5 -> 
        (let rec t_2_6_5 = ((mappend__d1_d4__d0__d9 t_1_8_6) ys_2_5_5) in
          (let rec h_2_5_9 = h_2_5_8 in
            (fun f_7_6 -> 
              (let rec t_2_6_6 = ((map__d4__d0__d1_d0 f_7_6) t_2_6_5) in
                (let rec h_2_6_0 = (f_7_6 h_2_5_9) in
                  (fun n_1_2_3 -> 
                    (`LH_C(h_2_6_0, ((take__d0__d0__d9 (n_1_2_3 - 1)) t_2_6_6)))))))))))) in
    (let rec h_2_6_1 = (fun ys_2_5_6 -> 
      ys_2_5_6) in
      (fun ys_2_5_7 -> 
        (let rec t_2_6_7 = ((mappend__d1_d4__d0__d1_d0 t_1_8_5) ys_2_5_7) in
          (let rec h_2_6_2 = h_2_6_1 in
            (fun f_7_7 -> 
              (let rec t_2_6_8 = ((map__d4__d0__d1_d1 f_7_7) t_2_6_7) in
                (let rec h_2_6_3 = (f_7_7 h_2_6_2) in
                  (fun n_1_2_4 -> 
                    (`LH_C(h_2_6_3, ((take__d0__d0__d1_d0 (n_1_2_4 - 1)) t_2_6_8)))))))))))) in
    (let rec h_2_6_4 = (fun ys_2_5_8 -> 
      ys_2_5_8) in
      (fun ys_2_5_9 -> 
        (let rec t_2_6_9 = ((mappend__d1_d4__d0__d1_d1 t_1_8_4) ys_2_5_9) in
          (let rec h_2_6_5 = h_2_6_4 in
            (fun f_7_8 -> 
              (let rec t_2_7_0 = ((map__d4__d0__d1_d2 f_7_8) t_2_6_9) in
                (let rec h_2_6_6 = (f_7_8 h_2_6_5) in
                  (fun n_1_2_5 -> 
                    (`LH_C(h_2_6_6, ((take__d0__d0__d1_d1 (n_1_2_5 - 1)) t_2_7_0)))))))))))) in
    (let rec h_2_6_7 = (fun ys_2_6_0 -> 
      ys_2_6_0) in
      (fun ys_2_6_1 -> 
        (let rec t_2_7_1 = ((mappend__d1_d4__d0__d1_d2 t_1_8_3) ys_2_6_1) in
          (let rec h_2_6_8 = h_2_6_7 in
            (fun f_7_9 -> 
              (let rec t_2_7_2 = ((map__d4__d0__d1_d3 f_7_9) t_2_7_1) in
                (let rec h_2_6_9 = (f_7_9 h_2_6_8) in
                  (fun n_1_2_6 -> 
                    (`LH_C(h_2_6_9, ((take__d0__d0__d1_d2 (n_1_2_6 - 1)) t_2_7_2)))))))))))) in
    (let rec h_2_7_0 = (fun ys_2_6_2 -> 
      ys_2_6_2) in
      (fun ys_2_6_3 -> 
        (let rec t_2_7_3 = ((mappend__d1_d4__d0__d1_d3 t_1_8_2) ys_2_6_3) in
          (let rec h_2_7_1 = h_2_7_0 in
            (fun f_8_0 -> 
              (let rec t_2_7_4 = ((map__d4__d0__d1_d4 f_8_0) t_2_7_3) in
                (let rec h_2_7_2 = (f_8_0 h_2_7_1) in
                  (fun n_1_2_7 -> 
                    (`LH_C(h_2_7_2, ((take__d0__d0__d1_d3 (n_1_2_7 - 1)) t_2_7_4)))))))))))) in
    (let rec h_2_7_3 = (fun ys_2_6_4 -> 
      ys_2_6_4) in
      (fun ys_2_6_5 -> 
        (let rec t_2_7_5 = ((mappend__d1_d4__d0__d1_d4 t_1_8_1) ys_2_6_5) in
          (let rec h_2_7_4 = h_2_7_3 in
            (fun f_8_1 -> 
              (let rec t_2_7_6 = ((map__d4__d0__d1_d5 f_8_1) t_2_7_5) in
                (let rec h_2_7_5 = (f_8_1 h_2_7_4) in
                  (fun n_1_2_8 -> 
                    (`LH_C(h_2_7_5, ((take__d0__d0__d1_d4 (n_1_2_8 - 1)) t_2_7_6)))))))))))) in
    (let rec h_2_7_6 = (fun ys_2_6_6 -> 
      ys_2_6_6) in
      (let rec t_2_7_7 = ((mappend__d1_d4__d0__d1_d5 t_1_8_0) ys_2_6_7) in
        (let rec h_2_7_7 = h_2_7_6 in
          (let rec t_2_7_8 = ((map__d4__d0__d1_d6 f_8_2) t_2_7_7) in
            (let rec h_2_7_8 = (f_8_2 h_2_7_7) in
              (`LH_C(h_2_7_8, ((take__d0__d0__d1_d5 (n_1_2_9 - 1)) t_2_7_8)))))))))
and testLife_nofib__d0__d0__d0 _lh_testLife_nofib_arg1_1 =
  (generations__d0__d0__d0 _lh_testLife_nofib_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Life_nofib" (fun () -> ignore ((testLife_nofib__d0 15)));
  Bench.Test.create ~name:"lumberhack_Life_nofib" (fun () -> ignore ((testLife_nofib__d0__d0 15)));
  Bench.Test.create ~name:"lumberhack_pop_out_Life_nofib" (fun () -> ignore ((testLife_nofib__d0__d0__d0 15)));
])
