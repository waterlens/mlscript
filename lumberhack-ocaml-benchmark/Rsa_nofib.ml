(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Rsa_nofib.ml -o "./Rsa_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Rsa_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec copy_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec drop_d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop_d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec even_d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec foldl_d0 f_1_3 i_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (((foldl_d0 f_1_3) ((f_1_3 i_3) h_2_3)) t_2_5)
    | `LH_N -> 
      i_3);;
let rec length_d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length_d0 t_2_9))
    | `LH_N -> 
      0);;
let rec mappend_d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend_d0 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend_d1 t_2_8) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec map_d0 f_1_2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_2 h_2_2), ((map_d0 f_1_2) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_4 h_2_5), ((map_d1 f_1_4) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec sqr_d0 _lh_sqr_arg1_1 =
  (_lh_sqr_arg1_1 * _lh_sqr_arg1_1);;
let rec take_d0 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match ls_1_9 with
      | `LH_C(h_2_0, t_2_2) -> 
        (`LH_C(h_2_0, ((take_d0 (n_4 - 1)) t_2_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec code_d0 _lh_code_arg1_1 =
  (((foldl_d0 (fun x_3 y_1 -> 
    ((128 * x_3) + (int_of_char y_1)))) 0) _lh_code_arg1_1)
and collect_d0 _lh_collect_arg1_1 _lh_collect_arg2_1 =
  (match _lh_collect_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (match _lh_collect_arg2_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(((take_d0 _lh_collect_arg1_1) _lh_collect_arg2_1), ((collect_d0 _lh_collect_arg1_1) ((drop_d0 _lh_collect_arg1_1) _lh_collect_arg2_1))))))
and concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      ((mappend_d0 h_2_4) (concat_d0 t_2_6))
    | `LH_N -> 
      (`LH_N))
and encrypt_d0 _lh_encrypt_arg1_1 _lh_encrypt_arg2_1 _lh_funcomp_x_4 =
  ((fun _lh_funcomp_x_5 -> 
    (unlines_d0 ((map_d0 (fun _lh_funcomp_x_6 -> 
      ((fun _lh_funcomp_x_7 -> 
        (string_of_int (((power_d0 _lh_encrypt_arg2_1) _lh_encrypt_arg1_1) _lh_funcomp_x_7))) (code_d0 _lh_funcomp_x_6)))) _lh_funcomp_x_5))) ((collect_d0 (size_d0 _lh_encrypt_arg1_1)) _lh_funcomp_x_4))
