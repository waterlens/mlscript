(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack_only_expanded.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o SumFlatten_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumFlatten_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumFlatten_lh" (fun () -> ignore (let open Module_original.Module_original in ((testSumFlatten_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo_lh 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh 1) 1000)))))));
  Bench.Test.create ~name:"manual_SumFlatten_lh" (fun () -> ignore (let open Module_original.Module_original in ((testManual_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
  (match _lh_listcomp_fun_para_1 with
    | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
      (`LH_C(((enumFromTo_lh 1) _lh_listcomp_fun_ls_h_1), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_1 ((enumFromTo_lh 1) 1000)))))));
  Bench.Test.create ~name:"lumberhack_only_expanded_SumFlatten_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded.Module_lumberhack_only_expanded in ((testSumFlatten__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
  (match _lh_listcomp_fun_para_2 with
    | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
      (`LH_C(((enumFromTo__d1 1) _lh_listcomp_fun_ls_h_2), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_2 ((enumFromTo__d0 1) 1000)))))));
  Bench.Test.create ~name:"lumberhack_SumFlatten_lh" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testSumFlatten__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo__d1 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo__d0 1) 1000)))))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumFlatten_lh" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testSumFlatten__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (match _lh_listcomp_fun_para_0 with
    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
      (`LH_C(((enumFromTo__d1 1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
    | `LH_N -> 
      (`LH_N))) in
  (_lh_listcomp_fun_0 ((enumFromTo__d0 1) 1000)))))));
])
