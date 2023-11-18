(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o WheelSieve1_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./WheelSieve1_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_WheelSieve1_nofib_lh" (fun () -> ignore (let open Module_original.Module_original in ((testWheelSieve1_nofib_lh 1000))));
  Bench.Test.create ~name:"lumberhack_WheelSieve1_nofib_lh" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testWheelSieve1_nofib__d0 1000))));
  Bench.Test.create ~name:"lumberhack_pop_out_WheelSieve1_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testWheelSieve1_nofib__d0 1000))));
])
