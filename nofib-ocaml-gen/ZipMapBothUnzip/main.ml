(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o ZipMapBothUnzip.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./ZipMapBothUnzip.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_ZipMapBothUnzip" (fun () -> ignore (let open Module_original.Module_original in ((testZipMapBothUnzip 50000))));
  Bench.Test.create ~name:"lumberhack_ZipMapBothUnzip" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testZipMapBothUnzip__d0 50000))));
  Bench.Test.create ~name:"lumberhack_pop_out_ZipMapBothUnzip" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testZipMapBothUnzip__d0 50000))));
])