and power_d0 _lh_power_arg1_1 _lh_power_arg2_1 _lh_power_arg3_1 =
  (match _lh_power_arg1_1 with
    | 0 -> 
      1
    | _ -> 
      (if (even_d0 _lh_power_arg1_1) then
        ((sqr_d0 (((power_d0 (_lh_power_arg1_1 / 2)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)
      else
        ((_lh_power_arg3_1 * (((power_d0 (_lh_power_arg1_1 - 1)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)))
and size_d0 _lh_size_arg1_1 =
  (((length_d0 (string_of_int _lh_size_arg1_1)) * 47) / 100)
and testRsa_nofib_d0 _lh_testRsa_nofib_arg1_1 =
  (((encrypt_d0 6367) 5189) ((copy_d0 _lh_testRsa_nofib_arg1_1) 'l'))
and unlines_d0 _lh_unlines_arg1_1 =
  (concat_d0 ((map_d1 (fun l_1 -> 
    ((mappend_d1 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1));;

(* lumberhack *)
let rec copy_d0_d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy_d0_d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec drop_d0_d0 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_d0_d0 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec even_d0_d0 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec foldl_d0_d0 f_1_1 i_3 ls_4 =
  ((ls_4 f_1_1) i_3);;
let rec length_d0_d0 ls_2 =
  (match ls_2 with
    | `LH_C(h_4, t_4) -> 
      (1 + (length_d0_d0 t_4))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_d0_d0 t_9) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend_d0_d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_d0_d1 t_8) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend_d1_d0 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_d1_d0 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec map_d0_d0 f_1_0 ls_3 =
  (ls_3 f_1_0);;
let rec map_d1_d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec sqr_d0_d0 _lh_sqr_arg1_0 =
  (_lh_sqr_arg1_0 * _lh_sqr_arg1_0);;
let rec code_d0_d0 _lh_code_arg1_0 =
  (((foldl_d0_d0 (fun x_0 y_0 -> 
    ((128 * x_0) + (int_of_char y_0)))) 0) _lh_code_arg1_0)
and collect_d0_d0 _lh_collect_arg1_0 _lh_collect_arg2_0 =
  (match _lh_collect_arg1_0 with
    | 0 -> 
      (fun f_4 f_5 -> 
        (`LH_N))
    | _ -> 
      (match _lh_collect_arg2_0 with
        | `LH_N -> 
          (fun f_6 f_7 -> 
            (`LH_N))
        | _ -> 
          (let rec h_6 = (lazy ((take_d0_d0 _lh_collect_arg1_0) _lh_collect_arg2_0)) in
            (let rec t_6 = (lazy ((collect_d0_d0 _lh_collect_arg1_0) ((drop_d0_d0 _lh_collect_arg1_0) _lh_collect_arg2_0))) in
              (fun f_8 -> 
                (let rec h_7 = (lazy (f_8 (Lazy.force h_6))) in
                  (let rec t_7 = (lazy ((map_d0_d0 f_8) (Lazy.force t_6))) in
                    (fun f_9 -> 
                      (`LH_C((f_9 (Lazy.force h_7)), ((map_d1_d0 f_9) (Lazy.force t_7))))))))))))
and concat_d0_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_5, t_5) -> 
      ((mappend_d0_d1 h_5) (concat_d0_d1 t_5))
    | `LH_N -> 
      (`LH_N))
and concat_d0_d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_3) -> 
      ((mappend_d0_d0 h_3) (concat_d0_d1 t_3))
    | `LH_N -> 
      (`LH_N))
and encrypt_d0_d0 _lh_encrypt_arg1_0 _lh_encrypt_arg2_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (unlines_d0_d0 ((map_d0_d0 (fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (string_of_int (((power_d0_d0 _lh_encrypt_arg2_0) _lh_encrypt_arg1_0) _lh_funcomp_x_3))) (code_d0_d0 _lh_funcomp_x_2)))) _lh_funcomp_x_1))) ((collect_d0_d0 (size_d0_d0 _lh_encrypt_arg1_0)) _lh_funcomp_x_0))
and power_d0_d0 _lh_power_arg1_0 _lh_power_arg2_0 _lh_power_arg3_0 =
  (match _lh_power_arg1_0 with
    | 0 -> 
      1
    | _ -> 
      (if (even_d0_d0 _lh_power_arg1_0) then
        ((sqr_d0_d0 (((power_d0_d0 (_lh_power_arg1_0 / 2)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)
      else
        ((_lh_power_arg3_0 * (((power_d0_d0 (_lh_power_arg1_0 - 1)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)))
and size_d0_d0 _lh_size_arg1_0 =
  (((length_d0_d0 (string_of_int _lh_size_arg1_0)) * 47) / 100)
and take_d0_d0 n_0 ls_1 =
  (if (n_0 > 0) then
    (match ls_1 with
      | `LH_C(h_1, t_1) -> 
        (let rec h_2 = (lazy h_1) in
          (let rec t_2 = (lazy ((take_d0_d0 (n_0 - 1)) t_1)) in
            (fun f_1 i_0 -> 
              (((foldl_d0_d0 f_1) ((f_1 i_0) (Lazy.force h_2))) (Lazy.force t_2)))))
      | `LH_N -> 
        (fun f_2 i_1 -> 
          i_1))
  else
    (fun f_3 i_2 -> 
      i_2))
and testRsa_nofib_d0_d0 _lh_testRsa_nofib_arg1_0 =
  (((encrypt_d0_d0 6367) 5189) ((copy_d0_d0 _lh_testRsa_nofib_arg1_0) 'l'))
and unlines_d0_d0 _lh_unlines_arg1_0 =
  (concat_d0_d0 ((map_d1_d0 (fun l_0 -> 
    ((mappend_d1_d0 l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;

(* lumberhack_pop_out *)
let rec copy_d0_d0_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy_d0_d0_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec drop_d0_d0_d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop_d0_d0_d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec even_d0_d0_d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec foldl_d0_d0_d0 f_1_3 i_4 ls_6 =
  ((ls_6 f_1_3) i_4);;
let rec foldl_d0_d0_d1 f_1_4 i_5 ls_7 =
  ((ls_7 f_1_4) i_5);;
let rec length_d0_d0_d0 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_4, t_1_4) -> 
      (1 + (length_d0_d0_d0 t_1_4))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0_d0 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C(h_1_5, ((mappend_d0_d0_d0 t_1_5) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_d0_d1_d0 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend_d0_d1_d0 t_1_2) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_d1_d0_d0 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C(h_1_1, ((mappend_d1_d0_d0 t_1_1) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec map_d0_d0_d0 f_1_2 ls_5 =
  (ls_5 f_1_2);;
let rec map_d0_d0_d1 f_2_5 ls_1_1 =
  (ls_1_1 f_2_5);;
let rec map_d1_d0_d0 f_2_6 ls_1_2 =
  (ls_1_2 f_2_6);;
let rec map_d1_d0_d1 f_1_5 ls_9 =
  (ls_9 f_1_5);;
let rec sqr_d0_d0_d0 _lh_sqr_arg1_1 =
  (_lh_sqr_arg1_1 * _lh_sqr_arg1_1);;
let rec code_d0_d0_d0 _lh_code_arg1_1 =
  (((foldl_d0_d0_d0 (fun x_1 y_1 -> 
    ((128 * x_1) + (int_of_char y_1)))) 0) _lh_code_arg1_1)
and collect_d0_d0_d0 _lh_collect_arg1_1 _lh_collect_arg2_1 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (match _lh_collect_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (match _lh_collect_arg2_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (let rec h_1_6 = (lazy ((take_d0_d0_d0 _lh_collect_arg1_1) _lh_collect_arg2_1)) in
            (let rec t_1_6 = (lazy ((collect_d0_d0_d0 _lh_collect_arg1_1) ((drop_d0_d0_d0 _lh_collect_arg1_1) _lh_collect_arg2_1))) in
              (let rec h_1_7 = (lazy (_lh_popOutId_0_3 (Lazy.force h_1_6))) in
                (let rec t_1_7 = (lazy ((map_d0_d0_d0 _lh_popOutId_0_3) (Lazy.force t_1_6))) in
                  (`LH_C((_lh_popOutId_1_3 (Lazy.force h_1_7)), ((map_d1_d0_d0 _lh_popOutId_1_3) (Lazy.force t_1_7))))))))))
and concat_d0_d0_d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_1_0, t_1_0) -> 
      ((mappend_d0_d1_d0 h_1_0) (concat_d0_d1_d0 t_1_0))
    | `LH_N -> 
      (`LH_N))
and concat_d0_d1_d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_1_3, t_1_3) -> 
      ((mappend_d0_d0_d0 h_1_3) (concat_d0_d1_d0 t_1_3))
    | `LH_N -> 
      (`LH_N))
and encrypt_d0_d0_d0 _lh_encrypt_arg1_1 _lh_encrypt_arg2_1 _lh_funcomp_x_4 =
  ((fun _lh_funcomp_x_5 -> 
    (unlines_d0_d0_d0 ((map_d0_d0_d1 (fun _lh_funcomp_x_6 -> 
      ((fun _lh_funcomp_x_7 -> 
        (string_of_int (((power_d0_d0_d0 _lh_encrypt_arg2_1) _lh_encrypt_arg1_1) _lh_funcomp_x_7))) (code_d0_d0_d0 _lh_funcomp_x_6)))) _lh_funcomp_x_5))) ((collect_d0_d0_d0 (size_d0_d0_d0 _lh_encrypt_arg1_1)) _lh_funcomp_x_4))
and power_d0_d0_d0 _lh_power_arg1_1 _lh_power_arg2_1 _lh_power_arg3_1 =
  (match _lh_power_arg1_1 with
    | 0 -> 
      1
    | _ -> 
      (if (even_d0_d0_d0 _lh_power_arg1_1) then
        ((sqr_d0_d0_d0 (((power_d0_d0_d0 (_lh_power_arg1_1 / 2)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)
      else
        ((_lh_power_arg3_1 * (((power_d0_d0_d0 (_lh_power_arg1_1 - 1)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)))
and size_d0_d0_d0 _lh_size_arg1_1 =
  (((length_d0_d0_d0 (string_of_int _lh_size_arg1_1)) * 47) / 100)
and take_d0_d0_d0 n_1 ls_1_0 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (if (n_1 > 0) then
    (match ls_1_0 with
      | `LH_C(h_1_8, t_1_8) -> 
        (let rec h_1_9 = (lazy h_1_8) in
          (let rec t_1_9 = (lazy ((take_d0_d0_d0 (n_1 - 1)) t_1_8)) in
            (((foldl_d0_d0_d1 _lh_popOutId_0_1) ((_lh_popOutId_0_1 _lh_popOutId_1_1) (Lazy.force h_1_9))) (Lazy.force t_1_9))))
      | `LH_N -> 
        _lh_popOutId_1_1)
  else
    _lh_popOutId_1_1)
and testRsa_nofib_d0_d0_d0 _lh_testRsa_nofib_arg1_1 =
  (((encrypt_d0_d0_d0 6367) 5189) ((copy_d0_d0_d0 _lh_testRsa_nofib_arg1_1) 'l'))
and unlines_d0_d0_d0 _lh_unlines_arg1_1 =
  (concat_d0_d0_d0 ((map_d1_d0_d1 (fun l_1 -> 
    ((mappend_d1_d0_d0 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Rsa_nofib" (fun () -> ignore ((testRsa_nofib_d0 50520)));
  Bench.Test.create ~name:"lumberhack_Rsa_nofib" (fun () -> ignore ((testRsa_nofib_d0_d0 50520)));
  Bench.Test.create ~name:"lumberhack_pop_out_Rsa_nofib" (fun () -> ignore ((testRsa_nofib_d0_d0_d0 50520)));
])
