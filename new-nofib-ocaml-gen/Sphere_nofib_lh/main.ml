(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./Module_lumberhack_inlined_______.ml ./Module_lumberhack_flo_out_______.ml ./main.ml -o Sphere_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Sphere_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Sphere_nofib_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________(struct end) in ((testSphere_nofib_lh 30))));
  Bench.Test.create ~name:"lumberhack_only_expanded_Sphere_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_(struct end) in ((testSphere_nofib_lh__d1 30))));
  Bench.Test.create ~name:"lumberhack_Sphere_nofib_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________(struct end) in ((testSphere_nofib_lh__d1 30))));
  Bench.Test.create ~name:"lumberhack_pop_out_Sphere_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______(struct end) in ((testSphere_nofib_lh__d1 30))));
  Bench.Test.create ~name:"lumberhack_inlined_Sphere_nofib_lh" (fun () -> ignore (let open Module_lumberhack_inlined_______.Module_lumberhack_inlined_______(struct end) in ((testSphere_nofib_lh__d1 30))));
  Bench.Test.create ~name:"lumberhack_flo_out_Sphere_nofib_lh" (fun () -> ignore (let open Module_lumberhack_flo_out_______.Module_lumberhack_flo_out_______(struct end) in ((testSphere_nofib_lh__d1 30))));
])
