(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o GenRegexs_nofib.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./GenRegexs_nofib.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_GenRegexs_nofib" (fun () -> ignore (let open Module_original.Module_original in ((testGenRegexs_nofib__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N)))))))))))))))))))))))))))))))))))))))))))));
  Bench.Test.create ~name:"lumberhack_GenRegexs_nofib" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testGenRegexs_nofib__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N)))))))))))))))))))))))))))))))))))))))))))));
  Bench.Test.create ~name:"lumberhack_pop_out_GenRegexs_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testGenRegexs_nofib__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N)))))))))))))))))))))))))))))))))))))))))))));
])
