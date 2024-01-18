(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./main.ml -o SumFlatmap_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumFlatmap_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumFlatmap_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________ in ((testSumFlatmap_lh 100000))));
  Bench.Test.create ~name:"lumberhack_only_expanded_SumFlatmap_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_ in ((testSumFlatmap_lh__d1 100000))));
  Bench.Test.create ~name:"lumberhack_SumFlatmap_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________ in ((testSumFlatmap_lh__d1 100000))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumFlatmap_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______ in ((testSumFlatmap_lh__d1 100000))));
])