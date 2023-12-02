(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o QrevMap.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./QrevMap.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_QrevMap" (fun () -> ignore (let open Module_original.Module_original in ((testQrevMap ((enumFromTo 1) 10000)))));
  Bench.Test.create ~name:"manual_QrevMap" (fun () -> ignore (let open Module_original.Module_original in ((testManual ((enumFromTo 1) 10000)))));
  Bench.Test.create ~name:"lumberhack_QrevMap" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testQrevMap__d0 ((enumFromTo__d1 1) 10000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_QrevMap" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testQrevMap__d0 ((enumFromTo__d1 1) 10000)))));
])
