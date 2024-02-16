(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./Module_lumberhack_inlined_______.ml ./Module_lumberhack_flo_out_______.ml ./main.ml -o Paraffins_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Paraffins_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Paraffins_nofib_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________ in ((testParaffins_nofib_lh 16))));
  Bench.Test.create ~name:"lumberhack_only_expanded_Paraffins_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_ in ((testParaffins_nofib_lh__d1 16))));
  Bench.Test.create ~name:"lumberhack_Paraffins_nofib_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________ in ((testParaffins_nofib_lh__d1 16))));
  Bench.Test.create ~name:"lumberhack_pop_out_Paraffins_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______ in ((testParaffins_nofib_lh__d1 16))));
  Bench.Test.create ~name:"lumberhack_inlined_Paraffins_nofib_lh" (fun () -> ignore (let open Module_lumberhack_inlined_______.Module_lumberhack_inlined_______ in ((`LH_P4((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) 16)) in
  (_lh_listcomp_fun_0 (let rec _lh_listcomp_fun_ls_t_0 = (fun _lh_listcomp_fun_1 _lh_testParaffins_nofib_arg1_0 -> 
    (`LH_N)) in
    (let rec _lh_listcomp_fun_ls_h_0 = (let rec radicals_0 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
      (((Lazy.force _lh_listcomp_fun_para_1) _lh_listcomp_fun_2) radicals_0)) in
      (_lh_listcomp_fun_2 ((enumFromTo_lz_lh__d1 1) 16)))))) in
      radicals_0) in
      (fun _lh_listcomp_fun_3 _lh_testParaffins_nofib_arg1_1 -> 
        (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
          ((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_4) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_3)) in
          (_lh_listcomp_fun_4 ((enumFromTo_lh__d1 0) _lh_testParaffins_nofib_arg1_1)))))))), (let rec radicals_1 = (radical_generator_lh__d2 (16 / 2)) in
  (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_3 -> 
    ((_lh_listcomp_fun_para_3 _lh_listcomp_fun_5) radicals_1)) in
    (_lh_listcomp_fun_5 ((enumFromTo_lh__d2 1) 16)))), (ccp_until_lh__d1 16), (let rec radicals_2 = (radical_generator_lh__d3 (16 / 2)) in
  (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_4 -> 
    ((_lh_listcomp_fun_para_4 _lh_listcomp_fun_6) radicals_2)) in
    (_lh_listcomp_fun_6 ((enumFromTo_lh__d3 1) 16)))))))));
  Bench.Test.create ~name:"lumberhack_flo_out_Paraffins_nofib_lh" (fun () -> ignore (let open Module_lumberhack_flo_out_______.Module_lumberhack_flo_out_______ in ((`LH_P4((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) 16)) in
  (_lh_listcomp_fun_0 (let rec _lh_listcomp_fun_ls_t_0 = (fun _lh_listcomp_fun_1 _lh_testParaffins_nofib_arg1_0 -> 
    (`LH_N)) in
    (let rec _lh_listcomp_fun_ls_h_0 = (let rec radicals_0 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
      (((Lazy.force _lh_listcomp_fun_para_1) _lh_listcomp_fun_2) radicals_0)) in
      (_lh_listcomp_fun_2 ((enumFromTo_lz_lh__d1 1) 16)))))) in
      radicals_0) in
      (fun _lh_listcomp_fun_3 _lh_testParaffins_nofib_arg1_1 -> 
        (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
          ((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_4) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_3)) in
          (_lh_listcomp_fun_4 ((enumFromTo_lh__d1 0) _lh_testParaffins_nofib_arg1_1)))))))), (let rec radicals_1 = (radical_generator_lh__d2 (16 / 2)) in
  (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_3 -> 
    ((_lh_listcomp_fun_para_3 _lh_listcomp_fun_5) radicals_1)) in
    (_lh_listcomp_fun_5 ((enumFromTo_lh__d2 1) 16)))), (ccp_until_lh__d1 16), (let rec radicals_2 = (radical_generator_lh__d3 (16 / 2)) in
  (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_4 -> 
    ((_lh_listcomp_fun_para_4 _lh_listcomp_fun_6) radicals_2)) in
    (_lh_listcomp_fun_6 ((enumFromTo_lh__d3 1) 16)))))))));
])
