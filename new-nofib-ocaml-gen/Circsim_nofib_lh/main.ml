(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./Module_lumberhack_inlined_______.ml ./Module_lumberhack_flo_out_______.ml ./main.ml -o Circsim_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Circsim_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Circsim_nofib_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________ in ((testCircsim_nofib_lh 8))));
  Bench.Test.create ~name:"lumberhack_only_expanded_Circsim_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_ in ((testCircsim_nofib_lh__d1 8))));
  Bench.Test.create ~name:"lumberhack_Circsim_nofib_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________ in ((testCircsim_nofib_lh__d1 8))));
  Bench.Test.create ~name:"lumberhack_pop_out_Circsim_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______ in ((testCircsim_nofib_lh__d1 8))));
  Bench.Test.create ~name:"lumberhack_inlined_Circsim_nofib_lh" (fun () -> ignore (let open Module_lumberhack_inlined_______.Module_lumberhack_inlined_______ in ((testCircsim_nofib_lh__d1 8))));
  Bench.Test.create ~name:"lumberhack_flo_out_Circsim_nofib_lh" (fun () -> ignore (let open Module_lumberhack_flo_out_______.Module_lumberhack_flo_out_______ in ((testCircsim_nofib_lh__d1 8))));
])
