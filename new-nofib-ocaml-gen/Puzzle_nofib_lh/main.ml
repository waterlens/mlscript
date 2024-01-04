(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./main.ml -o Puzzle_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Puzzle_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Puzzle_nofib_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________ in ((testPuzzle_nofib_lh (`LH_C(2, (`LH_N)))))));
  Bench.Test.create ~name:"lumberhack_only_expanded_Puzzle_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_ in ((testPuzzle_nofib_lh__d1 (`LH_C(2, (`LH_N)))))));
  Bench.Test.create ~name:"lumberhack_Puzzle_nofib_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________ in ((testPuzzle_nofib_lh__d1__d0 (`LH_C(2, (`LH_N)))))));
  Bench.Test.create ~name:"lumberhack_pop_out_Puzzle_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______ in ((testPuzzle_nofib_lh__d1__d0 (`LH_C(2, (`LH_N)))))));
])
