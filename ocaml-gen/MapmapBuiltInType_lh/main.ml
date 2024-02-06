(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./Module_lumberhack_inlined_______.ml ./Module_lumberhack_flo_out_______.ml ./main.ml -o MapmapBuiltInType_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapmapBuiltInType_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapmapBuiltInType_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________ in ((testMapmapBuiltInType_lh ((enumFromTo_lh 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_only_expanded_MapmapBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_ in ((testMapmapBuiltInType_lh__d1 ((enumFromTo_lh__d1 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_MapmapBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________ in ((testMapmapBuiltInType_lh__d1 ((enumFromTo_lh__d1 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapmapBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______ in ((testMapmapBuiltInType_lh__d1 ((enumFromTo_lh__d1 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_inlined_MapmapBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_inlined_______.Module_lumberhack_inlined_______ in ((testMapmapBuiltInType_lh__d1 ((enumFromTo_lh__d1 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_flo_out_MapmapBuiltInType_lh" (fun () -> ignore (let open Module_lumberhack_flo_out_______.Module_lumberhack_flo_out_______ in ((testMapmapBuiltInType_lh__d1 ((enumFromTo_lh__d1 1) 100000)))));
])
