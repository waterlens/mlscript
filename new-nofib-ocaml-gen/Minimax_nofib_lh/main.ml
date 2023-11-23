(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack_only_expanded.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o Minimax_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Minimax_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Minimax_nofib_lh" (fun () -> ignore (let open Module_original.Module_original in ((testMinimax_nofib_lh (`LH_C('1', (`LH_C('8', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_N)))))))))))))))));
  Bench.Test.create ~name:"lumberhack_only_expanded_Minimax_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded.Module_lumberhack_only_expanded in ((testMinimax_nofib__d0 (`LH_C('1', (`LH_C('8', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_N)))))))))))))))));
  Bench.Test.create ~name:"lumberhack_Minimax_nofib_lh" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testMinimax_nofib__d0 (`LH_C('1', (`LH_C('8', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_N)))))))))))))))));
  Bench.Test.create ~name:"lumberhack_pop_out_Minimax_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testMinimax_nofib__d0 (`LH_C('1', (`LH_C('8', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_N)))))))))))))))));
])
