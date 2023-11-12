(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o QueenBuiltInType.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./QueenBuiltInType.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_QueenBuiltInType" (fun () -> ignore (let open Module_original.Module_original in ((testQueenBuiltInType__d0 11))));
  Bench.Test.create ~name:"lumberhack_QueenBuiltInType" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testQueenBuiltInType__d0 11))));
  Bench.Test.create ~name:"lumberhack_pop_out_QueenBuiltInType" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testQueenBuiltInType__d0 11))));
])
