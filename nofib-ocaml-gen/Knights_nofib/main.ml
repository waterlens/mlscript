(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o Knights_nofib.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Knights_nofib.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Knights_nofib" (fun () -> ignore (let open Module_original.Module_original in ((testKnights_nofib__d0 (`LH_C((`LH_C('8', (`LH_N))), (`LH_C((`LH_C('1', (`LH_N))), (`LH_N)))))))));
  Bench.Test.create ~name:"lumberhack_Knights_nofib" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testKnights_nofib__d0__d0 (`LH_C((`LH_C('8', (`LH_N))), (`LH_C((`LH_C('1', (`LH_N))), (`LH_N)))))))));
  Bench.Test.create ~name:"lumberhack_pop_out_Knights_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testKnights_nofib__d0__d0 (`LH_C((`LH_C('8', (`LH_N))), (`LH_C((`LH_C('1', (`LH_N))), (`LH_N)))))))));
])
