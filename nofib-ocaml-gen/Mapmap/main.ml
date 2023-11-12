(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o Mapmap.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Mapmap.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Mapmap" (fun () -> ignore (let open Module_original.Module_original in ((testMapmap ((enumFromTo 1) 100000)))));
  Bench.Test.create ~name:"manual_Mapmap" (fun () -> ignore (let open Module_original.Module_original in ((testMapmap ((enumFromTo 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_Mapmap" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testMapmap__d0 ((enumFromTo__d1 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_Mapmap" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testMapmap__d0 ((enumFromTo__d1 1) 100000)))));
])
