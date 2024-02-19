(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./Module_lumberhack_inlined_______.ml ./Module_lumberhack_flo_out_______.ml ./main.ml -o SumListComprehensionBuiltInType_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumListComprehensionBuiltInType_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumListComprehensionBuiltInType_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________(struct end) in ((testSumListComprehensionBuiltInType_lh 1000))));
  Bench.Test.create ~name:"lumberhack_only_expanded_SumListComprehensionBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_(struct end) in ((testSumListComprehensionBuiltInType_lh__d1 1000))));
  Bench.Test.create ~name:"lumberhack_SumListComprehensionBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________(struct end) in ((testSumListComprehensionBuiltInType_lh__d1 1000))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumListComprehensionBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______(struct end) in ((testSumListComprehensionBuiltInType_lh__d1 1000))));
  Bench.Test.create ~name:"lumberhack_inlined_SumListComprehensionBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_inlined_______.Module_lumberhack_inlined_______(struct end) in (((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (_lh_listcomp_fun_para_0 _lh_listcomp_fun_0)) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh__d1 1) 1000))) 99))));
  Bench.Test.create ~name:"lumberhack_flo_out_SumListComprehensionBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_flo_out_______.Module_lumberhack_flo_out_______(struct end) in (((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (_lh_listcomp_fun_para_0 _lh_listcomp_fun_0)) in
  (_lh_listcomp_fun_0 ((enumFromTo_lh__d1 1) 1000))) 99))));
])
