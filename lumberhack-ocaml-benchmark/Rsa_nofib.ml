(*
touch ./Rsa_nofib.mli && ocamlc ./Rsa_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Rsa_nofib.ml -o "./Rsa_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Rsa_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec copy__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec drop__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec even__d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec foldl__d0 f_1_3 i_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (((foldl__d0 f_1_3) ((f_1_3 i_3) h_2_3)) t_2_5)
    | `LH_N -> 
      i_3);;
let rec length__d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length__d0 t_2_9))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_2 h_2_2), ((map__d0 f_1_2) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_4 h_2_5), ((map__d1 f_1_4) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d0 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d1 t_2_8) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec sqr__d0 _lh_sqr_arg1_1 =
  (_lh_sqr_arg1_1 * _lh_sqr_arg1_1);;
let rec take__d0 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match ls_1_9 with
      | `LH_C(h_2_0, t_2_2) -> 
        (`LH_C(h_2_0, ((take__d0 (n_4 - 1)) t_2_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec code__d0 _lh_code_arg1_1 =
  (((foldl__d0 (fun x_3 y_1 -> 
    ((128 * x_3) + (int_of_char y_1)))) 0) _lh_code_arg1_1)
and collect__d0 _lh_collect_arg1_1 _lh_collect_arg2_1 =
  (match _lh_collect_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (match _lh_collect_arg2_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(((take__d0 _lh_collect_arg1_1) _lh_collect_arg2_1), ((collect__d0 _lh_collect_arg1_1) ((drop__d0 _lh_collect_arg1_1) _lh_collect_arg2_1))))))
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      ((mappend__d0 h_2_4) (concat__d0 t_2_6))
    | `LH_N -> 
      (`LH_N))
and encrypt__d0 _lh_encrypt_arg1_1 _lh_encrypt_arg2_1 _lh_funcomp_x_4 =
  ((fun _lh_funcomp_x_5 -> 
    (unlines__d0 ((map__d0 (fun _lh_funcomp_x_6 -> 
      ((fun _lh_funcomp_x_7 -> 
        (string_of_int (((power__d0 _lh_encrypt_arg2_1) _lh_encrypt_arg1_1) _lh_funcomp_x_7))) (code__d0 _lh_funcomp_x_6)))) _lh_funcomp_x_5))) ((collect__d0 (size__d0 _lh_encrypt_arg1_1)) _lh_funcomp_x_4))
and power__d0 _lh_power_arg1_1 _lh_power_arg2_1 _lh_power_arg3_1 =
  (match _lh_power_arg1_1 with
    | 0 -> 
      1
    | _ -> 
      (if (even__d0 _lh_power_arg1_1) then
        ((sqr__d0 (((power__d0 (_lh_power_arg1_1 / 2)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)
      else
        ((_lh_power_arg3_1 * (((power__d0 (_lh_power_arg1_1 - 1)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)))
and size__d0 _lh_size_arg1_1 =
  (((length__d0 (string_of_int _lh_size_arg1_1)) * 47) / 100)
and testRsa_nofib__d0 _lh_testRsa_nofib_arg1_1 =
  (((encrypt__d0 6367) 5189) ((copy__d0 _lh_testRsa_nofib_arg1_1) 'l'))
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d0 ((map__d1 (fun l_1 -> 
    ((mappend__d1 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1));;

(* lumberhack *)
let rec copy__d0__d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy__d0__d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec drop__d0__d0 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop__d0__d0 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec even__d0__d0 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec foldl__d0__d0 f_1 i_0 ls_1 =
  ((ls_1 f_1) i_0);;
let rec length__d0__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_6, t_6) -> 
      (1 + (length__d0__d0 t_6))
    | `LH_N -> 
      0);;
let rec map__d0__d0 f_5 ls_3 =
  (ls_3 f_5);;
let rec map__d1__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec mappend__d0__d0 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend__d0__d0 t_8) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend__d0__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend__d0__d1 t_5) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend__d1__d0 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend__d1__d0 t_4) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec sqr__d0__d0 _lh_sqr_arg1_0 =
  (_lh_sqr_arg1_0 * _lh_sqr_arg1_0);;
let rec code__d0__d0 _lh_code_arg1_0 =
  (((foldl__d0__d0 (fun x_0 y_0 -> 
    ((128 * x_0) + (int_of_char y_0)))) 0) _lh_code_arg1_0)
