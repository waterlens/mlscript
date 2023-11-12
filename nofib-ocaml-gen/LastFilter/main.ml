(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o LastFilter.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilter.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_LastFilter" (fun () -> ignore (let open Module_original.Module_original in ((testLastFilter ((enumFromTo 1) 500000)))));
  Bench.Test.create ~name:"manual_LastFilter" (fun () -> ignore (let open Module_original.Module_original in ((testLastFilter ((enumFromTo 1) 500000)))));
  Bench.Test.create ~name:"lumberhack_LastFilter" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testLastFilter__d0 ((enumFromTo__d0 1) 500000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_LastFilter" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testLastFilter__d0 ((enumFromTo__d0 1) 500000)))));
])
