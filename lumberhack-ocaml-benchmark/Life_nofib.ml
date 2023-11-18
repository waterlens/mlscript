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
module Module_original = struct
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec concat__d0 lss_0 =
  (lss_0 99);;
let rec copy__d3 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy__d3 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec disp__d0 _lh_disp_arg1_0 =
  (_lh_disp_arg1_0 99);;
let rec elt__d0 _lh_elt_arg1_0 _lh_elt_arg2_2 _lh_elt_arg3_4 =
  ((_lh_elt_arg1_0 _lh_elt_arg2_2) _lh_elt_arg3_4);;
let rec foldr__d0 f_5 i_0 ls_2 =
  ((ls_2 f_5) i_0);;
let rec init__d0 _lh_init_arg1_3 =
  (match _lh_init_arg1_3 with
    | `LH_C(_lh_init_LH_C_0_3, _lh_init_LH_C_1_3) -> 
      (match _lh_init_LH_C_1_3 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_1_4 _lh_zip3_arg3_1_4 _lh_zipWith3_arg1_1_4 _lh_zipWith3_arg3_4 _lh_zipWith3_arg4_1_0 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_4_1 = (init__d0 _lh_init_LH_C_1_3) in
            (let rec _lh_zip3_LH_C_0_4_1 = _lh_init_LH_C_0_3 in
              (fun _lh_zip3_arg2_1_5 _lh_zip3_arg3_1_5 -> 
                (let rec _lh_matchIdent_2_2 = _lh_zip3_arg2_1_5 in
                  (match _lh_matchIdent_2_2 with
                    | `LH_C(_lh_zip3_LH_C_0_4_2, _lh_zip3_LH_C_1_4_2) -> 
                      (let rec _lh_matchIdent_2_3 = _lh_zip3_arg3_1_5 in
                        ((((_lh_matchIdent_2_3 _lh_zip3_LH_C_0_4_1) _lh_zip3_LH_C_0_4_2) _lh_zip3_LH_C_1_4_1) _lh_zip3_LH_C_1_4_2))
                    | `LH_N -> 
                      (fun _lh_zipWith3_arg1_1_5 _lh_zipWith3_arg3_5 _lh_zipWith3_arg4_1_1 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d1 _lh_init_arg1_2 =
  (match _lh_init_arg1_2 with
    | `LH_C(_lh_init_LH_C_0_2, _lh_init_LH_C_1_2) -> 
      (match _lh_init_LH_C_1_2 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_8 _lh_zip3_arg3_8 _lh_zipWith3_LH_C_0_1_3 _lh_zipWith3_LH_C_1_1_3 _lh_zipWith3_arg1_9 _lh_zipWith3_arg4_6 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_2_7 = (init__d1 _lh_init_LH_C_1_2) in
            (let rec _lh_zip3_LH_C_0_2_7 = _lh_init_LH_C_0_2 in
              (fun _lh_zip3_arg2_9 _lh_zip3_arg3_9 -> 
                (let rec _lh_matchIdent_1_3 = _lh_zip3_arg2_9 in
                  (match _lh_matchIdent_1_3 with
                    | `LH_C(_lh_zip3_LH_C_0_2_8, _lh_zip3_LH_C_1_2_8) -> 
                      (let rec _lh_matchIdent_1_4 = _lh_zip3_arg3_9 in
                        ((((_lh_matchIdent_1_4 _lh_zip3_LH_C_0_2_8) _lh_zip3_LH_C_0_2_7) _lh_zip3_LH_C_1_2_8) _lh_zip3_LH_C_1_2_7))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_1_4 _lh_zipWith3_LH_C_1_1_4 _lh_zipWith3_arg1_1_0 _lh_zipWith3_arg4_7 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d2 _lh_init_arg1_0 =
  (match _lh_init_arg1_0 with
    | `LH_C(_lh_init_LH_C_0_0, _lh_init_LH_C_1_0) -> 
      (match _lh_init_LH_C_1_0 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_4 _lh_zip3_arg3_4 _lh_zipWith3_LH_C_0_9 _lh_zipWith3_LH_C_0_1_0 _lh_zipWith3_LH_C_1_9 _lh_zipWith3_LH_C_1_1_0 _lh_zipWith3_arg1_7 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_2_3 = (init__d2 _lh_init_LH_C_1_0) in
            (let rec _lh_zip3_LH_C_0_2_3 = _lh_init_LH_C_0_0 in
              (fun _lh_zip3_arg2_5 _lh_zip3_arg3_5 -> 
                (let rec _lh_matchIdent_9 = _lh_zip3_arg2_5 in
                  (match _lh_matchIdent_9 with
                    | `LH_C(_lh_zip3_LH_C_0_2_4, _lh_zip3_LH_C_1_2_4) -> 
                      (let rec _lh_matchIdent_1_0 = _lh_zip3_arg3_5 in
                        ((((_lh_matchIdent_1_0 _lh_zip3_LH_C_0_2_3) _lh_zip3_LH_C_0_2_4) _lh_zip3_LH_C_1_2_3) _lh_zip3_LH_C_1_2_4))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_1_1 _lh_zipWith3_LH_C_0_1_2 _lh_zipWith3_LH_C_1_1_1 _lh_zipWith3_LH_C_1_1_2 _lh_zipWith3_arg1_8 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d3 _lh_init_arg1_1 =
  (match _lh_init_arg1_1 with
    | `LH_C(_lh_init_LH_C_0_1, _lh_init_LH_C_1_1) -> 
      (match _lh_init_LH_C_1_1 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_6 _lh_zip3_arg3_6 f_1_1 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_2_5 = (init__d3 _lh_init_LH_C_1_1) in
            (let rec _lh_zip3_LH_C_0_2_5 = _lh_init_LH_C_0_1 in
              (fun _lh_zip3_arg2_7 _lh_zip3_arg3_7 -> 
                (let rec _lh_matchIdent_1_1 = _lh_zip3_arg2_7 in
                  (match _lh_matchIdent_1_1 with
                    | `LH_C(_lh_zip3_LH_C_0_2_6, _lh_zip3_LH_C_1_2_6) -> 
                      (let rec _lh_matchIdent_1_2 = _lh_zip3_arg3_7 in
                        ((((_lh_matchIdent_1_2 _lh_zip3_LH_C_0_2_5) _lh_zip3_LH_C_0_2_6) _lh_zip3_LH_C_1_2_5) _lh_zip3_LH_C_1_2_6))
                    | `LH_N -> 
                      (fun f_1_2 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec iterate__d0 f_1_6 x_0 =
  (lazy (`LH_C(x_0, ((iterate__d0 f_1_6) (f_1_6 x_0)))));;
let rec limit__d0 _lh_limit_arg1_0 =
  (let rec _lh_matchIdent_2_5 = (Lazy.force _lh_limit_arg1_0) in
    (match _lh_matchIdent_2_5 with
      | `LH_C(_lh_limit_LH_C_0_0, _lh_limit_LH_C_1_0) -> 
        (let rec _lh_matchIdent_2_6 = (Lazy.force _lh_limit_LH_C_1_0) in
          (match _lh_matchIdent_2_6 with
            | `LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1) -> 
              (if (_lh_limit_LH_C_0_0 = _lh_limit_LH_C_0_1) then
                (let rec ty_1 = (fun xs_1_1 f_1_7 -> 
                  (`LH_N)) in
                  (let rec hy_1 = _lh_limit_LH_C_0_0 in
                    (fun xs_1_2 -> 
                      (((Lazy.force xs_1_2) hy_1) ty_1))))
              else
                (let rec ty_2 = (limit__d0 (lazy (`LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1)))) in
                  (let rec hy_2 = _lh_limit_LH_C_0_0 in
                    (fun xs_1_3 -> 
                      (((Lazy.force xs_1_3) hy_2) ty_2)))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz__d0 f_4 ls_1 =
  (lazy ((Lazy.force ls_1) f_4));;
let rec map__d2 f_1_3 ls_8 =
  (ls_8 f_1_3);;
let rec map__d3 f_9 ls_4 =
  (ls_4 f_9);;
let rec map__d4 f_1_0 ls_5 =
  (ls_5 f_1_0);;
let rec mappend__d0 xs_5 ys_1_1 =
  (xs_5 ys_1_1);;
let rec mappend__d1 xs_8 ys_2_2 =
  (xs_8 ys_2_2);;
let rec mappend__d1_d0 xs_9 ys_2_5 =
  (xs_9 ys_2_5);;
let rec mappend__d1_d2 xs_0 ys_5 =
  (xs_0 ys_5);;
let rec mappend__d1_d3 xs_1 ys_6 =
  (xs_1 ys_6);;
let rec mappend__d1_d4 xs_7 ys_1_5 =
  (xs_7 ys_1_5);;
let rec mappend__d2 xs_1_5 ys_2_8 =
  (xs_1_5 ys_2_8);;
let rec mappend__d3 xs_1_6 ys_2_9 =
  (xs_1_6 ys_2_9);;
let rec mappend__d6 xs_1_7 ys_3_0 =
  (xs_1_7 ys_3_0);;
let rec mappend__d8 xs_1_8 ys_4_6 =
  (xs_1_8 ys_4_6);;
let rec row__d0 _lh_row_arg1_0 =
  (_lh_row_arg1_0 99);;
let rec tail__d0 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_7, t_1_7) -> 
      t_1_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_7, t_3_7) -> 
      t_3_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_3, t_1_3) -> 
      t_1_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_0 =
  (match ls_0 with
    | `LH_C(h_6, t_6) -> 
      t_6
    | `LH_N -> 
      (failwith "error"));;
let rec take__d0 n_0 ls_7 =
  (if (n_0 > 0) then
    (ls_7 n_0)
  else
    (`LH_N));;
let rec take__d1 n_4 ls_1_0 =
  (if (n_4 > 0) then
    (ls_1_0 n_4)
  else
    (`LH_N));;
let rec zip3__d0 _lh_zip3_arg1_3 _lh_zip3_arg2_1_0 _lh_zip3_arg3_1_0 =
  (let rec _lh_matchIdent_1_5 = _lh_zip3_arg1_3 in
    ((_lh_matchIdent_1_5 _lh_zip3_arg2_1_0) _lh_zip3_arg3_1_0));;
let rec zip3__d1 _lh_zip3_arg1_2 _lh_zip3_arg2_2 _lh_zip3_arg3_2 =
  (let rec _lh_matchIdent_6 = _lh_zip3_arg1_2 in
    ((_lh_matchIdent_6 _lh_zip3_arg2_2) _lh_zip3_arg3_2));;
let rec zip3__d2 _lh_zip3_arg1_1 _lh_zip3_arg2_1 _lh_zip3_arg3_1 =
  (let rec _lh_matchIdent_3 = _lh_zip3_arg1_1 in
    ((_lh_matchIdent_3 _lh_zip3_arg2_1) _lh_zip3_arg3_1));;
let rec zip3__d3 _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_0 =
  (let rec _lh_matchIdent_0 = _lh_zip3_arg1_0 in
    ((_lh_matchIdent_0 _lh_zip3_arg2_0) _lh_zip3_arg3_0));;
let rec zipWith3__d0 _lh_zipWith3_arg1_1_6 _lh_zipWith3_arg2_0 _lh_zipWith3_arg3_6 _lh_zipWith3_arg4_1_2 =
  (let rec _lh_matchIdent_2_4 = _lh_zipWith3_arg2_0 in
    (((_lh_matchIdent_2_4 _lh_zipWith3_arg1_1_6) _lh_zipWith3_arg3_6) _lh_zipWith3_arg4_1_2));;
let rec zip_lz_nl__d0 xs_1_4 ys_2_7 =
  (ys_2_7 xs_1_4);;
let rec copy__d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (match _lh_copy_arg1_2 with
    | 0 -> 
      (fun n_2 -> 
        (`LH_N))
    | _ -> 
      (let rec t_2_4 = ((copy__d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
        (let rec h_2_4 = _lh_copy_arg2_2 in
          (fun n_3 -> 
            (`LH_C(h_2_4, ((take__d1 (n_3 - 1)) t_2_4)))))))
and copy__d1 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (match _lh_copy_arg1_3 with
    | 0 -> 
      (fun f_3_4 n_4_7 -> 
        (`LH_N))
    | _ -> 
      (let rec t_1_3_9 = ((copy__d1 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
        (let rec h_1_3_9 = _lh_copy_arg2_3 in
          (fun f_3_5 -> 
            (let rec t_1_4_0 = ((map__d4 f_3_5) t_1_3_9) in
              (let rec h_1_4_0 = (f_3_5 h_1_3_9) in
                (fun n_4_8 -> 
                  (`LH_C(h_1_4_0, ((take__d0 (n_4_8 - 1)) t_1_4_0))))))))))
and copy__d2 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (fun ys_2_3 -> 
        ys_2_3)
    | _ -> 
      (let rec t_2_1 = ((copy__d2 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1) in
        (let rec h_2_1 = _lh_copy_arg2_1 in
          (fun ys_2_4 -> 
            (let rec t_2_2 = ((mappend__d1_d3 t_2_1) ys_2_4) in
              (let rec h_2_2 = h_2_1 in
                (fun n_1 -> 
                  (`LH_C(h_2_2, ((take__d1 (n_1 - 1)) t_2_2))))))))))
and enumFrom__d0 a_0 =
  (lazy (let rec t_1 = (enumFrom__d0 (a_0 + 1)) in
    (let rec h_1 = a_0 in
      (fun f_2 -> 
        (let rec tx_0 = ((map_lz__d0 f_2) t_1) in
          (let rec hx_0 = (f_2 h_1) in
            (fun hy_0 ty_0 -> 
              (let rec t_2 = ((zip_lz_nl__d0 tx_0) ty_0) in
                (let rec h_2 = (let rec _lh_disp_LH_P2_1_0 = hy_0 in
                  (let rec _lh_disp_LH_P2_0_0 = hx_0 in
                    (fun _lh_dummy_1 -> 
                      ((mappend__d3 ((mappend__d4 _lh_disp_LH_P2_0_0) (let rec t_3 = (let rec t_4 = (fun ys_0 -> 
                        ys_0) in
                        (let rec h_3 = 'n' in
                          (fun ys_1 -> 
                            (`LH_C(h_3, ((mappend__d3 t_4) ys_1)))))) in
                        (let rec h_4 = 'n' in
                          (fun ys_2 -> 
                            (`LH_C(h_4, ((mappend__d3 t_3) ys_2)))))))) ((fun _lh_funcomp_x_0 -> 
                        (((foldr__d0 (glue__d0 (let rec t_5 = (fun ys_3 -> 
                          ys_3) in
                          (let rec h_5 = 'n' in
                            (fun ys_4 -> 
                              (`LH_C(h_5, ((mappend__d1 t_5) ys_4)))))))) (`LH_N)) ((map__d0 (fun _lh_funcomp_x_1 -> 
                          (concat__d0 ((map__d1 star__d0) _lh_funcomp_x_1)))) _lh_funcomp_x_0))) _lh_disp_LH_P2_1_0))))) in
                  (fun f_3 -> 
                    (`LH_C((f_3 h_2), ((map__d3 f_3) t_2)))))))))))))
and gen__d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  ((map__d2 row__d0) ((shift__d3 ((copy__d3 _lh_gen_arg1_0) 0)) _lh_gen_arg2_0))
and generations__d0 _lh_generations_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      ((fun _lh_funcomp_x_4 -> 
        ((map__d3 disp__d0) ((zip_lz_nl__d0 ((map_lz__d0 string_of_int) (enumFrom__d0 0))) _lh_funcomp_x_4))) (limit__d0 _lh_funcomp_x_3))) ((iterate__d0 (gen__d0 _lh_generations_arg1_0)) _lh_funcomp_x_2))) ((take__d0 _lh_generations_arg1_0) ((map__d4 (fun _lh_funcomp_x_5 -> 
    ((fun l_0 -> 
      ((take__d1 _lh_generations_arg1_0) l_0)) ((fun l_1 -> 
      ((mappend__d1_d3 l_1) ((copy__d0 _lh_generations_arg1_0) 0))) _lh_funcomp_x_5)))) ((mappend__d1_d4 start__d0) ((copy__d1 _lh_generations_arg1_0) ((copy__d2 _lh_generations_arg1_0) 0))))))
and glue__d0 _lh_glue_arg1_0 _lh_glue_arg2_0 _lh_glue_arg3_0 =
  ((mappend__d1 ((mappend__d2 _lh_glue_arg2_0) _lh_glue_arg1_0)) _lh_glue_arg3_0)
and map__d0 f_6 ls_3 =
  (match ls_3 with
    | `LH_C(h_9, t_9) -> 
      (let rec t_1_0 = ((map__d0 f_6) t_9) in
        (let rec h_1_0 = (f_6 h_9) in
          (fun f_7 i_1 -> 
            ((f_7 h_1_0) (((foldr__d0 f_7) i_1) t_1_0)))))
    | `LH_N -> 
      (fun f_8 i_2 -> 
        i_2))
and map__d1 f_1_8 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_3_8, t_3_8) -> 
      (let rec t_3_9 = ((map__d1 f_1_8) t_3_8) in
        (let rec h_3_9 = (f_1_8 h_3_8) in
          (fun _lh_dummy_3 -> 
            ((mappend__d0 h_3_9) (concat__d0 t_3_9)))))
    | `LH_N -> 
      (fun _lh_dummy_4 ys_4_5 -> 
        ys_4_5))
and mappend__d1_d1 xs_6 ys_1_4 =
  (match xs_6 with
    | `LH_C(h_1_5, t_1_5) -> 
      (let rec _lh_zip3_LH_C_1_2_9 = ((mappend__d1_d1 t_1_5) ys_1_4) in
        (let rec _lh_zip3_LH_C_0_2_9 = h_1_5 in
          (fun _lh_zip3_LH_C_0_3_0 _lh_zip3_LH_C_0_3_1 _lh_zip3_LH_C_1_3_0 _lh_zip3_LH_C_1_3_1 -> 
            (let rec t_1_6 = (((zip3__d3 _lh_zip3_LH_C_1_3_0) _lh_zip3_LH_C_1_3_1) _lh_zip3_LH_C_1_2_9) in
              (let rec h_1_6 = (let rec _lh_row_LH_P3_2_1 = _lh_zip3_LH_C_0_2_9 in
                (let rec _lh_row_LH_P3_1_1 = _lh_zip3_LH_C_0_3_1 in
                  (let rec _lh_row_LH_P3_0_1 = _lh_zip3_LH_C_0_3_0 in
                    (fun _lh_dummy_2 -> 
                      ((((zipWith3__d0 elt__d0) ((shift__d0 0) _lh_row_LH_P3_0_1)) ((shift__d1 0) _lh_row_LH_P3_1_1)) ((shift__d2 0) _lh_row_LH_P3_2_1)))))) in
                (fun f_1_4 -> 
                  (`LH_C((f_1_4 h_1_6), ((map__d2 f_1_4) t_1_6)))))))))
    | `LH_N -> 
      ys_1_4)
and mappend__d4 xs_2 ys_7 =
  (match xs_2 with
    | `LH_C(h_7, t_7) -> 
      (let rec t_8 = ((mappend__d4 t_7) ys_7) in
        (let rec h_8 = h_7 in
          (fun ys_8 -> 
            (`LH_C(h_8, ((mappend__d3 t_8) ys_8))))))
    | `LH_N -> 
      ys_7)
and mappend__d5 xs_3 ys_9 =
  (match xs_3 with
    | `LH_C(h_1_1, t_1_1) -> 
      (let rec _lh_zip3_LH_C_1_1_0 = ((mappend__d5 t_1_1) ys_9) in
        (let rec _lh_zip3_LH_C_0_1_0 = h_1_1 in
          (fun _lh_zip3_LH_C_0_1_1 _lh_zip3_LH_C_0_1_2 _lh_zip3_LH_C_1_1_1 _lh_zip3_LH_C_1_1_2 -> 
            (let rec _lh_zipWith3_LH_C_1_1 = (((zip3__d0 _lh_zip3_LH_C_1_1_1) _lh_zip3_LH_C_1_1_2) _lh_zip3_LH_C_1_1_0) in
              (let rec _lh_zipWith3_LH_C_0_1 = (let rec _lh_elt_LH_P3_2_1 = _lh_zip3_LH_C_0_1_0 in
                (let rec _lh_elt_LH_P3_1_1 = _lh_zip3_LH_C_0_1_2 in
                  (let rec _lh_elt_LH_P3_0_1 = _lh_zip3_LH_C_0_1_1 in
                    (fun _lh_elt_arg2_1 _lh_elt_arg3_1 -> 
                      ((((_lh_elt_arg2_1 _lh_elt_LH_P3_0_1) _lh_elt_LH_P3_1_1) _lh_elt_LH_P3_2_1) _lh_elt_arg3_1))))) in
                (fun _lh_zipWith3_arg1_2 _lh_zipWith3_arg3_2 _lh_zipWith3_arg4_2 -> 
                  (let rec _lh_matchIdent_2 = _lh_zipWith3_arg3_2 in
                    ((((_lh_matchIdent_2 _lh_zipWith3_LH_C_0_1) _lh_zipWith3_LH_C_1_1) _lh_zipWith3_arg1_2) _lh_zipWith3_arg4_2))))))))
    | `LH_N -> 
      ys_9)
and mappend__d7 xs_4 ys_1_0 =
  (match xs_4 with
    | `LH_C(h_1_2, t_1_2) -> 
      (let rec _lh_zip3_LH_C_1_1_3 = ((mappend__d7 t_1_2) ys_1_0) in
        (let rec _lh_zip3_LH_C_0_1_3 = h_1_2 in
          (fun _lh_zip3_LH_C_0_1_4 _lh_zip3_LH_C_0_1_5 _lh_zip3_LH_C_1_1_4 _lh_zip3_LH_C_1_1_5 -> 
            (let rec _lh_zipWith3_LH_C_1_2 = (((zip3__d1 _lh_zip3_LH_C_1_1_5) _lh_zip3_LH_C_1_1_4) _lh_zip3_LH_C_1_1_3) in
              (let rec _lh_zipWith3_LH_C_0_2 = (let rec _lh_elt_LH_P3_2_2 = _lh_zip3_LH_C_0_1_3 in
                (let rec _lh_elt_LH_P3_1_2 = _lh_zip3_LH_C_0_1_4 in
                  (let rec _lh_elt_LH_P3_0_2 = _lh_zip3_LH_C_0_1_5 in
                    (fun _lh_elt_LH_P3_0_3 _lh_elt_LH_P3_1_3 _lh_elt_LH_P3_2_3 _lh_elt_arg3_2 -> 
                      ((((((_lh_elt_arg3_2 _lh_elt_LH_P3_0_3) _lh_elt_LH_P3_0_2) _lh_elt_LH_P3_1_3) _lh_elt_LH_P3_1_2) _lh_elt_LH_P3_2_3) _lh_elt_LH_P3_2_2))))) in
                (fun _lh_zipWith3_LH_C_0_3 _lh_zipWith3_LH_C_1_3 _lh_zipWith3_arg1_3 _lh_zipWith3_arg4_3 -> 
                  (let rec _lh_matchIdent_4 = _lh_zipWith3_arg4_3 in
                    (((((_lh_matchIdent_4 _lh_zipWith3_LH_C_0_3) _lh_zipWith3_LH_C_0_2) _lh_zipWith3_LH_C_1_3) _lh_zipWith3_LH_C_1_2) _lh_zipWith3_arg1_3))))))))
    | `LH_N -> 
      ys_1_0)
and mappend__d9 xs_1_0 ys_2_6 =
  (match xs_1_0 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec _lh_zip3_LH_C_1_3_8 = ((mappend__d9 t_2_3) ys_2_6) in
        (let rec _lh_zip3_LH_C_0_3_8 = h_2_3 in
          (fun _lh_zip3_LH_C_0_3_9 _lh_zip3_LH_C_0_4_0 _lh_zip3_LH_C_1_3_9 _lh_zip3_LH_C_1_4_0 -> 
            (let rec _lh_zipWith3_LH_C_1_1_6 = (((zip3__d2 _lh_zip3_LH_C_1_3_9) _lh_zip3_LH_C_1_4_0) _lh_zip3_LH_C_1_3_8) in
              (let rec _lh_zipWith3_LH_C_0_1_6 = (let rec _lh_elt_LH_P3_2_6 = _lh_zip3_LH_C_0_3_8 in
                (let rec _lh_elt_LH_P3_1_6 = _lh_zip3_LH_C_0_4_0 in
                  (let rec _lh_elt_LH_P3_0_6 = _lh_zip3_LH_C_0_3_9 in
                    (fun _lh_elt_LH_P3_0_7 _lh_elt_LH_P3_0_8 _lh_elt_LH_P3_1_7 _lh_elt_LH_P3_1_8 _lh_elt_LH_P3_2_7 _lh_elt_LH_P3_2_8 -> 
                      (let rec tot_0 = (((((((_lh_elt_LH_P3_0_7 + _lh_elt_LH_P3_1_7) + _lh_elt_LH_P3_2_7) + _lh_elt_LH_P3_0_8) + _lh_elt_LH_P3_2_8) + _lh_elt_LH_P3_0_6) + _lh_elt_LH_P3_1_6) + _lh_elt_LH_P3_2_6) in
                        (if ((tot_0 < 2) || (tot_0 > 3)) then
                          0
                        else
                          (if (tot_0 = 3) then
                            1
                          else
                            _lh_elt_LH_P3_1_8))))))) in
                (fun _lh_zipWith3_LH_C_0_1_7 _lh_zipWith3_LH_C_0_1_8 _lh_zipWith3_LH_C_1_1_7 _lh_zipWith3_LH_C_1_1_8 _lh_zipWith3_arg1_1_3 -> 
                  (`LH_C((((_lh_zipWith3_arg1_1_3 _lh_zipWith3_LH_C_0_1_7) _lh_zipWith3_LH_C_0_1_8) _lh_zipWith3_LH_C_0_1_6), ((((zipWith3__d0 _lh_zipWith3_arg1_1_3) _lh_zipWith3_LH_C_1_1_7) _lh_zipWith3_LH_C_1_1_8) _lh_zipWith3_LH_C_1_1_6)))))))))
    | `LH_N -> 
      ys_2_6)
and shift__d0 _lh_shift_arg1_3 _lh_shift_arg2_3 =
  (((zip3__d0 ((shiftr__d0 _lh_shift_arg1_3) _lh_shift_arg2_3)) _lh_shift_arg2_3) ((shiftl__d0 _lh_shift_arg1_3) _lh_shift_arg2_3))
and shift__d1 _lh_shift_arg1_1 _lh_shift_arg2_1 =
  (((zip3__d1 ((shiftr__d1 _lh_shift_arg1_1) _lh_shift_arg2_1)) _lh_shift_arg2_1) ((shiftl__d1 _lh_shift_arg1_1) _lh_shift_arg2_1))
and shift__d2 _lh_shift_arg1_0 _lh_shift_arg2_0 =
  (((zip3__d2 ((shiftr__d2 _lh_shift_arg1_0) _lh_shift_arg2_0)) _lh_shift_arg2_0) ((shiftl__d2 _lh_shift_arg1_0) _lh_shift_arg2_0))
and shift__d3 _lh_shift_arg1_2 _lh_shift_arg2_2 =
  (((zip3__d3 ((shiftr__d3 _lh_shift_arg1_2) _lh_shift_arg2_2)) _lh_shift_arg2_2) ((shiftl__d3 _lh_shift_arg1_2) _lh_shift_arg2_2))
and shiftl__d0 _lh_shiftl_arg1_1 _lh_shiftl_arg2_1 =
  ((mappend__d5 (tail__d0 _lh_shiftl_arg2_1)) (let rec _lh_zip3_LH_C_1_5 = (fun _lh_zip3_LH_C_0_5 _lh_zip3_LH_C_0_6 _lh_zip3_LH_C_1_6 _lh_zip3_LH_C_1_7 _lh_zipWith3_arg1_0 _lh_zipWith3_arg3_0 _lh_zipWith3_arg4_0 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_7 = _lh_shiftl_arg1_1 in
      (fun _lh_zip3_LH_C_0_8 _lh_zip3_LH_C_0_9 _lh_zip3_LH_C_1_8 _lh_zip3_LH_C_1_9 -> 
        (let rec _lh_zipWith3_LH_C_1_0 = (((zip3__d0 _lh_zip3_LH_C_1_8) _lh_zip3_LH_C_1_9) _lh_zip3_LH_C_1_5) in
          (let rec _lh_zipWith3_LH_C_0_0 = (let rec _lh_elt_LH_P3_2_0 = _lh_zip3_LH_C_0_7 in
            (let rec _lh_elt_LH_P3_1_0 = _lh_zip3_LH_C_0_9 in
              (let rec _lh_elt_LH_P3_0_0 = _lh_zip3_LH_C_0_8 in
                (fun _lh_elt_arg2_0 _lh_elt_arg3_0 -> 
                  ((((_lh_elt_arg2_0 _lh_elt_LH_P3_0_0) _lh_elt_LH_P3_1_0) _lh_elt_LH_P3_2_0) _lh_elt_arg3_0))))) in
            (fun _lh_zipWith3_arg1_1 _lh_zipWith3_arg3_1 _lh_zipWith3_arg4_1 -> 
              (let rec _lh_matchIdent_1 = _lh_zipWith3_arg3_1 in
                ((((_lh_matchIdent_1 _lh_zipWith3_LH_C_0_0) _lh_zipWith3_LH_C_1_0) _lh_zipWith3_arg1_1) _lh_zipWith3_arg4_1)))))))))
and shiftl__d1 _lh_shiftl_arg1_2 _lh_shiftl_arg2_2 =
  ((mappend__d7 (tail__d1 _lh_shiftl_arg2_2)) (let rec _lh_zip3_LH_C_1_1_6 = (fun _lh_zip3_LH_C_0_1_6 _lh_zip3_LH_C_0_1_7 _lh_zip3_LH_C_1_1_7 _lh_zip3_LH_C_1_1_8 _lh_zipWith3_LH_C_0_4 _lh_zipWith3_LH_C_1_4 _lh_zipWith3_arg1_4 _lh_zipWith3_arg4_4 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_1_8 = _lh_shiftl_arg1_2 in
      (fun _lh_zip3_LH_C_0_1_9 _lh_zip3_LH_C_0_2_0 _lh_zip3_LH_C_1_1_9 _lh_zip3_LH_C_1_2_0 -> 
        (let rec _lh_zipWith3_LH_C_1_5 = (((zip3__d1 _lh_zip3_LH_C_1_2_0) _lh_zip3_LH_C_1_1_9) _lh_zip3_LH_C_1_1_6) in
          (let rec _lh_zipWith3_LH_C_0_5 = (let rec _lh_elt_LH_P3_2_4 = _lh_zip3_LH_C_0_1_8 in
            (let rec _lh_elt_LH_P3_1_4 = _lh_zip3_LH_C_0_1_9 in
              (let rec _lh_elt_LH_P3_0_4 = _lh_zip3_LH_C_0_2_0 in
                (fun _lh_elt_LH_P3_0_5 _lh_elt_LH_P3_1_5 _lh_elt_LH_P3_2_5 _lh_elt_arg3_3 -> 
                  ((((((_lh_elt_arg3_3 _lh_elt_LH_P3_0_5) _lh_elt_LH_P3_0_4) _lh_elt_LH_P3_1_5) _lh_elt_LH_P3_1_4) _lh_elt_LH_P3_2_5) _lh_elt_LH_P3_2_4))))) in
            (fun _lh_zipWith3_LH_C_0_6 _lh_zipWith3_LH_C_1_6 _lh_zipWith3_arg1_5 _lh_zipWith3_arg4_5 -> 
              (let rec _lh_matchIdent_5 = _lh_zipWith3_arg4_5 in
                (((((_lh_matchIdent_5 _lh_zipWith3_LH_C_0_6) _lh_zipWith3_LH_C_0_5) _lh_zipWith3_LH_C_1_6) _lh_zipWith3_LH_C_1_5) _lh_zipWith3_arg1_5)))))))))
and shiftl__d2 _lh_shiftl_arg1_3 _lh_shiftl_arg2_3 =
  ((mappend__d9 (tail__d2 _lh_shiftl_arg2_3)) (let rec _lh_zip3_LH_C_1_4_3 = (fun _lh_zip3_LH_C_0_4_3 _lh_zip3_LH_C_0_4_4 _lh_zip3_LH_C_1_4_4 _lh_zip3_LH_C_1_4_5 _lh_zipWith3_LH_C_0_1_9 _lh_zipWith3_LH_C_0_2_0 _lh_zipWith3_LH_C_1_1_9 _lh_zipWith3_LH_C_1_2_0 _lh_zipWith3_arg1_1_7 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_4_5 = _lh_shiftl_arg1_3 in
      (fun _lh_zip3_LH_C_0_4_6 _lh_zip3_LH_C_0_4_7 _lh_zip3_LH_C_1_4_6 _lh_zip3_LH_C_1_4_7 -> 
        (let rec _lh_zipWith3_LH_C_1_2_1 = (((zip3__d2 _lh_zip3_LH_C_1_4_6) _lh_zip3_LH_C_1_4_7) _lh_zip3_LH_C_1_4_3) in
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
              (`LH_C((((_lh_zipWith3_arg1_1_8 _lh_zipWith3_LH_C_0_2_2) _lh_zipWith3_LH_C_0_2_3) _lh_zipWith3_LH_C_0_2_1), ((((zipWith3__d0 _lh_zipWith3_arg1_1_8) _lh_zipWith3_LH_C_1_2_2) _lh_zipWith3_LH_C_1_2_3) _lh_zipWith3_LH_C_1_2_1))))))))))
and shiftl__d3 _lh_shiftl_arg1_0 _lh_shiftl_arg2_0 =
  ((mappend__d1_d1 (tail__d3 _lh_shiftl_arg2_0)) (let rec _lh_zip3_LH_C_1_0 = (fun _lh_zip3_LH_C_0_0 _lh_zip3_LH_C_0_1 _lh_zip3_LH_C_1_1 _lh_zip3_LH_C_1_2 f_0 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_2 = _lh_shiftl_arg1_0 in
      (fun _lh_zip3_LH_C_0_3 _lh_zip3_LH_C_0_4 _lh_zip3_LH_C_1_3 _lh_zip3_LH_C_1_4 -> 
        (let rec t_0 = (((zip3__d3 _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_0) in
          (let rec h_0 = (let rec _lh_row_LH_P3_2_0 = _lh_zip3_LH_C_0_2 in
            (let rec _lh_row_LH_P3_1_0 = _lh_zip3_LH_C_0_4 in
              (let rec _lh_row_LH_P3_0_0 = _lh_zip3_LH_C_0_3 in
                (fun _lh_dummy_0 -> 
                  ((((zipWith3__d0 elt__d0) ((shift__d0 0) _lh_row_LH_P3_0_0)) ((shift__d1 0) _lh_row_LH_P3_1_0)) ((shift__d2 0) _lh_row_LH_P3_2_0)))))) in
            (fun f_1 -> 
              (`LH_C((f_1 h_0), ((map__d2 f_1) t_0))))))))))
and shiftr__d0 _lh_shiftr_arg1_3 _lh_shiftr_arg2_3 =
  ((mappend__d6 (let rec t_2_0 = (fun ys_2_0 -> 
    ys_2_0) in
    (let rec h_2_0 = _lh_shiftr_arg1_3 in
      (fun ys_2_1 -> 
        (let rec _lh_zip3_LH_C_1_3_6 = ((mappend__d6 t_2_0) ys_2_1) in
          (let rec _lh_zip3_LH_C_0_3_6 = h_2_0 in
            (fun _lh_zip3_arg2_1_3 _lh_zip3_arg3_1_3 -> 
              (let rec _lh_matchIdent_2_0 = _lh_zip3_arg2_1_3 in
                (match _lh_matchIdent_2_0 with
                  | `LH_C(_lh_zip3_LH_C_0_3_7, _lh_zip3_LH_C_1_3_7) -> 
                    (let rec _lh_matchIdent_2_1 = _lh_zip3_arg3_1_3 in
                      ((((_lh_matchIdent_2_1 _lh_zip3_LH_C_0_3_6) _lh_zip3_LH_C_0_3_7) _lh_zip3_LH_C_1_3_6) _lh_zip3_LH_C_1_3_7))
                  | `LH_N -> 
                    (fun _lh_zipWith3_arg1_1_2 _lh_zipWith3_arg3_3 _lh_zipWith3_arg4_9 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d0 _lh_shiftr_arg2_3))
and shiftr__d1 _lh_shiftr_arg1_2 _lh_shiftr_arg2_2 =
  ((mappend__d8 (let rec t_1_9 = (fun ys_1_8 -> 
    ys_1_8) in
    (let rec h_1_9 = _lh_shiftr_arg1_2 in
      (fun ys_1_9 -> 
        (let rec _lh_zip3_LH_C_1_3_4 = ((mappend__d8 t_1_9) ys_1_9) in
          (let rec _lh_zip3_LH_C_0_3_4 = h_1_9 in
            (fun _lh_zip3_arg2_1_2 _lh_zip3_arg3_1_2 -> 
              (let rec _lh_matchIdent_1_8 = _lh_zip3_arg2_1_2 in
                (match _lh_matchIdent_1_8 with
                  | `LH_C(_lh_zip3_LH_C_0_3_5, _lh_zip3_LH_C_1_3_5) -> 
                    (let rec _lh_matchIdent_1_9 = _lh_zip3_arg3_1_2 in
                      ((((_lh_matchIdent_1_9 _lh_zip3_LH_C_0_3_5) _lh_zip3_LH_C_0_3_4) _lh_zip3_LH_C_1_3_5) _lh_zip3_LH_C_1_3_4))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_1_5 _lh_zipWith3_LH_C_1_1_5 _lh_zipWith3_arg1_1_1 _lh_zipWith3_arg4_8 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d1 _lh_shiftr_arg2_2))
and shiftr__d2 _lh_shiftr_arg1_0 _lh_shiftr_arg2_0 =
  ((mappend__d1_d0 (let rec t_1_4 = (fun ys_1_2 -> 
    ys_1_2) in
    (let rec h_1_4 = _lh_shiftr_arg1_0 in
      (fun ys_1_3 -> 
        (let rec _lh_zip3_LH_C_1_2_1 = ((mappend__d1_d0 t_1_4) ys_1_3) in
          (let rec _lh_zip3_LH_C_0_2_1 = h_1_4 in
            (fun _lh_zip3_arg2_3 _lh_zip3_arg3_3 -> 
              (let rec _lh_matchIdent_7 = _lh_zip3_arg2_3 in
                (match _lh_matchIdent_7 with
                  | `LH_C(_lh_zip3_LH_C_0_2_2, _lh_zip3_LH_C_1_2_2) -> 
                    (let rec _lh_matchIdent_8 = _lh_zip3_arg3_3 in
                      ((((_lh_matchIdent_8 _lh_zip3_LH_C_0_2_1) _lh_zip3_LH_C_0_2_2) _lh_zip3_LH_C_1_2_1) _lh_zip3_LH_C_1_2_2))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_7 _lh_zipWith3_LH_C_0_8 _lh_zipWith3_LH_C_1_7 _lh_zipWith3_LH_C_1_8 _lh_zipWith3_arg1_6 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d2 _lh_shiftr_arg2_0))
and shiftr__d3 _lh_shiftr_arg1_1 _lh_shiftr_arg2_1 =
  ((mappend__d1_d2 (let rec t_1_8 = (fun ys_1_6 -> 
    ys_1_6) in
    (let rec h_1_8 = _lh_shiftr_arg1_1 in
      (fun ys_1_7 -> 
        (let rec _lh_zip3_LH_C_1_3_2 = ((mappend__d1_d2 t_1_8) ys_1_7) in
          (let rec _lh_zip3_LH_C_0_3_2 = h_1_8 in
            (fun _lh_zip3_arg2_1_1 _lh_zip3_arg3_1_1 -> 
              (let rec _lh_matchIdent_1_6 = _lh_zip3_arg2_1_1 in
                (match _lh_matchIdent_1_6 with
                  | `LH_C(_lh_zip3_LH_C_0_3_3, _lh_zip3_LH_C_1_3_3) -> 
                    (let rec _lh_matchIdent_1_7 = _lh_zip3_arg3_1_1 in
                      ((((_lh_matchIdent_1_7 _lh_zip3_LH_C_0_3_2) _lh_zip3_LH_C_0_3_3) _lh_zip3_LH_C_1_3_2) _lh_zip3_LH_C_1_3_3))
                  | `LH_N -> 
                    (fun f_1_5 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d3 _lh_shiftr_arg2_1))
and star__d0 _lh_star_arg1_0 =
  (match _lh_star_arg1_0 with
    | 0 -> 
      (let rec t_2_5 = (let rec t_2_6 = (fun ys_3_1 -> 
        ys_3_1) in
        (let rec h_2_5 = ' ' in
          (fun ys_3_2 -> 
            (let rec t_2_7 = ((mappend__d0 t_2_6) ys_3_2) in
              (let rec h_2_6 = h_2_5 in
                (fun ys_3_3 -> 
                  (let rec t_2_8 = ((mappend__d2 t_2_7) ys_3_3) in
                    (let rec h_2_7 = h_2_6 in
                      (fun ys_3_4 -> 
                        (`LH_C(h_2_7, ((mappend__d1 t_2_8) ys_3_4)))))))))))) in
        (let rec h_2_8 = ' ' in
          (fun ys_3_5 -> 
            (let rec t_2_9 = ((mappend__d0 t_2_5) ys_3_5) in
              (let rec h_2_9 = h_2_8 in
                (fun ys_3_6 -> 
                  (let rec t_3_0 = ((mappend__d2 t_2_9) ys_3_6) in
                    (let rec h_3_0 = h_2_9 in
                      (fun ys_3_7 -> 
                        (`LH_C(h_3_0, ((mappend__d1 t_3_0) ys_3_7))))))))))))
    | 1 -> 
      (let rec t_3_1 = (let rec t_3_2 = (fun ys_3_8 -> 
        ys_3_8) in
        (let rec h_3_1 = 'o' in
          (fun ys_3_9 -> 
            (let rec t_3_3 = ((mappend__d0 t_3_2) ys_3_9) in
              (let rec h_3_2 = h_3_1 in
                (fun ys_4_0 -> 
                  (let rec t_3_4 = ((mappend__d2 t_3_3) ys_4_0) in
                    (let rec h_3_3 = h_3_2 in
                      (fun ys_4_1 -> 
                        (`LH_C(h_3_3, ((mappend__d1 t_3_4) ys_4_1)))))))))))) in
        (let rec h_3_4 = ' ' in
          (fun ys_4_2 -> 
            (let rec t_3_5 = ((mappend__d0 t_3_1) ys_4_2) in
              (let rec h_3_5 = h_3_4 in
                (fun ys_4_3 -> 
                  (let rec t_3_6 = ((mappend__d2 t_3_5) ys_4_3) in
                    (let rec h_3_6 = h_3_5 in
                      (fun ys_4_4 -> 
                        (`LH_C(h_3_6, ((mappend__d1 t_3_6) ys_4_4))))))))))))
    | _ -> 
      (failwith "error"))
and start__d0 =
  (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (let rec t_4_9 = (let rec t_5_0 = (let rec t_5_1 = (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (fun ys_4_7 -> 
    ys_4_7) in
    (let rec h_4_0 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (let rec t_7_7 = (let rec t_7_8 = (let rec t_7_9 = (let rec t_8_0 = (let rec t_8_1 = (fun ys_4_8 -> 
      ys_4_8) in
      (let rec h_4_1 = 0 in
        (fun ys_4_9 -> 
          (let rec t_8_2 = ((mappend__d1_d3 t_8_1) ys_4_9) in
            (let rec h_4_2 = h_4_1 in
              (fun n_5 -> 
                (`LH_C(h_4_2, ((take__d1 (n_5 - 1)) t_8_2))))))))) in
      (let rec h_4_3 = 1 in
        (fun ys_5_0 -> 
          (let rec t_8_3 = ((mappend__d1_d3 t_8_0) ys_5_0) in
            (let rec h_4_4 = h_4_3 in
              (fun n_6 -> 
                (`LH_C(h_4_4, ((take__d1 (n_6 - 1)) t_8_3))))))))) in
      (let rec h_4_5 = 1 in
        (fun ys_5_1 -> 
          (let rec t_8_4 = ((mappend__d1_d3 t_7_9) ys_5_1) in
            (let rec h_4_6 = h_4_5 in
              (fun n_7 -> 
                (`LH_C(h_4_6, ((take__d1 (n_7 - 1)) t_8_4))))))))) in
      (let rec h_4_7 = 1 in
        (fun ys_5_2 -> 
          (let rec t_8_5 = ((mappend__d1_d3 t_7_8) ys_5_2) in
            (let rec h_4_8 = h_4_7 in
              (fun n_8 -> 
                (`LH_C(h_4_8, ((take__d1 (n_8 - 1)) t_8_5))))))))) in
      (let rec h_4_9 = 1 in
        (fun ys_5_3 -> 
          (let rec t_8_6 = ((mappend__d1_d3 t_7_7) ys_5_3) in
            (let rec h_5_0 = h_4_9 in
              (fun n_9 -> 
                (`LH_C(h_5_0, ((take__d1 (n_9 - 1)) t_8_6))))))))) in
      (let rec h_5_1 = 1 in
        (fun ys_5_4 -> 
          (let rec t_8_7 = ((mappend__d1_d3 t_7_6) ys_5_4) in
            (let rec h_5_2 = h_5_1 in
              (fun n_1_0 -> 
                (`LH_C(h_5_2, ((take__d1 (n_1_0 - 1)) t_8_7))))))))) in
      (let rec h_5_3 = 0 in
        (fun ys_5_5 -> 
          (let rec t_8_8 = ((mappend__d1_d3 t_7_5) ys_5_5) in
            (let rec h_5_4 = h_5_3 in
              (fun n_1_1 -> 
                (`LH_C(h_5_4, ((take__d1 (n_1_1 - 1)) t_8_8))))))))) in
      (let rec h_5_5 = 1 in
        (fun ys_5_6 -> 
          (let rec t_8_9 = ((mappend__d1_d3 t_7_4) ys_5_6) in
            (let rec h_5_6 = h_5_5 in
              (fun n_1_2 -> 
                (`LH_C(h_5_6, ((take__d1 (n_1_2 - 1)) t_8_9))))))))) in
      (let rec h_5_7 = 1 in
        (fun ys_5_7 -> 
          (let rec t_9_0 = ((mappend__d1_d3 t_7_3) ys_5_7) in
            (let rec h_5_8 = h_5_7 in
              (fun n_1_3 -> 
                (`LH_C(h_5_8, ((take__d1 (n_1_3 - 1)) t_9_0))))))))) in
      (let rec h_5_9 = 1 in
        (fun ys_5_8 -> 
          (let rec t_9_1 = ((mappend__d1_d3 t_7_2) ys_5_8) in
            (let rec h_6_0 = h_5_9 in
              (fun n_1_4 -> 
                (`LH_C(h_6_0, ((take__d1 (n_1_4 - 1)) t_9_1))))))))) in
      (let rec h_6_1 = 1 in
        (fun ys_5_9 -> 
          (let rec t_9_2 = ((mappend__d1_d3 t_7_1) ys_5_9) in
            (let rec h_6_2 = h_6_1 in
              (fun n_1_5 -> 
                (`LH_C(h_6_2, ((take__d1 (n_1_5 - 1)) t_9_2))))))))) in
      (let rec h_6_3 = 1 in
        (fun ys_6_0 -> 
          (let rec t_9_3 = ((mappend__d1_d3 t_7_0) ys_6_0) in
            (let rec h_6_4 = h_6_3 in
              (fun n_1_6 -> 
                (`LH_C(h_6_4, ((take__d1 (n_1_6 - 1)) t_9_3))))))))) in
      (let rec h_6_5 = 0 in
        (fun ys_6_1 -> 
          (let rec t_9_4 = ((mappend__d1_d3 t_6_9) ys_6_1) in
            (let rec h_6_6 = h_6_5 in
              (fun n_1_7 -> 
                (`LH_C(h_6_6, ((take__d1 (n_1_7 - 1)) t_9_4))))))))) in
      (let rec h_6_7 = 1 in
        (fun ys_6_2 -> 
          (let rec t_9_5 = ((mappend__d1_d3 t_6_8) ys_6_2) in
            (let rec h_6_8 = h_6_7 in
              (fun n_1_8 -> 
                (`LH_C(h_6_8, ((take__d1 (n_1_8 - 1)) t_9_5))))))))) in
      (let rec h_6_9 = 1 in
        (fun ys_6_3 -> 
          (let rec t_9_6 = ((mappend__d1_d3 t_6_7) ys_6_3) in
            (let rec h_7_0 = h_6_9 in
              (fun n_1_9 -> 
                (`LH_C(h_7_0, ((take__d1 (n_1_9 - 1)) t_9_6))))))))) in
      (let rec h_7_1 = 1 in
        (fun ys_6_4 -> 
          (let rec t_9_7 = ((mappend__d1_d3 t_6_6) ys_6_4) in
            (let rec h_7_2 = h_7_1 in
              (fun n_2_0 -> 
                (`LH_C(h_7_2, ((take__d1 (n_2_0 - 1)) t_9_7))))))))) in
      (let rec h_7_3 = 1 in
        (fun ys_6_5 -> 
          (let rec t_9_8 = ((mappend__d1_d3 t_6_5) ys_6_5) in
            (let rec h_7_4 = h_7_3 in
              (fun n_2_1 -> 
                (`LH_C(h_7_4, ((take__d1 (n_2_1 - 1)) t_9_8))))))))) in
      (let rec h_7_5 = 1 in
        (fun ys_6_6 -> 
          (let rec t_9_9 = ((mappend__d1_d3 t_6_4) ys_6_6) in
            (let rec h_7_6 = h_7_5 in
              (fun n_2_2 -> 
                (`LH_C(h_7_6, ((take__d1 (n_2_2 - 1)) t_9_9))))))))) in
      (let rec h_7_7 = 0 in
        (fun ys_6_7 -> 
          (let rec t_1_0_0 = ((mappend__d1_d3 t_6_3) ys_6_7) in
            (let rec h_7_8 = h_7_7 in
              (fun n_2_3 -> 
                (`LH_C(h_7_8, ((take__d1 (n_2_3 - 1)) t_1_0_0))))))))) in
      (let rec h_7_9 = 1 in
        (fun ys_6_8 -> 
          (let rec t_1_0_1 = ((mappend__d1_d3 t_6_2) ys_6_8) in
            (let rec h_8_0 = h_7_9 in
              (fun n_2_4 -> 
                (`LH_C(h_8_0, ((take__d1 (n_2_4 - 1)) t_1_0_1))))))))) in
      (let rec h_8_1 = 1 in
        (fun ys_6_9 -> 
          (let rec t_1_0_2 = ((mappend__d1_d3 t_6_1) ys_6_9) in
            (let rec h_8_2 = h_8_1 in
              (fun n_2_5 -> 
                (`LH_C(h_8_2, ((take__d1 (n_2_5 - 1)) t_1_0_2))))))))) in
      (let rec h_8_3 = 1 in
        (fun ys_7_0 -> 
          (let rec t_1_0_3 = ((mappend__d1_d3 t_6_0) ys_7_0) in
            (let rec h_8_4 = h_8_3 in
              (fun n_2_6 -> 
                (`LH_C(h_8_4, ((take__d1 (n_2_6 - 1)) t_1_0_3))))))))) in
      (let rec h_8_5 = 1 in
        (fun ys_7_1 -> 
          (let rec t_1_0_4 = ((mappend__d1_d3 t_5_9) ys_7_1) in
            (let rec h_8_6 = h_8_5 in
              (fun n_2_7 -> 
                (`LH_C(h_8_6, ((take__d1 (n_2_7 - 1)) t_1_0_4))))))))) in
      (let rec h_8_7 = 1 in
        (fun ys_7_2 -> 
          (let rec t_1_0_5 = ((mappend__d1_d3 t_5_8) ys_7_2) in
            (let rec h_8_8 = h_8_7 in
              (fun n_2_8 -> 
                (`LH_C(h_8_8, ((take__d1 (n_2_8 - 1)) t_1_0_5))))))))) in
      (let rec h_8_9 = 0 in
        (fun ys_7_3 -> 
          (let rec t_1_0_6 = ((mappend__d1_d3 t_5_7) ys_7_3) in
            (let rec h_9_0 = h_8_9 in
              (fun n_2_9 -> 
                (`LH_C(h_9_0, ((take__d1 (n_2_9 - 1)) t_1_0_6))))))))) in
      (let rec h_9_1 = 0 in
        (fun ys_7_4 -> 
          (let rec t_1_0_7 = ((mappend__d1_d3 t_5_6) ys_7_4) in
            (let rec h_9_2 = h_9_1 in
              (fun n_3_0 -> 
                (`LH_C(h_9_2, ((take__d1 (n_3_0 - 1)) t_1_0_7))))))))) in
      (let rec h_9_3 = 0 in
        (fun ys_7_5 -> 
          (let rec t_1_0_8 = ((mappend__d1_d3 t_5_5) ys_7_5) in
            (let rec h_9_4 = h_9_3 in
              (fun n_3_1 -> 
                (`LH_C(h_9_4, ((take__d1 (n_3_1 - 1)) t_1_0_8))))))))) in
      (fun ys_7_6 -> 
        (let rec t_1_0_9 = ((mappend__d1_d4 t_5_4) ys_7_6) in
          (let rec h_9_5 = h_4_0 in
            (fun f_1_9 -> 
              (let rec t_1_1_0 = ((map__d4 f_1_9) t_1_0_9) in
                (let rec h_9_6 = (f_1_9 h_9_5) in
                  (fun n_3_2 -> 
                    (`LH_C(h_9_6, ((take__d0 (n_3_2 - 1)) t_1_1_0)))))))))))) in
    (let rec h_9_7 = (fun ys_7_7 -> 
      ys_7_7) in
      (fun ys_7_8 -> 
        (let rec t_1_1_1 = ((mappend__d1_d4 t_5_3) ys_7_8) in
          (let rec h_9_8 = h_9_7 in
            (fun f_2_0 -> 
              (let rec t_1_1_2 = ((map__d4 f_2_0) t_1_1_1) in
                (let rec h_9_9 = (f_2_0 h_9_8) in
                  (fun n_3_3 -> 
                    (`LH_C(h_9_9, ((take__d0 (n_3_3 - 1)) t_1_1_2)))))))))))) in
    (let rec h_1_0_0 = (fun ys_7_9 -> 
      ys_7_9) in
      (fun ys_8_0 -> 
        (let rec t_1_1_3 = ((mappend__d1_d4 t_5_2) ys_8_0) in
          (let rec h_1_0_1 = h_1_0_0 in
            (fun f_2_1 -> 
              (let rec t_1_1_4 = ((map__d4 f_2_1) t_1_1_3) in
                (let rec h_1_0_2 = (f_2_1 h_1_0_1) in
                  (fun n_3_4 -> 
                    (`LH_C(h_1_0_2, ((take__d0 (n_3_4 - 1)) t_1_1_4)))))))))))) in
    (let rec h_1_0_3 = (fun ys_8_1 -> 
      ys_8_1) in
      (fun ys_8_2 -> 
        (let rec t_1_1_5 = ((mappend__d1_d4 t_5_1) ys_8_2) in
          (let rec h_1_0_4 = h_1_0_3 in
            (fun f_2_2 -> 
              (let rec t_1_1_6 = ((map__d4 f_2_2) t_1_1_5) in
                (let rec h_1_0_5 = (f_2_2 h_1_0_4) in
                  (fun n_3_5 -> 
                    (`LH_C(h_1_0_5, ((take__d0 (n_3_5 - 1)) t_1_1_6)))))))))))) in
    (let rec h_1_0_6 = (fun ys_8_3 -> 
      ys_8_3) in
      (fun ys_8_4 -> 
        (let rec t_1_1_7 = ((mappend__d1_d4 t_5_0) ys_8_4) in
          (let rec h_1_0_7 = h_1_0_6 in
            (fun f_2_3 -> 
              (let rec t_1_1_8 = ((map__d4 f_2_3) t_1_1_7) in
                (let rec h_1_0_8 = (f_2_3 h_1_0_7) in
                  (fun n_3_6 -> 
                    (`LH_C(h_1_0_8, ((take__d0 (n_3_6 - 1)) t_1_1_8)))))))))))) in
    (let rec h_1_0_9 = (fun ys_8_5 -> 
      ys_8_5) in
      (fun ys_8_6 -> 
        (let rec t_1_1_9 = ((mappend__d1_d4 t_4_9) ys_8_6) in
          (let rec h_1_1_0 = h_1_0_9 in
            (fun f_2_4 -> 
              (let rec t_1_2_0 = ((map__d4 f_2_4) t_1_1_9) in
                (let rec h_1_1_1 = (f_2_4 h_1_1_0) in
                  (fun n_3_7 -> 
                    (`LH_C(h_1_1_1, ((take__d0 (n_3_7 - 1)) t_1_2_0)))))))))))) in
    (let rec h_1_1_2 = (fun ys_8_7 -> 
      ys_8_7) in
      (fun ys_8_8 -> 
        (let rec t_1_2_1 = ((mappend__d1_d4 t_4_8) ys_8_8) in
          (let rec h_1_1_3 = h_1_1_2 in
            (fun f_2_5 -> 
              (let rec t_1_2_2 = ((map__d4 f_2_5) t_1_2_1) in
                (let rec h_1_1_4 = (f_2_5 h_1_1_3) in
                  (fun n_3_8 -> 
                    (`LH_C(h_1_1_4, ((take__d0 (n_3_8 - 1)) t_1_2_2)))))))))))) in
    (let rec h_1_1_5 = (fun ys_8_9 -> 
      ys_8_9) in
      (fun ys_9_0 -> 
        (let rec t_1_2_3 = ((mappend__d1_d4 t_4_7) ys_9_0) in
          (let rec h_1_1_6 = h_1_1_5 in
            (fun f_2_6 -> 
              (let rec t_1_2_4 = ((map__d4 f_2_6) t_1_2_3) in
                (let rec h_1_1_7 = (f_2_6 h_1_1_6) in
                  (fun n_3_9 -> 
                    (`LH_C(h_1_1_7, ((take__d0 (n_3_9 - 1)) t_1_2_4)))))))))))) in
    (let rec h_1_1_8 = (fun ys_9_1 -> 
      ys_9_1) in
      (fun ys_9_2 -> 
        (let rec t_1_2_5 = ((mappend__d1_d4 t_4_6) ys_9_2) in
          (let rec h_1_1_9 = h_1_1_8 in
            (fun f_2_7 -> 
              (let rec t_1_2_6 = ((map__d4 f_2_7) t_1_2_5) in
                (let rec h_1_2_0 = (f_2_7 h_1_1_9) in
                  (fun n_4_0 -> 
                    (`LH_C(h_1_2_0, ((take__d0 (n_4_0 - 1)) t_1_2_6)))))))))))) in
    (let rec h_1_2_1 = (fun ys_9_3 -> 
      ys_9_3) in
      (fun ys_9_4 -> 
        (let rec t_1_2_7 = ((mappend__d1_d4 t_4_5) ys_9_4) in
          (let rec h_1_2_2 = h_1_2_1 in
            (fun f_2_8 -> 
              (let rec t_1_2_8 = ((map__d4 f_2_8) t_1_2_7) in
                (let rec h_1_2_3 = (f_2_8 h_1_2_2) in
                  (fun n_4_1 -> 
                    (`LH_C(h_1_2_3, ((take__d0 (n_4_1 - 1)) t_1_2_8)))))))))))) in
    (let rec h_1_2_4 = (fun ys_9_5 -> 
      ys_9_5) in
      (fun ys_9_6 -> 
        (let rec t_1_2_9 = ((mappend__d1_d4 t_4_4) ys_9_6) in
          (let rec h_1_2_5 = h_1_2_4 in
            (fun f_2_9 -> 
              (let rec t_1_3_0 = ((map__d4 f_2_9) t_1_2_9) in
                (let rec h_1_2_6 = (f_2_9 h_1_2_5) in
                  (fun n_4_2 -> 
                    (`LH_C(h_1_2_6, ((take__d0 (n_4_2 - 1)) t_1_3_0)))))))))))) in
    (let rec h_1_2_7 = (fun ys_9_7 -> 
      ys_9_7) in
      (fun ys_9_8 -> 
        (let rec t_1_3_1 = ((mappend__d1_d4 t_4_3) ys_9_8) in
          (let rec h_1_2_8 = h_1_2_7 in
            (fun f_3_0 -> 
              (let rec t_1_3_2 = ((map__d4 f_3_0) t_1_3_1) in
                (let rec h_1_2_9 = (f_3_0 h_1_2_8) in
                  (fun n_4_3 -> 
                    (`LH_C(h_1_2_9, ((take__d0 (n_4_3 - 1)) t_1_3_2)))))))))))) in
    (let rec h_1_3_0 = (fun ys_9_9 -> 
      ys_9_9) in
      (fun ys_1_0_0 -> 
        (let rec t_1_3_3 = ((mappend__d1_d4 t_4_2) ys_1_0_0) in
          (let rec h_1_3_1 = h_1_3_0 in
            (fun f_3_1 -> 
              (let rec t_1_3_4 = ((map__d4 f_3_1) t_1_3_3) in
                (let rec h_1_3_2 = (f_3_1 h_1_3_1) in
                  (fun n_4_4 -> 
                    (`LH_C(h_1_3_2, ((take__d0 (n_4_4 - 1)) t_1_3_4)))))))))))) in
    (let rec h_1_3_3 = (fun ys_1_0_1 -> 
      ys_1_0_1) in
      (fun ys_1_0_2 -> 
        (let rec t_1_3_5 = ((mappend__d1_d4 t_4_1) ys_1_0_2) in
          (let rec h_1_3_4 = h_1_3_3 in
            (fun f_3_2 -> 
              (let rec t_1_3_6 = ((map__d4 f_3_2) t_1_3_5) in
                (let rec h_1_3_5 = (f_3_2 h_1_3_4) in
                  (fun n_4_5 -> 
                    (`LH_C(h_1_3_5, ((take__d0 (n_4_5 - 1)) t_1_3_6)))))))))))) in
    (let rec h_1_3_6 = (fun ys_1_0_3 -> 
      ys_1_0_3) in
      (fun ys_1_0_4 -> 
        (let rec t_1_3_7 = ((mappend__d1_d4 t_4_0) ys_1_0_4) in
          (let rec h_1_3_7 = h_1_3_6 in
            (fun f_3_3 -> 
              (let rec t_1_3_8 = ((map__d4 f_3_3) t_1_3_7) in
                (let rec h_1_3_8 = (f_3_3 h_1_3_7) in
                  (fun n_4_6 -> 
                    (`LH_C(h_1_3_8, ((take__d0 (n_4_6 - 1)) t_1_3_8))))))))))))
and testLife_nofib__d0 _lh_testLife_nofib_arg1_0 =
  (generations__d0 _lh_testLife_nofib_arg1_0);;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec concat__d0 lss_0 =
  (lss_0 99);;
let rec copy__d3 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy__d3 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec disp__d0 _lh_disp_arg1_0 =
  (_lh_disp_arg1_0 99);;
let rec elt__d0 _lh_elt_arg1_0 _lh_elt_arg2_2 _lh_elt_arg3_4 =
  ((_lh_elt_arg1_0 _lh_elt_arg2_2) _lh_elt_arg3_4);;
let rec foldr__d0 f_5 i_0 ls_2 =
  ((ls_2 f_5) i_0);;
let rec init__d0 _lh_init_arg1_3 =
  (match _lh_init_arg1_3 with
    | `LH_C(_lh_init_LH_C_0_3, _lh_init_LH_C_1_3) -> 
      (match _lh_init_LH_C_1_3 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_1_4 _lh_zip3_arg3_1_4 _lh_zipWith3_arg1_1_4 _lh_zipWith3_arg3_4 _lh_zipWith3_arg4_1_0 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_4_1 = (init__d0 _lh_init_LH_C_1_3) in
            (let rec _lh_zip3_LH_C_0_4_1 = _lh_init_LH_C_0_3 in
              (fun _lh_zip3_arg2_1_5 _lh_zip3_arg3_1_5 -> 
                (let rec _lh_matchIdent_2_2 = _lh_zip3_arg2_1_5 in
                  (match _lh_matchIdent_2_2 with
                    | `LH_C(_lh_zip3_LH_C_0_4_2, _lh_zip3_LH_C_1_4_2) -> 
                      (let rec _lh_matchIdent_2_3 = _lh_zip3_arg3_1_5 in
                        ((((_lh_matchIdent_2_3 _lh_zip3_LH_C_0_4_1) _lh_zip3_LH_C_0_4_2) _lh_zip3_LH_C_1_4_1) _lh_zip3_LH_C_1_4_2))
                    | `LH_N -> 
                      (fun _lh_zipWith3_arg1_1_5 _lh_zipWith3_arg3_5 _lh_zipWith3_arg4_1_1 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d1 _lh_init_arg1_2 =
  (match _lh_init_arg1_2 with
    | `LH_C(_lh_init_LH_C_0_2, _lh_init_LH_C_1_2) -> 
      (match _lh_init_LH_C_1_2 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_8 _lh_zip3_arg3_8 _lh_zipWith3_LH_C_0_1_3 _lh_zipWith3_LH_C_1_1_3 _lh_zipWith3_arg1_9 _lh_zipWith3_arg4_6 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_2_7 = (init__d1 _lh_init_LH_C_1_2) in
            (let rec _lh_zip3_LH_C_0_2_7 = _lh_init_LH_C_0_2 in
              (fun _lh_zip3_arg2_9 _lh_zip3_arg3_9 -> 
                (let rec _lh_matchIdent_1_3 = _lh_zip3_arg2_9 in
                  (match _lh_matchIdent_1_3 with
                    | `LH_C(_lh_zip3_LH_C_0_2_8, _lh_zip3_LH_C_1_2_8) -> 
                      (let rec _lh_matchIdent_1_4 = _lh_zip3_arg3_9 in
                        ((((_lh_matchIdent_1_4 _lh_zip3_LH_C_0_2_8) _lh_zip3_LH_C_0_2_7) _lh_zip3_LH_C_1_2_8) _lh_zip3_LH_C_1_2_7))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_1_4 _lh_zipWith3_LH_C_1_1_4 _lh_zipWith3_arg1_1_0 _lh_zipWith3_arg4_7 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d2 _lh_init_arg1_0 =
  (match _lh_init_arg1_0 with
    | `LH_C(_lh_init_LH_C_0_0, _lh_init_LH_C_1_0) -> 
      (match _lh_init_LH_C_1_0 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_4 _lh_zip3_arg3_4 _lh_zipWith3_LH_C_0_9 _lh_zipWith3_LH_C_0_1_0 _lh_zipWith3_LH_C_1_9 _lh_zipWith3_LH_C_1_1_0 _lh_zipWith3_arg1_7 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_2_3 = (init__d2 _lh_init_LH_C_1_0) in
            (let rec _lh_zip3_LH_C_0_2_3 = _lh_init_LH_C_0_0 in
              (fun _lh_zip3_arg2_5 _lh_zip3_arg3_5 -> 
                (let rec _lh_matchIdent_9 = _lh_zip3_arg2_5 in
                  (match _lh_matchIdent_9 with
                    | `LH_C(_lh_zip3_LH_C_0_2_4, _lh_zip3_LH_C_1_2_4) -> 
                      (let rec _lh_matchIdent_1_0 = _lh_zip3_arg3_5 in
                        ((((_lh_matchIdent_1_0 _lh_zip3_LH_C_0_2_3) _lh_zip3_LH_C_0_2_4) _lh_zip3_LH_C_1_2_3) _lh_zip3_LH_C_1_2_4))
                    | `LH_N -> 
                      (fun _lh_zipWith3_LH_C_0_1_1 _lh_zipWith3_LH_C_0_1_2 _lh_zipWith3_LH_C_1_1_1 _lh_zipWith3_LH_C_1_1_2 _lh_zipWith3_arg1_8 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec init__d3 _lh_init_arg1_1 =
  (match _lh_init_arg1_1 with
    | `LH_C(_lh_init_LH_C_0_1, _lh_init_LH_C_1_1) -> 
      (match _lh_init_LH_C_1_1 with
        | `LH_N -> 
          (fun _lh_zip3_arg2_6 _lh_zip3_arg3_6 f_1_1 -> 
            (`LH_N))
        | _ -> 
          (let rec _lh_zip3_LH_C_1_2_5 = (init__d3 _lh_init_LH_C_1_1) in
            (let rec _lh_zip3_LH_C_0_2_5 = _lh_init_LH_C_0_1 in
              (fun _lh_zip3_arg2_7 _lh_zip3_arg3_7 -> 
                (let rec _lh_matchIdent_1_1 = _lh_zip3_arg2_7 in
                  (match _lh_matchIdent_1_1 with
                    | `LH_C(_lh_zip3_LH_C_0_2_6, _lh_zip3_LH_C_1_2_6) -> 
                      (let rec _lh_matchIdent_1_2 = _lh_zip3_arg3_7 in
                        ((((_lh_matchIdent_1_2 _lh_zip3_LH_C_0_2_5) _lh_zip3_LH_C_0_2_6) _lh_zip3_LH_C_1_2_5) _lh_zip3_LH_C_1_2_6))
                    | `LH_N -> 
                      (fun f_1_2 -> 
                        (`LH_N))
                    | _ -> 
                      (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec iterate__d0 f_1_6 x_0 =
  (lazy (`LH_C(x_0, ((iterate__d0 f_1_6) (f_1_6 x_0)))));;
let rec limit__d0 _lh_limit_arg1_0 =
  (let rec _lh_matchIdent_2_5 = (Lazy.force _lh_limit_arg1_0) in
    (match _lh_matchIdent_2_5 with
      | `LH_C(_lh_limit_LH_C_0_0, _lh_limit_LH_C_1_0) -> 
        (let rec _lh_matchIdent_2_6 = (Lazy.force _lh_limit_LH_C_1_0) in
          (match _lh_matchIdent_2_6 with
            | `LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1) -> 
              (if (_lh_limit_LH_C_0_0 = _lh_limit_LH_C_0_1) then
                (let rec ty_1 = (fun xs_1_1 f_1_7 -> 
                  (`LH_N)) in
                  (let rec hy_1 = _lh_limit_LH_C_0_0 in
                    (fun xs_1_2 -> 
                      (((Lazy.force xs_1_2) hy_1) ty_1))))
              else
                (let rec ty_2 = (limit__d0 (lazy (`LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1)))) in
                  (let rec hy_2 = _lh_limit_LH_C_0_0 in
                    (fun xs_1_3 -> 
                      (((Lazy.force xs_1_3) hy_2) ty_2)))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz__d0 f_4 ls_1 =
  (lazy ((Lazy.force ls_1) f_4));;
let rec map__d2 f_1_3 ls_8 =
  (ls_8 f_1_3);;
let rec map__d3 f_9 ls_4 =
  (ls_4 f_9);;
let rec map__d4 f_1_0 ls_5 =
  (ls_5 f_1_0);;
let rec mappend__d0 xs_5 ys_1_1 =
  (xs_5 ys_1_1);;
let rec mappend__d1 xs_8 ys_2_2 =
  (xs_8 ys_2_2);;
let rec mappend__d1_d0 xs_9 ys_2_5 =
  (xs_9 ys_2_5);;
let rec mappend__d1_d2 xs_0 ys_5 =
  (xs_0 ys_5);;
let rec mappend__d1_d3 xs_1 ys_6 =
  (xs_1 ys_6);;
let rec mappend__d1_d4 xs_7 ys_1_5 =
  (xs_7 ys_1_5);;
let rec mappend__d2 xs_1_5 ys_2_8 =
  (xs_1_5 ys_2_8);;
let rec mappend__d3 xs_1_6 ys_2_9 =
  (xs_1_6 ys_2_9);;
let rec mappend__d6 xs_1_7 ys_3_0 =
  (xs_1_7 ys_3_0);;
let rec mappend__d8 xs_1_8 ys_4_6 =
  (xs_1_8 ys_4_6);;
let rec row__d0 _lh_row_arg1_0 =
  (_lh_row_arg1_0 99);;
let rec tail__d0 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_7, t_1_7) -> 
      t_1_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_7, t_3_7) -> 
      t_3_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_3, t_1_3) -> 
      t_1_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_0 =
  (match ls_0 with
    | `LH_C(h_6, t_6) -> 
      t_6
    | `LH_N -> 
      (failwith "error"));;
let rec take__d0 n_0 ls_7 =
  (if (n_0 > 0) then
    (ls_7 n_0)
  else
    (`LH_N));;
let rec take__d1 n_4 ls_1_0 =
  (if (n_4 > 0) then
    (ls_1_0 n_4)
  else
    (`LH_N));;
let rec zip3__d0 _lh_zip3_arg1_3 _lh_zip3_arg2_1_0 _lh_zip3_arg3_1_0 =
  (let rec _lh_matchIdent_1_5 = _lh_zip3_arg1_3 in
    ((_lh_matchIdent_1_5 _lh_zip3_arg2_1_0) _lh_zip3_arg3_1_0));;
let rec zip3__d1 _lh_zip3_arg1_2 _lh_zip3_arg2_2 _lh_zip3_arg3_2 =
  (let rec _lh_matchIdent_6 = _lh_zip3_arg1_2 in
    ((_lh_matchIdent_6 _lh_zip3_arg2_2) _lh_zip3_arg3_2));;
let rec zip3__d2 _lh_zip3_arg1_1 _lh_zip3_arg2_1 _lh_zip3_arg3_1 =
  (let rec _lh_matchIdent_3 = _lh_zip3_arg1_1 in
    ((_lh_matchIdent_3 _lh_zip3_arg2_1) _lh_zip3_arg3_1));;
let rec zip3__d3 _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_0 =
  (let rec _lh_matchIdent_0 = _lh_zip3_arg1_0 in
    ((_lh_matchIdent_0 _lh_zip3_arg2_0) _lh_zip3_arg3_0));;
let rec zipWith3__d0 _lh_zipWith3_arg1_1_6 _lh_zipWith3_arg2_0 _lh_zipWith3_arg3_6 _lh_zipWith3_arg4_1_2 =
  (let rec _lh_matchIdent_2_4 = _lh_zipWith3_arg2_0 in
    (((_lh_matchIdent_2_4 _lh_zipWith3_arg1_1_6) _lh_zipWith3_arg3_6) _lh_zipWith3_arg4_1_2));;
let rec zip_lz_nl__d0 xs_1_4 ys_2_7 =
  (ys_2_7 xs_1_4);;
let rec copy__d0 _lh_copy_arg1_2 _lh_copy_arg2_2 _lh_popOutId_0_5 =
  (match _lh_copy_arg1_2 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_4 = ((copy__d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
        (let rec h_2_4 = _lh_copy_arg2_2 in
          (`LH_C(h_2_4, ((take__d1 (_lh_popOutId_0_5 - 1)) t_2_4))))))
and copy__d1 _lh_copy_arg1_3 _lh_copy_arg2_3 _lh_popOutId_0_9 _lh_popOutId_1_5 =
  (match _lh_copy_arg1_3 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_3_9 = ((copy__d1 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
        (let rec h_1_3_9 = _lh_copy_arg2_3 in
          (let rec t_1_4_0 = ((map__d4 _lh_popOutId_0_9) t_1_3_9) in
            (let rec h_1_4_0 = (_lh_popOutId_0_9 h_1_3_9) in
              (`LH_C(h_1_4_0, ((take__d0 (_lh_popOutId_1_5 - 1)) t_1_4_0))))))))
and copy__d2 _lh_copy_arg1_1 _lh_copy_arg2_1 _lh_popOutId_0_4 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      _lh_popOutId_0_4
    | _ -> 
      (fun n_1 -> 
        (let rec t_2_1 = ((copy__d2 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1) in
          (let rec h_2_1 = _lh_copy_arg2_1 in
            (let rec t_2_2 = ((mappend__d1_d3 t_2_1) _lh_popOutId_0_4) in
              (let rec h_2_2 = h_2_1 in
                (`LH_C(h_2_2, ((take__d1 (n_1 - 1)) t_2_2)))))))))
and enumFrom__d0 a_0 =
  (lazy (let rec t_1 = (enumFrom__d0 (a_0 + 1)) in
    (let rec h_1 = a_0 in
      (fun f_2 -> 
        (let rec tx_0 = ((map_lz__d0 f_2) t_1) in
          (let rec hx_0 = (f_2 h_1) in
            (fun hy_0 ty_0 -> 
              (let rec t_2 = ((zip_lz_nl__d0 tx_0) ty_0) in
                (let rec h_2 = (let rec _lh_disp_LH_P2_1_0 = hy_0 in
                  (let rec _lh_disp_LH_P2_0_0 = hx_0 in
                    (fun _lh_dummy_1 -> 
                      ((mappend__d3 ((mappend__d4 _lh_disp_LH_P2_0_0) (let rec t_3 = (let rec t_4 = (fun ys_0 -> 
                        ys_0) in
                        (let rec h_3 = 'n' in
                          (fun ys_1 -> 
                            (`LH_C(h_3, ((mappend__d3 t_4) ys_1)))))) in
                        (let rec h_4 = 'n' in
                          (fun ys_2 -> 
                            (`LH_C(h_4, ((mappend__d3 t_3) ys_2)))))))) ((fun _lh_funcomp_x_0 -> 
                        (((foldr__d0 (glue__d0 (let rec t_5 = (fun ys_3 -> 
                          ys_3) in
                          (let rec h_5 = 'n' in
                            (fun ys_4 -> 
                              (`LH_C(h_5, ((mappend__d1 t_5) ys_4)))))))) (`LH_N)) ((map__d0 (fun _lh_funcomp_x_1 -> 
                          (concat__d0 ((map__d1 star__d0) _lh_funcomp_x_1)))) _lh_funcomp_x_0))) _lh_disp_LH_P2_1_0))))) in
                  (fun f_3 -> 
                    (`LH_C((f_3 h_2), ((map__d3 f_3) t_2)))))))))))))
and gen__d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  ((map__d2 row__d0) ((shift__d3 ((copy__d3 _lh_gen_arg1_0) 0)) _lh_gen_arg2_0))
and generations__d0 _lh_generations_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      ((fun _lh_funcomp_x_4 -> 
        ((map__d3 disp__d0) ((zip_lz_nl__d0 ((map_lz__d0 string_of_int) (enumFrom__d0 0))) _lh_funcomp_x_4))) (limit__d0 _lh_funcomp_x_3))) ((iterate__d0 (gen__d0 _lh_generations_arg1_0)) _lh_funcomp_x_2))) ((take__d0 _lh_generations_arg1_0) ((map__d4 (fun _lh_funcomp_x_5 -> 
    ((fun l_0 -> 
      ((take__d1 _lh_generations_arg1_0) l_0)) ((fun l_1 -> 
      ((mappend__d1_d3 l_1) ((copy__d0 _lh_generations_arg1_0) 0))) _lh_funcomp_x_5)))) ((mappend__d1_d4 start__d0) ((copy__d1 _lh_generations_arg1_0) ((copy__d2 _lh_generations_arg1_0) 0))))))
and glue__d0 _lh_glue_arg1_0 _lh_glue_arg2_0 _lh_glue_arg3_0 =
  ((mappend__d1 ((mappend__d2 _lh_glue_arg2_0) _lh_glue_arg1_0)) _lh_glue_arg3_0)
and map__d0 f_6 ls_3 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_3 with
    | `LH_C(h_9, t_9) -> 
      (let rec t_1_0 = ((map__d0 f_6) t_9) in
        (let rec h_1_0 = (f_6 h_9) in
          ((_lh_popOutId_0_0 h_1_0) (((foldr__d0 _lh_popOutId_0_0) _lh_popOutId_1_0) t_1_0))))
    | `LH_N -> 
      _lh_popOutId_1_0)
and map__d1 f_1_8 ls_1_2 _lh_popOutId_0_8 =
  (match ls_1_2 with
    | `LH_C(h_3_8, t_3_8) -> 
      (let rec t_3_9 = ((map__d1 f_1_8) t_3_8) in
        (let rec h_3_9 = (f_1_8 h_3_8) in
          ((mappend__d0 h_3_9) (concat__d0 t_3_9))))
    | `LH_N -> 
      (fun ys_4_5 -> 
        ys_4_5))
and mappend__d1_d1 xs_6 ys_1_4 =
  (match xs_6 with
    | `LH_C(h_1_5, t_1_5) -> 
      (let rec _lh_zip3_LH_C_1_2_9 = ((mappend__d1_d1 t_1_5) ys_1_4) in
        (let rec _lh_zip3_LH_C_0_2_9 = h_1_5 in
          (fun _lh_zip3_LH_C_0_3_0 _lh_zip3_LH_C_0_3_1 _lh_zip3_LH_C_1_3_0 _lh_zip3_LH_C_1_3_1 -> 
            (let rec t_1_6 = (((zip3__d3 _lh_zip3_LH_C_1_3_0) _lh_zip3_LH_C_1_3_1) _lh_zip3_LH_C_1_2_9) in
              (let rec h_1_6 = (let rec _lh_row_LH_P3_2_1 = _lh_zip3_LH_C_0_2_9 in
                (let rec _lh_row_LH_P3_1_1 = _lh_zip3_LH_C_0_3_1 in
                  (let rec _lh_row_LH_P3_0_1 = _lh_zip3_LH_C_0_3_0 in
                    (fun _lh_dummy_2 -> 
                      ((((zipWith3__d0 elt__d0) ((shift__d0 0) _lh_row_LH_P3_0_1)) ((shift__d1 0) _lh_row_LH_P3_1_1)) ((shift__d2 0) _lh_row_LH_P3_2_1)))))) in
                (fun f_1_4 -> 
                  (`LH_C((f_1_4 h_1_6), ((map__d2 f_1_4) t_1_6)))))))))
    | `LH_N -> 
      ys_1_4)
and mappend__d4 xs_2 ys_7 =
  (match xs_2 with
    | `LH_C(h_7, t_7) -> 
      (let rec t_8 = ((mappend__d4 t_7) ys_7) in
        (let rec h_8 = h_7 in
          (fun ys_8 -> 
            (`LH_C(h_8, ((mappend__d3 t_8) ys_8))))))
    | `LH_N -> 
      ys_7)
and mappend__d5 xs_3 ys_9 =
  (match xs_3 with
    | `LH_C(h_1_1, t_1_1) -> 
      (let rec _lh_zip3_LH_C_1_1_0 = ((mappend__d5 t_1_1) ys_9) in
        (let rec _lh_zip3_LH_C_0_1_0 = h_1_1 in
          (fun _lh_zip3_LH_C_0_1_1 _lh_zip3_LH_C_0_1_2 _lh_zip3_LH_C_1_1_1 _lh_zip3_LH_C_1_1_2 -> 
            (let rec _lh_zipWith3_LH_C_1_1 = (((zip3__d0 _lh_zip3_LH_C_1_1_1) _lh_zip3_LH_C_1_1_2) _lh_zip3_LH_C_1_1_0) in
              (let rec _lh_zipWith3_LH_C_0_1 = (let rec _lh_elt_LH_P3_2_1 = _lh_zip3_LH_C_0_1_0 in
                (let rec _lh_elt_LH_P3_1_1 = _lh_zip3_LH_C_0_1_2 in
                  (let rec _lh_elt_LH_P3_0_1 = _lh_zip3_LH_C_0_1_1 in
                    (fun _lh_elt_arg2_1 _lh_elt_arg3_1 -> 
                      ((((_lh_elt_arg2_1 _lh_elt_LH_P3_0_1) _lh_elt_LH_P3_1_1) _lh_elt_LH_P3_2_1) _lh_elt_arg3_1))))) in
                (fun _lh_zipWith3_arg1_2 _lh_zipWith3_arg3_2 _lh_zipWith3_arg4_2 -> 
                  (let rec _lh_matchIdent_2 = _lh_zipWith3_arg3_2 in
                    ((((_lh_matchIdent_2 _lh_zipWith3_LH_C_0_1) _lh_zipWith3_LH_C_1_1) _lh_zipWith3_arg1_2) _lh_zipWith3_arg4_2))))))))
    | `LH_N -> 
      ys_9)
and mappend__d7 xs_4 ys_1_0 =
  (match xs_4 with
    | `LH_C(h_1_2, t_1_2) -> 
      (let rec _lh_zip3_LH_C_1_1_3 = ((mappend__d7 t_1_2) ys_1_0) in
        (let rec _lh_zip3_LH_C_0_1_3 = h_1_2 in
          (fun _lh_zip3_LH_C_0_1_4 _lh_zip3_LH_C_0_1_5 _lh_zip3_LH_C_1_1_4 _lh_zip3_LH_C_1_1_5 -> 
            (let rec _lh_zipWith3_LH_C_1_2 = (((zip3__d1 _lh_zip3_LH_C_1_1_5) _lh_zip3_LH_C_1_1_4) _lh_zip3_LH_C_1_1_3) in
              (let rec _lh_zipWith3_LH_C_0_2 = (let rec _lh_elt_LH_P3_2_2 = _lh_zip3_LH_C_0_1_3 in
                (let rec _lh_elt_LH_P3_1_2 = _lh_zip3_LH_C_0_1_4 in
                  (let rec _lh_elt_LH_P3_0_2 = _lh_zip3_LH_C_0_1_5 in
                    (fun _lh_elt_LH_P3_0_3 _lh_elt_LH_P3_1_3 _lh_elt_LH_P3_2_3 _lh_elt_arg3_2 -> 
                      ((((((_lh_elt_arg3_2 _lh_elt_LH_P3_0_3) _lh_elt_LH_P3_0_2) _lh_elt_LH_P3_1_3) _lh_elt_LH_P3_1_2) _lh_elt_LH_P3_2_3) _lh_elt_LH_P3_2_2))))) in
                (fun _lh_zipWith3_LH_C_0_3 _lh_zipWith3_LH_C_1_3 _lh_zipWith3_arg1_3 _lh_zipWith3_arg4_3 -> 
                  (let rec _lh_matchIdent_4 = _lh_zipWith3_arg4_3 in
                    (((((_lh_matchIdent_4 _lh_zipWith3_LH_C_0_3) _lh_zipWith3_LH_C_0_2) _lh_zipWith3_LH_C_1_3) _lh_zipWith3_LH_C_1_2) _lh_zipWith3_arg1_3))))))))
    | `LH_N -> 
      ys_1_0)
and mappend__d9 xs_1_0 ys_2_6 =
  (match xs_1_0 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec _lh_zip3_LH_C_1_3_8 = ((mappend__d9 t_2_3) ys_2_6) in
        (let rec _lh_zip3_LH_C_0_3_8 = h_2_3 in
          (fun _lh_zip3_LH_C_0_3_9 _lh_zip3_LH_C_0_4_0 _lh_zip3_LH_C_1_3_9 _lh_zip3_LH_C_1_4_0 -> 
            (let rec _lh_zipWith3_LH_C_1_1_6 = (((zip3__d2 _lh_zip3_LH_C_1_3_9) _lh_zip3_LH_C_1_4_0) _lh_zip3_LH_C_1_3_8) in
              (let rec _lh_zipWith3_LH_C_0_1_6 = (let rec _lh_elt_LH_P3_2_6 = _lh_zip3_LH_C_0_3_8 in
                (let rec _lh_elt_LH_P3_1_6 = _lh_zip3_LH_C_0_4_0 in
                  (let rec _lh_elt_LH_P3_0_6 = _lh_zip3_LH_C_0_3_9 in
                    (fun _lh_elt_LH_P3_0_7 _lh_elt_LH_P3_0_8 _lh_elt_LH_P3_1_7 _lh_elt_LH_P3_1_8 _lh_elt_LH_P3_2_7 _lh_elt_LH_P3_2_8 -> 
                      (let rec tot_0 = (((((((_lh_elt_LH_P3_0_7 + _lh_elt_LH_P3_1_7) + _lh_elt_LH_P3_2_7) + _lh_elt_LH_P3_0_8) + _lh_elt_LH_P3_2_8) + _lh_elt_LH_P3_0_6) + _lh_elt_LH_P3_1_6) + _lh_elt_LH_P3_2_6) in
                        (if ((tot_0 < 2) || (tot_0 > 3)) then
                          0
                        else
                          (if (tot_0 = 3) then
                            1
                          else
                            _lh_elt_LH_P3_1_8))))))) in
                (fun _lh_zipWith3_LH_C_0_1_7 _lh_zipWith3_LH_C_0_1_8 _lh_zipWith3_LH_C_1_1_7 _lh_zipWith3_LH_C_1_1_8 _lh_zipWith3_arg1_1_3 -> 
                  (`LH_C((((_lh_zipWith3_arg1_1_3 _lh_zipWith3_LH_C_0_1_7) _lh_zipWith3_LH_C_0_1_8) _lh_zipWith3_LH_C_0_1_6), ((((zipWith3__d0 _lh_zipWith3_arg1_1_3) _lh_zipWith3_LH_C_1_1_7) _lh_zipWith3_LH_C_1_1_8) _lh_zipWith3_LH_C_1_1_6)))))))))
    | `LH_N -> 
      ys_2_6)
and shift__d0 _lh_shift_arg1_3 _lh_shift_arg2_3 =
  (((zip3__d0 ((shiftr__d0 _lh_shift_arg1_3) _lh_shift_arg2_3)) _lh_shift_arg2_3) ((shiftl__d0 _lh_shift_arg1_3) _lh_shift_arg2_3))
and shift__d1 _lh_shift_arg1_1 _lh_shift_arg2_1 =
  (((zip3__d1 ((shiftr__d1 _lh_shift_arg1_1) _lh_shift_arg2_1)) _lh_shift_arg2_1) ((shiftl__d1 _lh_shift_arg1_1) _lh_shift_arg2_1))
and shift__d2 _lh_shift_arg1_0 _lh_shift_arg2_0 =
  (((zip3__d2 ((shiftr__d2 _lh_shift_arg1_0) _lh_shift_arg2_0)) _lh_shift_arg2_0) ((shiftl__d2 _lh_shift_arg1_0) _lh_shift_arg2_0))
and shift__d3 _lh_shift_arg1_2 _lh_shift_arg2_2 =
  (((zip3__d3 ((shiftr__d3 _lh_shift_arg1_2) _lh_shift_arg2_2)) _lh_shift_arg2_2) ((shiftl__d3 _lh_shift_arg1_2) _lh_shift_arg2_2))
and shiftl__d0 _lh_shiftl_arg1_1 _lh_shiftl_arg2_1 =
  ((mappend__d5 (tail__d0 _lh_shiftl_arg2_1)) (let rec _lh_zip3_LH_C_1_5 = (fun _lh_zip3_LH_C_0_5 _lh_zip3_LH_C_0_6 _lh_zip3_LH_C_1_6 _lh_zip3_LH_C_1_7 _lh_zipWith3_arg1_0 _lh_zipWith3_arg3_0 _lh_zipWith3_arg4_0 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_7 = _lh_shiftl_arg1_1 in
      (fun _lh_zip3_LH_C_0_8 _lh_zip3_LH_C_0_9 _lh_zip3_LH_C_1_8 _lh_zip3_LH_C_1_9 -> 
        (let rec _lh_zipWith3_LH_C_1_0 = (((zip3__d0 _lh_zip3_LH_C_1_8) _lh_zip3_LH_C_1_9) _lh_zip3_LH_C_1_5) in
          (let rec _lh_zipWith3_LH_C_0_0 = (let rec _lh_elt_LH_P3_2_0 = _lh_zip3_LH_C_0_7 in
            (let rec _lh_elt_LH_P3_1_0 = _lh_zip3_LH_C_0_9 in
              (let rec _lh_elt_LH_P3_0_0 = _lh_zip3_LH_C_0_8 in
                (fun _lh_elt_arg2_0 _lh_elt_arg3_0 -> 
                  ((((_lh_elt_arg2_0 _lh_elt_LH_P3_0_0) _lh_elt_LH_P3_1_0) _lh_elt_LH_P3_2_0) _lh_elt_arg3_0))))) in
            (fun _lh_zipWith3_arg1_1 _lh_zipWith3_arg3_1 _lh_zipWith3_arg4_1 -> 
              (let rec _lh_matchIdent_1 = _lh_zipWith3_arg3_1 in
                ((((_lh_matchIdent_1 _lh_zipWith3_LH_C_0_0) _lh_zipWith3_LH_C_1_0) _lh_zipWith3_arg1_1) _lh_zipWith3_arg4_1)))))))))
and shiftl__d1 _lh_shiftl_arg1_2 _lh_shiftl_arg2_2 =
  ((mappend__d7 (tail__d1 _lh_shiftl_arg2_2)) (let rec _lh_zip3_LH_C_1_1_6 = (fun _lh_zip3_LH_C_0_1_6 _lh_zip3_LH_C_0_1_7 _lh_zip3_LH_C_1_1_7 _lh_zip3_LH_C_1_1_8 _lh_zipWith3_LH_C_0_4 _lh_zipWith3_LH_C_1_4 _lh_zipWith3_arg1_4 _lh_zipWith3_arg4_4 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_1_8 = _lh_shiftl_arg1_2 in
      (fun _lh_zip3_LH_C_0_1_9 _lh_zip3_LH_C_0_2_0 _lh_zip3_LH_C_1_1_9 _lh_zip3_LH_C_1_2_0 -> 
        (let rec _lh_zipWith3_LH_C_1_5 = (((zip3__d1 _lh_zip3_LH_C_1_2_0) _lh_zip3_LH_C_1_1_9) _lh_zip3_LH_C_1_1_6) in
          (let rec _lh_zipWith3_LH_C_0_5 = (let rec _lh_elt_LH_P3_2_4 = _lh_zip3_LH_C_0_1_8 in
            (let rec _lh_elt_LH_P3_1_4 = _lh_zip3_LH_C_0_1_9 in
              (let rec _lh_elt_LH_P3_0_4 = _lh_zip3_LH_C_0_2_0 in
                (fun _lh_elt_LH_P3_0_5 _lh_elt_LH_P3_1_5 _lh_elt_LH_P3_2_5 _lh_elt_arg3_3 -> 
                  ((((((_lh_elt_arg3_3 _lh_elt_LH_P3_0_5) _lh_elt_LH_P3_0_4) _lh_elt_LH_P3_1_5) _lh_elt_LH_P3_1_4) _lh_elt_LH_P3_2_5) _lh_elt_LH_P3_2_4))))) in
            (fun _lh_zipWith3_LH_C_0_6 _lh_zipWith3_LH_C_1_6 _lh_zipWith3_arg1_5 _lh_zipWith3_arg4_5 -> 
              (let rec _lh_matchIdent_5 = _lh_zipWith3_arg4_5 in
                (((((_lh_matchIdent_5 _lh_zipWith3_LH_C_0_6) _lh_zipWith3_LH_C_0_5) _lh_zipWith3_LH_C_1_6) _lh_zipWith3_LH_C_1_5) _lh_zipWith3_arg1_5)))))))))
and shiftl__d2 _lh_shiftl_arg1_3 _lh_shiftl_arg2_3 =
  ((mappend__d9 (tail__d2 _lh_shiftl_arg2_3)) (let rec _lh_zip3_LH_C_1_4_3 = (fun _lh_zip3_LH_C_0_4_3 _lh_zip3_LH_C_0_4_4 _lh_zip3_LH_C_1_4_4 _lh_zip3_LH_C_1_4_5 _lh_zipWith3_LH_C_0_1_9 _lh_zipWith3_LH_C_0_2_0 _lh_zipWith3_LH_C_1_1_9 _lh_zipWith3_LH_C_1_2_0 _lh_zipWith3_arg1_1_7 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_4_5 = _lh_shiftl_arg1_3 in
      (fun _lh_zip3_LH_C_0_4_6 _lh_zip3_LH_C_0_4_7 _lh_zip3_LH_C_1_4_6 _lh_zip3_LH_C_1_4_7 -> 
        (let rec _lh_zipWith3_LH_C_1_2_1 = (((zip3__d2 _lh_zip3_LH_C_1_4_6) _lh_zip3_LH_C_1_4_7) _lh_zip3_LH_C_1_4_3) in
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
              (`LH_C((((_lh_zipWith3_arg1_1_8 _lh_zipWith3_LH_C_0_2_2) _lh_zipWith3_LH_C_0_2_3) _lh_zipWith3_LH_C_0_2_1), ((((zipWith3__d0 _lh_zipWith3_arg1_1_8) _lh_zipWith3_LH_C_1_2_2) _lh_zipWith3_LH_C_1_2_3) _lh_zipWith3_LH_C_1_2_1))))))))))
and shiftl__d3 _lh_shiftl_arg1_0 _lh_shiftl_arg2_0 =
  ((mappend__d1_d1 (tail__d3 _lh_shiftl_arg2_0)) (let rec _lh_zip3_LH_C_1_0 = (fun _lh_zip3_LH_C_0_0 _lh_zip3_LH_C_0_1 _lh_zip3_LH_C_1_1 _lh_zip3_LH_C_1_2 f_0 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_2 = _lh_shiftl_arg1_0 in
      (fun _lh_zip3_LH_C_0_3 _lh_zip3_LH_C_0_4 _lh_zip3_LH_C_1_3 _lh_zip3_LH_C_1_4 -> 
        (let rec t_0 = (((zip3__d3 _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_0) in
          (let rec h_0 = (let rec _lh_row_LH_P3_2_0 = _lh_zip3_LH_C_0_2 in
            (let rec _lh_row_LH_P3_1_0 = _lh_zip3_LH_C_0_4 in
              (let rec _lh_row_LH_P3_0_0 = _lh_zip3_LH_C_0_3 in
                (fun _lh_dummy_0 -> 
                  ((((zipWith3__d0 elt__d0) ((shift__d0 0) _lh_row_LH_P3_0_0)) ((shift__d1 0) _lh_row_LH_P3_1_0)) ((shift__d2 0) _lh_row_LH_P3_2_0)))))) in
            (fun f_1 -> 
              (`LH_C((f_1 h_0), ((map__d2 f_1) t_0))))))))))
and shiftr__d0 _lh_shiftr_arg1_3 _lh_shiftr_arg2_3 =
  ((mappend__d6 (let rec t_2_0 = (fun ys_2_0 -> 
    ys_2_0) in
    (let rec h_2_0 = _lh_shiftr_arg1_3 in
      (fun ys_2_1 -> 
        (let rec _lh_zip3_LH_C_1_3_6 = ((mappend__d6 t_2_0) ys_2_1) in
          (let rec _lh_zip3_LH_C_0_3_6 = h_2_0 in
            (fun _lh_zip3_arg2_1_3 _lh_zip3_arg3_1_3 -> 
              (let rec _lh_matchIdent_2_0 = _lh_zip3_arg2_1_3 in
                (match _lh_matchIdent_2_0 with
                  | `LH_C(_lh_zip3_LH_C_0_3_7, _lh_zip3_LH_C_1_3_7) -> 
                    (let rec _lh_matchIdent_2_1 = _lh_zip3_arg3_1_3 in
                      ((((_lh_matchIdent_2_1 _lh_zip3_LH_C_0_3_6) _lh_zip3_LH_C_0_3_7) _lh_zip3_LH_C_1_3_6) _lh_zip3_LH_C_1_3_7))
                  | `LH_N -> 
                    (fun _lh_zipWith3_arg1_1_2 _lh_zipWith3_arg3_3 _lh_zipWith3_arg4_9 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d0 _lh_shiftr_arg2_3))
and shiftr__d1 _lh_shiftr_arg1_2 _lh_shiftr_arg2_2 =
  ((mappend__d8 (let rec t_1_9 = (fun ys_1_8 -> 
    ys_1_8) in
    (let rec h_1_9 = _lh_shiftr_arg1_2 in
      (fun ys_1_9 -> 
        (let rec _lh_zip3_LH_C_1_3_4 = ((mappend__d8 t_1_9) ys_1_9) in
          (let rec _lh_zip3_LH_C_0_3_4 = h_1_9 in
            (fun _lh_zip3_arg2_1_2 _lh_zip3_arg3_1_2 -> 
              (let rec _lh_matchIdent_1_8 = _lh_zip3_arg2_1_2 in
                (match _lh_matchIdent_1_8 with
                  | `LH_C(_lh_zip3_LH_C_0_3_5, _lh_zip3_LH_C_1_3_5) -> 
                    (let rec _lh_matchIdent_1_9 = _lh_zip3_arg3_1_2 in
                      ((((_lh_matchIdent_1_9 _lh_zip3_LH_C_0_3_5) _lh_zip3_LH_C_0_3_4) _lh_zip3_LH_C_1_3_5) _lh_zip3_LH_C_1_3_4))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_1_5 _lh_zipWith3_LH_C_1_1_5 _lh_zipWith3_arg1_1_1 _lh_zipWith3_arg4_8 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d1 _lh_shiftr_arg2_2))
and shiftr__d2 _lh_shiftr_arg1_0 _lh_shiftr_arg2_0 =
  ((mappend__d1_d0 (let rec t_1_4 = (fun ys_1_2 -> 
    ys_1_2) in
    (let rec h_1_4 = _lh_shiftr_arg1_0 in
      (fun ys_1_3 -> 
        (let rec _lh_zip3_LH_C_1_2_1 = ((mappend__d1_d0 t_1_4) ys_1_3) in
          (let rec _lh_zip3_LH_C_0_2_1 = h_1_4 in
            (fun _lh_zip3_arg2_3 _lh_zip3_arg3_3 -> 
              (let rec _lh_matchIdent_7 = _lh_zip3_arg2_3 in
                (match _lh_matchIdent_7 with
                  | `LH_C(_lh_zip3_LH_C_0_2_2, _lh_zip3_LH_C_1_2_2) -> 
                    (let rec _lh_matchIdent_8 = _lh_zip3_arg3_3 in
                      ((((_lh_matchIdent_8 _lh_zip3_LH_C_0_2_1) _lh_zip3_LH_C_0_2_2) _lh_zip3_LH_C_1_2_1) _lh_zip3_LH_C_1_2_2))
                  | `LH_N -> 
                    (fun _lh_zipWith3_LH_C_0_7 _lh_zipWith3_LH_C_0_8 _lh_zipWith3_LH_C_1_7 _lh_zipWith3_LH_C_1_8 _lh_zipWith3_arg1_6 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d2 _lh_shiftr_arg2_0))
and shiftr__d3 _lh_shiftr_arg1_1 _lh_shiftr_arg2_1 =
  ((mappend__d1_d2 (let rec t_1_8 = (fun ys_1_6 -> 
    ys_1_6) in
    (let rec h_1_8 = _lh_shiftr_arg1_1 in
      (fun ys_1_7 -> 
        (let rec _lh_zip3_LH_C_1_3_2 = ((mappend__d1_d2 t_1_8) ys_1_7) in
          (let rec _lh_zip3_LH_C_0_3_2 = h_1_8 in
            (fun _lh_zip3_arg2_1_1 _lh_zip3_arg3_1_1 -> 
              (let rec _lh_matchIdent_1_6 = _lh_zip3_arg2_1_1 in
                (match _lh_matchIdent_1_6 with
                  | `LH_C(_lh_zip3_LH_C_0_3_3, _lh_zip3_LH_C_1_3_3) -> 
                    (let rec _lh_matchIdent_1_7 = _lh_zip3_arg3_1_1 in
                      ((((_lh_matchIdent_1_7 _lh_zip3_LH_C_0_3_2) _lh_zip3_LH_C_0_3_3) _lh_zip3_LH_C_1_3_2) _lh_zip3_LH_C_1_3_3))
                  | `LH_N -> 
                    (fun f_1_5 -> 
                      (`LH_N))
                  | _ -> 
                    (failwith "error")))))))))) (init__d3 _lh_shiftr_arg2_1))
and star__d0 _lh_star_arg1_0 =
  (match _lh_star_arg1_0 with
    | 0 -> 
      (let rec t_2_5 = (let rec t_2_6 = (fun ys_3_1 -> 
        ys_3_1) in
        (let rec h_2_5 = ' ' in
          (fun ys_3_2 -> 
            (let rec t_2_7 = ((mappend__d0 t_2_6) ys_3_2) in
              (let rec h_2_6 = h_2_5 in
                (fun ys_3_3 -> 
                  (let rec t_2_8 = ((mappend__d2 t_2_7) ys_3_3) in
                    (let rec h_2_7 = h_2_6 in
                      (fun ys_3_4 -> 
                        (`LH_C(h_2_7, ((mappend__d1 t_2_8) ys_3_4)))))))))))) in
        (let rec h_2_8 = ' ' in
          (fun ys_3_5 -> 
            (let rec t_2_9 = ((mappend__d0 t_2_5) ys_3_5) in
              (let rec h_2_9 = h_2_8 in
                (fun ys_3_6 -> 
                  (let rec t_3_0 = ((mappend__d2 t_2_9) ys_3_6) in
                    (let rec h_3_0 = h_2_9 in
                      (fun ys_3_7 -> 
                        (`LH_C(h_3_0, ((mappend__d1 t_3_0) ys_3_7))))))))))))
    | 1 -> 
      (let rec t_3_1 = (let rec t_3_2 = (fun ys_3_8 -> 
        ys_3_8) in
        (let rec h_3_1 = 'o' in
          (fun ys_3_9 -> 
            (let rec t_3_3 = ((mappend__d0 t_3_2) ys_3_9) in
              (let rec h_3_2 = h_3_1 in
                (fun ys_4_0 -> 
                  (let rec t_3_4 = ((mappend__d2 t_3_3) ys_4_0) in
                    (let rec h_3_3 = h_3_2 in
                      (fun ys_4_1 -> 
                        (`LH_C(h_3_3, ((mappend__d1 t_3_4) ys_4_1)))))))))))) in
        (let rec h_3_4 = ' ' in
          (fun ys_4_2 -> 
            (let rec t_3_5 = ((mappend__d0 t_3_1) ys_4_2) in
              (let rec h_3_5 = h_3_4 in
                (fun ys_4_3 -> 
                  (let rec t_3_6 = ((mappend__d2 t_3_5) ys_4_3) in
                    (let rec h_3_6 = h_3_5 in
                      (fun ys_4_4 -> 
                        (`LH_C(h_3_6, ((mappend__d1 t_3_6) ys_4_4))))))))))))
    | _ -> 
      (failwith "error"))
and start__d0 ys_1_0_4 f_3_3 n_4_6 =
  (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (let rec t_4_9 = (let rec t_5_0 = (let rec t_5_1 = (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (fun ys_4_7 -> 
    ys_4_7) in
    (let rec h_4_0 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (let rec t_7_7 = (let rec t_7_8 = (let rec t_7_9 = (let rec t_8_0 = (let rec t_8_1 = (fun ys_4_8 -> 
      ys_4_8) in
      (let rec h_4_1 = 0 in
        (fun ys_4_9 -> 
          (let rec t_8_2 = ((mappend__d1_d3 t_8_1) ys_4_9) in
            (let rec h_4_2 = h_4_1 in
              (fun n_5 -> 
                (`LH_C(h_4_2, ((take__d1 (n_5 - 1)) t_8_2))))))))) in
      (let rec h_4_3 = 1 in
        (fun ys_5_0 -> 
          (let rec t_8_3 = ((mappend__d1_d3 t_8_0) ys_5_0) in
            (let rec h_4_4 = h_4_3 in
              (fun n_6 -> 
                (`LH_C(h_4_4, ((take__d1 (n_6 - 1)) t_8_3))))))))) in
      (let rec h_4_5 = 1 in
        (fun ys_5_1 -> 
          (let rec t_8_4 = ((mappend__d1_d3 t_7_9) ys_5_1) in
            (let rec h_4_6 = h_4_5 in
              (fun n_7 -> 
                (`LH_C(h_4_6, ((take__d1 (n_7 - 1)) t_8_4))))))))) in
      (let rec h_4_7 = 1 in
        (fun ys_5_2 -> 
          (let rec t_8_5 = ((mappend__d1_d3 t_7_8) ys_5_2) in
            (let rec h_4_8 = h_4_7 in
              (fun n_8 -> 
                (`LH_C(h_4_8, ((take__d1 (n_8 - 1)) t_8_5))))))))) in
      (let rec h_4_9 = 1 in
        (fun ys_5_3 -> 
          (let rec t_8_6 = ((mappend__d1_d3 t_7_7) ys_5_3) in
            (let rec h_5_0 = h_4_9 in
              (fun n_9 -> 
                (`LH_C(h_5_0, ((take__d1 (n_9 - 1)) t_8_6))))))))) in
      (let rec h_5_1 = 1 in
        (fun ys_5_4 -> 
          (let rec t_8_7 = ((mappend__d1_d3 t_7_6) ys_5_4) in
            (let rec h_5_2 = h_5_1 in
              (fun n_1_0 -> 
                (`LH_C(h_5_2, ((take__d1 (n_1_0 - 1)) t_8_7))))))))) in
      (let rec h_5_3 = 0 in
        (fun ys_5_5 -> 
          (let rec t_8_8 = ((mappend__d1_d3 t_7_5) ys_5_5) in
            (let rec h_5_4 = h_5_3 in
              (fun n_1_1 -> 
                (`LH_C(h_5_4, ((take__d1 (n_1_1 - 1)) t_8_8))))))))) in
      (let rec h_5_5 = 1 in
        (fun ys_5_6 -> 
          (let rec t_8_9 = ((mappend__d1_d3 t_7_4) ys_5_6) in
            (let rec h_5_6 = h_5_5 in
              (fun n_1_2 -> 
                (`LH_C(h_5_6, ((take__d1 (n_1_2 - 1)) t_8_9))))))))) in
      (let rec h_5_7 = 1 in
        (fun ys_5_7 -> 
          (let rec t_9_0 = ((mappend__d1_d3 t_7_3) ys_5_7) in
            (let rec h_5_8 = h_5_7 in
              (fun n_1_3 -> 
                (`LH_C(h_5_8, ((take__d1 (n_1_3 - 1)) t_9_0))))))))) in
      (let rec h_5_9 = 1 in
        (fun ys_5_8 -> 
          (let rec t_9_1 = ((mappend__d1_d3 t_7_2) ys_5_8) in
            (let rec h_6_0 = h_5_9 in
              (fun n_1_4 -> 
                (`LH_C(h_6_0, ((take__d1 (n_1_4 - 1)) t_9_1))))))))) in
      (let rec h_6_1 = 1 in
        (fun ys_5_9 -> 
          (let rec t_9_2 = ((mappend__d1_d3 t_7_1) ys_5_9) in
            (let rec h_6_2 = h_6_1 in
              (fun n_1_5 -> 
                (`LH_C(h_6_2, ((take__d1 (n_1_5 - 1)) t_9_2))))))))) in
      (let rec h_6_3 = 1 in
        (fun ys_6_0 -> 
          (let rec t_9_3 = ((mappend__d1_d3 t_7_0) ys_6_0) in
            (let rec h_6_4 = h_6_3 in
              (fun n_1_6 -> 
                (`LH_C(h_6_4, ((take__d1 (n_1_6 - 1)) t_9_3))))))))) in
      (let rec h_6_5 = 0 in
        (fun ys_6_1 -> 
          (let rec t_9_4 = ((mappend__d1_d3 t_6_9) ys_6_1) in
            (let rec h_6_6 = h_6_5 in
              (fun n_1_7 -> 
                (`LH_C(h_6_6, ((take__d1 (n_1_7 - 1)) t_9_4))))))))) in
      (let rec h_6_7 = 1 in
        (fun ys_6_2 -> 
          (let rec t_9_5 = ((mappend__d1_d3 t_6_8) ys_6_2) in
            (let rec h_6_8 = h_6_7 in
              (fun n_1_8 -> 
                (`LH_C(h_6_8, ((take__d1 (n_1_8 - 1)) t_9_5))))))))) in
      (let rec h_6_9 = 1 in
        (fun ys_6_3 -> 
          (let rec t_9_6 = ((mappend__d1_d3 t_6_7) ys_6_3) in
            (let rec h_7_0 = h_6_9 in
              (fun n_1_9 -> 
                (`LH_C(h_7_0, ((take__d1 (n_1_9 - 1)) t_9_6))))))))) in
      (let rec h_7_1 = 1 in
        (fun ys_6_4 -> 
          (let rec t_9_7 = ((mappend__d1_d3 t_6_6) ys_6_4) in
            (let rec h_7_2 = h_7_1 in
              (fun n_2_0 -> 
                (`LH_C(h_7_2, ((take__d1 (n_2_0 - 1)) t_9_7))))))))) in
      (let rec h_7_3 = 1 in
        (fun ys_6_5 -> 
          (let rec t_9_8 = ((mappend__d1_d3 t_6_5) ys_6_5) in
            (let rec h_7_4 = h_7_3 in
              (fun n_2_1 -> 
                (`LH_C(h_7_4, ((take__d1 (n_2_1 - 1)) t_9_8))))))))) in
      (let rec h_7_5 = 1 in
        (fun ys_6_6 -> 
          (let rec t_9_9 = ((mappend__d1_d3 t_6_4) ys_6_6) in
            (let rec h_7_6 = h_7_5 in
              (fun n_2_2 -> 
                (`LH_C(h_7_6, ((take__d1 (n_2_2 - 1)) t_9_9))))))))) in
      (let rec h_7_7 = 0 in
        (fun ys_6_7 -> 
          (let rec t_1_0_0 = ((mappend__d1_d3 t_6_3) ys_6_7) in
            (let rec h_7_8 = h_7_7 in
              (fun n_2_3 -> 
                (`LH_C(h_7_8, ((take__d1 (n_2_3 - 1)) t_1_0_0))))))))) in
      (let rec h_7_9 = 1 in
        (fun ys_6_8 -> 
          (let rec t_1_0_1 = ((mappend__d1_d3 t_6_2) ys_6_8) in
            (let rec h_8_0 = h_7_9 in
              (fun n_2_4 -> 
                (`LH_C(h_8_0, ((take__d1 (n_2_4 - 1)) t_1_0_1))))))))) in
      (let rec h_8_1 = 1 in
        (fun ys_6_9 -> 
          (let rec t_1_0_2 = ((mappend__d1_d3 t_6_1) ys_6_9) in
            (let rec h_8_2 = h_8_1 in
              (fun n_2_5 -> 
                (`LH_C(h_8_2, ((take__d1 (n_2_5 - 1)) t_1_0_2))))))))) in
      (let rec h_8_3 = 1 in
        (fun ys_7_0 -> 
          (let rec t_1_0_3 = ((mappend__d1_d3 t_6_0) ys_7_0) in
            (let rec h_8_4 = h_8_3 in
              (fun n_2_6 -> 
                (`LH_C(h_8_4, ((take__d1 (n_2_6 - 1)) t_1_0_3))))))))) in
      (let rec h_8_5 = 1 in
        (fun ys_7_1 -> 
          (let rec t_1_0_4 = ((mappend__d1_d3 t_5_9) ys_7_1) in
            (let rec h_8_6 = h_8_5 in
              (fun n_2_7 -> 
                (`LH_C(h_8_6, ((take__d1 (n_2_7 - 1)) t_1_0_4))))))))) in
      (let rec h_8_7 = 1 in
        (fun ys_7_2 -> 
          (let rec t_1_0_5 = ((mappend__d1_d3 t_5_8) ys_7_2) in
            (let rec h_8_8 = h_8_7 in
              (fun n_2_8 -> 
                (`LH_C(h_8_8, ((take__d1 (n_2_8 - 1)) t_1_0_5))))))))) in
      (let rec h_8_9 = 0 in
        (fun ys_7_3 -> 
          (let rec t_1_0_6 = ((mappend__d1_d3 t_5_7) ys_7_3) in
            (let rec h_9_0 = h_8_9 in
              (fun n_2_9 -> 
                (`LH_C(h_9_0, ((take__d1 (n_2_9 - 1)) t_1_0_6))))))))) in
      (let rec h_9_1 = 0 in
        (fun ys_7_4 -> 
          (let rec t_1_0_7 = ((mappend__d1_d3 t_5_6) ys_7_4) in
            (let rec h_9_2 = h_9_1 in
              (fun n_3_0 -> 
                (`LH_C(h_9_2, ((take__d1 (n_3_0 - 1)) t_1_0_7))))))))) in
      (let rec h_9_3 = 0 in
        (fun ys_7_5 -> 
          (let rec t_1_0_8 = ((mappend__d1_d3 t_5_5) ys_7_5) in
            (let rec h_9_4 = h_9_3 in
              (fun n_3_1 -> 
                (`LH_C(h_9_4, ((take__d1 (n_3_1 - 1)) t_1_0_8))))))))) in
      (fun ys_7_6 -> 
        (let rec t_1_0_9 = ((mappend__d1_d4 t_5_4) ys_7_6) in
          (let rec h_9_5 = h_4_0 in
            (fun f_1_9 -> 
              (let rec t_1_1_0 = ((map__d4 f_1_9) t_1_0_9) in
                (let rec h_9_6 = (f_1_9 h_9_5) in
                  (fun n_3_2 -> 
                    (`LH_C(h_9_6, ((take__d0 (n_3_2 - 1)) t_1_1_0)))))))))))) in
    (let rec h_9_7 = (fun ys_7_7 -> 
      ys_7_7) in
      (fun ys_7_8 -> 
        (let rec t_1_1_1 = ((mappend__d1_d4 t_5_3) ys_7_8) in
          (let rec h_9_8 = h_9_7 in
            (fun f_2_0 -> 
              (let rec t_1_1_2 = ((map__d4 f_2_0) t_1_1_1) in
                (let rec h_9_9 = (f_2_0 h_9_8) in
                  (fun n_3_3 -> 
                    (`LH_C(h_9_9, ((take__d0 (n_3_3 - 1)) t_1_1_2)))))))))))) in
    (let rec h_1_0_0 = (fun ys_7_9 -> 
      ys_7_9) in
      (fun ys_8_0 -> 
        (let rec t_1_1_3 = ((mappend__d1_d4 t_5_2) ys_8_0) in
          (let rec h_1_0_1 = h_1_0_0 in
            (fun f_2_1 -> 
              (let rec t_1_1_4 = ((map__d4 f_2_1) t_1_1_3) in
                (let rec h_1_0_2 = (f_2_1 h_1_0_1) in
                  (fun n_3_4 -> 
                    (`LH_C(h_1_0_2, ((take__d0 (n_3_4 - 1)) t_1_1_4)))))))))))) in
    (let rec h_1_0_3 = (fun ys_8_1 -> 
      ys_8_1) in
      (fun ys_8_2 -> 
        (let rec t_1_1_5 = ((mappend__d1_d4 t_5_1) ys_8_2) in
          (let rec h_1_0_4 = h_1_0_3 in
            (fun f_2_2 -> 
              (let rec t_1_1_6 = ((map__d4 f_2_2) t_1_1_5) in
                (let rec h_1_0_5 = (f_2_2 h_1_0_4) in
                  (fun n_3_5 -> 
                    (`LH_C(h_1_0_5, ((take__d0 (n_3_5 - 1)) t_1_1_6)))))))))))) in
    (let rec h_1_0_6 = (fun ys_8_3 -> 
      ys_8_3) in
      (fun ys_8_4 -> 
        (let rec t_1_1_7 = ((mappend__d1_d4 t_5_0) ys_8_4) in
          (let rec h_1_0_7 = h_1_0_6 in
            (fun f_2_3 -> 
              (let rec t_1_1_8 = ((map__d4 f_2_3) t_1_1_7) in
                (let rec h_1_0_8 = (f_2_3 h_1_0_7) in
                  (fun n_3_6 -> 
                    (`LH_C(h_1_0_8, ((take__d0 (n_3_6 - 1)) t_1_1_8)))))))))))) in
    (let rec h_1_0_9 = (fun ys_8_5 -> 
      ys_8_5) in
      (fun ys_8_6 -> 
        (let rec t_1_1_9 = ((mappend__d1_d4 t_4_9) ys_8_6) in
          (let rec h_1_1_0 = h_1_0_9 in
            (fun f_2_4 -> 
              (let rec t_1_2_0 = ((map__d4 f_2_4) t_1_1_9) in
                (let rec h_1_1_1 = (f_2_4 h_1_1_0) in
                  (fun n_3_7 -> 
                    (`LH_C(h_1_1_1, ((take__d0 (n_3_7 - 1)) t_1_2_0)))))))))))) in
    (let rec h_1_1_2 = (fun ys_8_7 -> 
      ys_8_7) in
      (fun ys_8_8 -> 
        (let rec t_1_2_1 = ((mappend__d1_d4 t_4_8) ys_8_8) in
          (let rec h_1_1_3 = h_1_1_2 in
            (fun f_2_5 -> 
              (let rec t_1_2_2 = ((map__d4 f_2_5) t_1_2_1) in
                (let rec h_1_1_4 = (f_2_5 h_1_1_3) in
                  (fun n_3_8 -> 
                    (`LH_C(h_1_1_4, ((take__d0 (n_3_8 - 1)) t_1_2_2)))))))))))) in
    (let rec h_1_1_5 = (fun ys_8_9 -> 
      ys_8_9) in
      (fun ys_9_0 -> 
        (let rec t_1_2_3 = ((mappend__d1_d4 t_4_7) ys_9_0) in
          (let rec h_1_1_6 = h_1_1_5 in
            (fun f_2_6 -> 
              (let rec t_1_2_4 = ((map__d4 f_2_6) t_1_2_3) in
                (let rec h_1_1_7 = (f_2_6 h_1_1_6) in
                  (fun n_3_9 -> 
                    (`LH_C(h_1_1_7, ((take__d0 (n_3_9 - 1)) t_1_2_4)))))))))))) in
    (let rec h_1_1_8 = (fun ys_9_1 -> 
      ys_9_1) in
      (fun ys_9_2 -> 
        (let rec t_1_2_5 = ((mappend__d1_d4 t_4_6) ys_9_2) in
          (let rec h_1_1_9 = h_1_1_8 in
            (fun f_2_7 -> 
              (let rec t_1_2_6 = ((map__d4 f_2_7) t_1_2_5) in
                (let rec h_1_2_0 = (f_2_7 h_1_1_9) in
                  (fun n_4_0 -> 
                    (`LH_C(h_1_2_0, ((take__d0 (n_4_0 - 1)) t_1_2_6)))))))))))) in
    (let rec h_1_2_1 = (fun ys_9_3 -> 
      ys_9_3) in
      (fun ys_9_4 -> 
        (let rec t_1_2_7 = ((mappend__d1_d4 t_4_5) ys_9_4) in
          (let rec h_1_2_2 = h_1_2_1 in
            (fun f_2_8 -> 
              (let rec t_1_2_8 = ((map__d4 f_2_8) t_1_2_7) in
                (let rec h_1_2_3 = (f_2_8 h_1_2_2) in
                  (fun n_4_1 -> 
                    (`LH_C(h_1_2_3, ((take__d0 (n_4_1 - 1)) t_1_2_8)))))))))))) in
    (let rec h_1_2_4 = (fun ys_9_5 -> 
      ys_9_5) in
      (fun ys_9_6 -> 
        (let rec t_1_2_9 = ((mappend__d1_d4 t_4_4) ys_9_6) in
          (let rec h_1_2_5 = h_1_2_4 in
            (fun f_2_9 -> 
              (let rec t_1_3_0 = ((map__d4 f_2_9) t_1_2_9) in
                (let rec h_1_2_6 = (f_2_9 h_1_2_5) in
                  (fun n_4_2 -> 
                    (`LH_C(h_1_2_6, ((take__d0 (n_4_2 - 1)) t_1_3_0)))))))))))) in
    (let rec h_1_2_7 = (fun ys_9_7 -> 
      ys_9_7) in
      (fun ys_9_8 -> 
        (let rec t_1_3_1 = ((mappend__d1_d4 t_4_3) ys_9_8) in
          (let rec h_1_2_8 = h_1_2_7 in
            (fun f_3_0 -> 
              (let rec t_1_3_2 = ((map__d4 f_3_0) t_1_3_1) in
                (let rec h_1_2_9 = (f_3_0 h_1_2_8) in
                  (fun n_4_3 -> 
                    (`LH_C(h_1_2_9, ((take__d0 (n_4_3 - 1)) t_1_3_2)))))))))))) in
    (let rec h_1_3_0 = (fun ys_9_9 -> 
      ys_9_9) in
      (fun ys_1_0_0 -> 
        (let rec t_1_3_3 = ((mappend__d1_d4 t_4_2) ys_1_0_0) in
          (let rec h_1_3_1 = h_1_3_0 in
            (fun f_3_1 -> 
              (let rec t_1_3_4 = ((map__d4 f_3_1) t_1_3_3) in
                (let rec h_1_3_2 = (f_3_1 h_1_3_1) in
                  (fun n_4_4 -> 
                    (`LH_C(h_1_3_2, ((take__d0 (n_4_4 - 1)) t_1_3_4)))))))))))) in
    (let rec h_1_3_3 = (fun ys_1_0_1 -> 
      ys_1_0_1) in
      (fun ys_1_0_2 -> 
        (let rec t_1_3_5 = ((mappend__d1_d4 t_4_1) ys_1_0_2) in
          (let rec h_1_3_4 = h_1_3_3 in
            (fun f_3_2 -> 
              (let rec t_1_3_6 = ((map__d4 f_3_2) t_1_3_5) in
                (let rec h_1_3_5 = (f_3_2 h_1_3_4) in
                  (fun n_4_5 -> 
                    (`LH_C(h_1_3_5, ((take__d0 (n_4_5 - 1)) t_1_3_6)))))))))))) in
    (let rec h_1_3_6 = (fun ys_1_0_3 -> 
      ys_1_0_3) in
      (let rec t_1_3_7 = ((mappend__d1_d4 t_4_0) ys_1_0_4) in
        (let rec h_1_3_7 = h_1_3_6 in
          (let rec t_1_3_8 = ((map__d4 f_3_3) t_1_3_7) in
            (let rec h_1_3_8 = (f_3_3 h_1_3_7) in
              (`LH_C(h_1_3_8, ((take__d0 (n_4_6 - 1)) t_1_3_8)))))))))
and testLife_nofib__d0 _lh_testLife_nofib_arg1_0 =
  (generations__d0 _lh_testLife_nofib_arg1_0);;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Life_nofib" (fun () -> ignore (let open Module_original in ((testLife_nofib__d0 15))));
  Bench.Test.create ~name:"lumberhack_Life_nofib" (fun () -> ignore (let open Module_lumberhack in ((testLife_nofib__d0 15))));
  Bench.Test.create ~name:"lumberhack_pop_out_Life_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testLife_nofib__d0 15))));
])