and collect__d0__d0 _lh_collect_arg1_0 _lh_collect_arg2_0 =
  (match _lh_collect_arg1_0 with
    | 0 -> 
      (fun f_6 f_7 -> 
        (`LH_N))
    | _ -> 
      (match _lh_collect_arg2_0 with
        | `LH_N -> 
          (fun f_8 f_9 -> 
            (`LH_N))
        | _ -> 
          (let rec t_2 = ((collect__d0__d0 _lh_collect_arg1_0) ((drop__d0__d0 _lh_collect_arg1_0) _lh_collect_arg2_0)) in
            (let rec h_2 = ((take__d0__d0 _lh_collect_arg1_0) _lh_collect_arg2_0) in
              (fun f_1_0 -> 
                (let rec t_3 = ((map__d0__d0 f_1_0) t_2) in
                  (let rec h_3 = (f_1_0 h_2) in
                    (fun f_1_1 -> 
                      (`LH_C((f_1_1 h_3), ((map__d1__d0 f_1_1) t_3)))))))))))
and concat__d0__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_9, t_9) -> 
      ((mappend__d0__d1 h_9) (concat__d0__d1 t_9))
    | `LH_N -> 
      (`LH_N))
and concat__d0__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_7, t_7) -> 
      ((mappend__d0__d0 h_7) (concat__d0__d1 t_7))
    | `LH_N -> 
      (`LH_N))
and encrypt__d0__d0 _lh_encrypt_arg1_0 _lh_encrypt_arg2_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (unlines__d0__d0 ((map__d0__d0 (fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (string_of_int (((power__d0__d0 _lh_encrypt_arg2_0) _lh_encrypt_arg1_0) _lh_funcomp_x_3))) (code__d0__d0 _lh_funcomp_x_2)))) _lh_funcomp_x_1))) ((collect__d0__d0 (size__d0__d0 _lh_encrypt_arg1_0)) _lh_funcomp_x_0))
and power__d0__d0 _lh_power_arg1_0 _lh_power_arg2_0 _lh_power_arg3_0 =
  (match _lh_power_arg1_0 with
    | 0 -> 
      1
    | _ -> 
      (if (even__d0__d0 _lh_power_arg1_0) then
        ((sqr__d0__d0 (((power__d0__d0 (_lh_power_arg1_0 / 2)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)
      else
        ((_lh_power_arg3_0 * (((power__d0__d0 (_lh_power_arg1_0 - 1)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)))
and size__d0__d0 _lh_size_arg1_0 =
  (((length__d0__d0 (string_of_int _lh_size_arg1_0)) * 47) / 100)
and take__d0__d0 n_0 ls_2 =
  (if (n_0 > 0) then
    (match ls_2 with
      | `LH_C(h_0, t_0) -> 
        (let rec t_1 = ((take__d0__d0 (n_0 - 1)) t_0) in
          (let rec h_1 = h_0 in
            (fun f_2 i_1 -> 
              (((foldl__d0__d0 f_2) ((f_2 i_1) h_1)) t_1))))
      | `LH_N -> 
        (fun f_3 i_2 -> 
          i_2))
  else
    (fun f_4 i_3 -> 
      i_3))
and testRsa_nofib__d0__d0 _lh_testRsa_nofib_arg1_0 =
  (((encrypt__d0__d0 6367) 5189) ((copy__d0__d0 _lh_testRsa_nofib_arg1_0) 'l'))
and unlines__d0__d0 _lh_unlines_arg1_0 =
  (concat__d0__d0 ((map__d1__d0 (fun l_0 -> 
    ((mappend__d1__d0 l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;

(* lumberhack_pop_out *)
let rec copy__d0__d0__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy__d0__d0__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec drop__d0__d0__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d0__d0__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec even__d0__d0__d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec foldl__d0__d0__d0 f_1_7 i_7 ls_8 =
  ((ls_8 f_1_7) i_7);;
let rec foldl__d0__d0__d1 f_2_6 i_8 ls_1_1 =
  ((ls_1_1 f_2_6) i_8);;
let rec length__d0__d0__d0 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_9, t_1_9) -> 
      (1 + (length__d0__d0__d0 t_1_9))
    | `LH_N -> 
      0);;
let rec map__d0__d0__d0 f_2_4 ls_9 =
  (ls_9 f_2_4);;
let rec map__d0__d0__d1 f_1_6 ls_7 =
  (ls_7 f_1_6);;
let rec map__d1__d0__d0 f_1_5 ls_6 =
  (ls_6 f_1_5);;
let rec map__d1__d0__d1 f_2_5 ls_1_0 =
  (ls_1_0 f_2_5);;
let rec mappend__d0__d0__d0 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend__d0__d0__d0 t_1_8) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend__d0__d1__d0 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C(h_1_3, ((mappend__d0__d1__d0 t_1_3) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend__d1__d0__d0 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend__d1__d0__d0 t_1_0) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec sqr__d0__d0__d0 _lh_sqr_arg1_1 =
  (_lh_sqr_arg1_1 * _lh_sqr_arg1_1);;
let rec code__d0__d0__d0 _lh_code_arg1_1 =
  (((foldl__d0__d0__d0 (fun x_1 y_1 -> 
    ((128 * x_1) + (int_of_char y_1)))) 0) _lh_code_arg1_1)
and collect__d0__d0__d0 _lh_collect_arg1_1 _lh_collect_arg2_1 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (match _lh_collect_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (match _lh_collect_arg2_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (let rec t_1_4 = ((collect__d0__d0__d0 _lh_collect_arg1_1) ((drop__d0__d0__d0 _lh_collect_arg1_1) _lh_collect_arg2_1)) in
            (let rec h_1_4 = ((take__d0__d0__d0 _lh_collect_arg1_1) _lh_collect_arg2_1) in
              (let rec t_1_5 = ((map__d0__d0__d0 _lh_popOutId_0_1) t_1_4) in
                (let rec h_1_5 = (_lh_popOutId_0_1 h_1_4) in
                  (`LH_C((_lh_popOutId_1_1 h_1_5), ((map__d1__d0__d0 _lh_popOutId_1_1) t_1_5)))))))))
and concat__d0__d0__d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_1_6, t_1_6) -> 
      ((mappend__d0__d1__d0 h_1_6) (concat__d0__d1__d0 t_1_6))
    | `LH_N -> 
      (`LH_N))
and concat__d0__d1__d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_1_7, t_1_7) -> 
      ((mappend__d0__d0__d0 h_1_7) (concat__d0__d1__d0 t_1_7))
    | `LH_N -> 
      (`LH_N))
