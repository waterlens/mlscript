(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./Module_lumberhack_inlined_______.ml ./Module_lumberhack_flo_out_______.ml ./main.ml -o SumFlatten_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumFlatten_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumFlatten_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________(struct end) in ((testSumFlatten_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo_lh 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh 1) 1000)))))));
  Bench.Test.create ~name:"manual_SumFlatten_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________(struct end) in ((testManual_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
  (match _lh_listcomp_fun_para_1 with
    | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
      (`LH_C(((enumFromTo_lh 1) _lh_listcomp_fun_ls_h_1), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_1 ((enumFromTo_lh 1) 1000)))))));
  Bench.Test.create ~name:"lumberhack_only_expanded_SumFlatten_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_(struct end) in ((testSumFlatten_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo_lh__d4 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh__d3 1) 1000)))))));
  Bench.Test.create ~name:"lumberhack_SumFlatten_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________(struct end) in ((testSumFlatten_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo_lh__d4 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh__d3 1) 1000)))))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumFlatten_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______(struct end) in ((testSumFlatten_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo_lh__d4 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh__d3 1) 1000)))))));
  Bench.Test.create ~name:"lumberhack_inlined_SumFlatten_lh" (fun () -> ignore (let open Module_lumberhack_inlined_______.Module_lumberhack_inlined_______(struct end) in ((testSumFlatten_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo_lh__d4 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh__d3 1) 1000)))))));
  Bench.Test.create ~name:"lumberhack_flo_out_SumFlatten_lh" (fun () -> ignore (let open Module_lumberhack_flo_out_______.Module_lumberhack_flo_out_______(struct end) in ((testSumFlatten_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo_lh__d4 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh__d3 1) 1000)))))));
])
