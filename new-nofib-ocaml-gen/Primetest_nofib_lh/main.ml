(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack_only_expanded.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o Primetest_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Primetest_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Primetest_nofib_lh" (fun () -> ignore (let open Module_original.Module_original in ((testPrimetest_nofib_lh 0))));
  Bench.Test.create ~name:"lumberhack_only_expanded_Primetest_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded.Module_lumberhack_only_expanded in ((testPrimetest_nofib_lh 0))));
  Bench.Test.create ~name:"lumberhack_Primetest_nofib_lh" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testPrimetest_nofib_lh 0))));
  Bench.Test.create ~name:"lumberhack_pop_out_Primetest_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testPrimetest_nofib_lh 0))));
])
