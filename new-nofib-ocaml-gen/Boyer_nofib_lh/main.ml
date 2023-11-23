(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack_only_expanded.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o Boyer_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Boyer_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Boyer_nofib_lh" (fun () -> ignore (let open Module_original.Module_original in ((testBoyer_nofib_lh 5))));
  Bench.Test.create ~name:"lumberhack_only_expanded_Boyer_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded.Module_lumberhack_only_expanded in ((testBoyer_nofib__d0 5))));
  Bench.Test.create ~name:"lumberhack_Boyer_nofib_lh" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testBoyer_nofib__d0 5))));
  Bench.Test.create ~name:"lumberhack_pop_out_Boyer_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testBoyer_nofib__d0 5))));
])