and encrypt__d0__d0__d0 _lh_encrypt_arg1_1 _lh_encrypt_arg2_1 _lh_funcomp_x_4 =
  ((fun _lh_funcomp_x_5 -> 
    (unlines__d0__d0__d0 ((map__d0__d0__d1 (fun _lh_funcomp_x_6 -> 
      ((fun _lh_funcomp_x_7 -> 
        (string_of_int (((power__d0__d0__d0 _lh_encrypt_arg2_1) _lh_encrypt_arg1_1) _lh_funcomp_x_7))) (code__d0__d0__d0 _lh_funcomp_x_6)))) _lh_funcomp_x_5))) ((collect__d0__d0__d0 (size__d0__d0__d0 _lh_encrypt_arg1_1)) _lh_funcomp_x_4))
and power__d0__d0__d0 _lh_power_arg1_1 _lh_power_arg2_1 _lh_power_arg3_1 =
  (match _lh_power_arg1_1 with
    | 0 -> 
      1
    | _ -> 
      (if (even__d0__d0__d0 _lh_power_arg1_1) then
        ((sqr__d0__d0__d0 (((power__d0__d0__d0 (_lh_power_arg1_1 / 2)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)
      else
        ((_lh_power_arg3_1 * (((power__d0__d0__d0 (_lh_power_arg1_1 - 1)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)))
and size__d0__d0__d0 _lh_size_arg1_1 =
  (((length__d0__d0__d0 (string_of_int _lh_size_arg1_1)) * 47) / 100)
and take__d0__d0__d0 n_1 ls_5 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (if (n_1 > 0) then
    (match ls_5 with
      | `LH_C(h_1_1, t_1_1) -> 
        (let rec t_1_2 = ((take__d0__d0__d0 (n_1 - 1)) t_1_1) in
          (let rec h_1_2 = h_1_1 in
            (((foldl__d0__d0__d1 _lh_popOutId_0_3) ((_lh_popOutId_0_3 _lh_popOutId_1_3) h_1_2)) t_1_2)))
      | `LH_N -> 
        _lh_popOutId_1_3)
  else
    _lh_popOutId_1_3)
and testRsa_nofib__d0__d0__d0 _lh_testRsa_nofib_arg1_1 =
  (((encrypt__d0__d0__d0 6367) 5189) ((copy__d0__d0__d0 _lh_testRsa_nofib_arg1_1) 'l'))
and unlines__d0__d0__d0 _lh_unlines_arg1_1 =
  (concat__d0__d0__d0 ((map__d1__d0__d1 (fun l_1 -> 
    ((mappend__d1__d0__d0 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Rsa_nofib" (fun () -> ignore ((testRsa_nofib__d0 50520)));
  Bench.Test.create ~name:"lumberhack_Rsa_nofib" (fun () -> ignore ((testRsa_nofib__d0__d0 50520)));
  Bench.Test.create ~name:"lumberhack_pop_out_Rsa_nofib" (fun () -> ignore ((testRsa_nofib__d0__d0__d0 50520)));
])
