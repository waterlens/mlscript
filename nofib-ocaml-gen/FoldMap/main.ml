(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o FoldMap.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./FoldMap.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_FoldMap" (fun () -> ignore (let open Module_original.Module_original in ((testFoldMap 300000))));
  Bench.Test.create ~name:"lumberhack_FoldMap" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testFoldMap__d0 300000))));
  Bench.Test.create ~name:"lumberhack_pop_out_FoldMap" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testFoldMap__d0 300000))));
])
