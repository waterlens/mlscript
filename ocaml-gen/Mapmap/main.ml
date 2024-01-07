(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original___________.ml ./Module_lumberhack_________.ml ./Module_lumberhack_pop_out_.ml ./main.ml -o Mapmap.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Mapmap.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Mapmap" (fun () -> ignore (let open Module_original___________.Module_original___________ in ((testMapmap ((enumFromTo 1) 100000)))));
  Bench.Test.create ~name:"manual_Mapmap" (fun () -> ignore (let open Module_original___________.Module_original___________ in ((testManual ((enumFromTo 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_Mapmap" (fun () -> ignore (let open Module_lumberhack_________.Module_lumberhack_________ in ((testMapmap ((enumFromTo 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_Mapmap" (fun () -> ignore (let open Module_lumberhack_pop_out_.Module_lumberhack_pop_out_ in ((testMapmap ((enumFromTo 1) 100000)))));
])
