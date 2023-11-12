(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o LastFilterEnum.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./LastFilterEnum.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_LastFilterEnum" (fun () -> ignore (let open Module_original.Module_original in ((testLastFilterEnum 500000))));
  Bench.Test.create ~name:"lumberhack_LastFilterEnum" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testLastFilterEnum__d0 500000))));
  Bench.Test.create ~name:"lumberhack_pop_out_LastFilterEnum" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testLastFilterEnum__d0 500000))));
])
