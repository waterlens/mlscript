(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original.ml ./Module_lumberhack.ml ./Module_lumberhack_pop_out.ml ./main.ml -o PiDigits_nofib.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./PiDigits_nofib.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_PiDigits_nofib" (fun () -> ignore (let open Module_original.Module_original in ((testPiDigits_nofib__d0 5000))));
  Bench.Test.create ~name:"lumberhack_PiDigits_nofib" (fun () -> ignore (let open Module_lumberhack.Module_lumberhack in ((testPiDigits_nofib__d0__d0 5000))));
  Bench.Test.create ~name:"lumberhack_pop_out_PiDigits_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out.Module_lumberhack_pop_out in ((testPiDigits_nofib__d0__d0 5000))));
])
