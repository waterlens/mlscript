(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o SumFlatmap.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumFlatmap.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumFlatmap" (fun () -> ignore (let open Module_original.Module_original in ((testSumFlatmap__d0 100000))));
  Bench.Test.create ~name:"lumberhack_SumFlatmap" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testSumFlatmap__d0 100000))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumFlatmap" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testSumFlatmap__d0 100000))));
])
