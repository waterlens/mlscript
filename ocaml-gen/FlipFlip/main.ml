(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o FlipFlip.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./FlipFlip.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_FlipFlip" (fun () -> ignore (let open Module_original.Module_original in ((testFlipFlip ((genTree 17) 0)))));
  Bench.Test.create ~name:"lumberhack_FlipFlip" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testFlipFlip__d0 ((genTree__d0 17) 0)))));
  Bench.Test.create ~name:"lumberhack_pop_out_FlipFlip" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testFlipFlip__d0 ((genTree__d0 17) 0)))));
])
