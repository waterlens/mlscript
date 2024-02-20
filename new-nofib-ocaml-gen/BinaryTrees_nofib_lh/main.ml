(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./Module_lumberhack_inlined_______.ml ./Module_lumberhack_flo_out_______.ml ./main.ml -o BinaryTrees_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./BinaryTrees_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_BinaryTrees_nofib_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________(struct end) in ((testBinaryTrees_nofib_lh 14))));
  Bench.Test.create ~name:"lumberhack_only_expanded_BinaryTrees_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_(struct end) in ((testBinaryTrees_nofib_lh__d1 14))));
  Bench.Test.create ~name:"lumberhack_BinaryTrees_nofib_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________(struct end) in ((testBinaryTrees_nofib_lh__d1 14))));
  Bench.Test.create ~name:"lumberhack_pop_out_BinaryTrees_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______(struct end) in ((testBinaryTrees_nofib_lh__d1 14))));
  Bench.Test.create ~name:"lumberhack_inlined_BinaryTrees_nofib_lh" (fun () -> ignore (let open Module_lumberhack_inlined_______.Module_lumberhack_inlined_______(struct end) in ((let rec maxN_0 = ((max_lh__d1 (minN_lh__d1 + 2)) 14) in
  (let rec stretchN_0 = (maxN_0 + 1) in
    (let rec long_0 = ((make_lh__d1 0) maxN_0) in
      (let rec c_0 = (check_lh__d1 ((make_lh__d2 0) stretchN_0)) in
        (let rec vs_0 = ((depth_lh__d1 minN_lh__d2) maxN_0) in
          (`LH_P2((vs_0 (fun m_d_i_0 -> 
            (let rec _lh_matchIdent_0 = m_d_i_0 in
              (_lh_matchIdent_0 99)))), (check_lh__d2 long_0)))))))))));
  Bench.Test.create ~name:"lumberhack_flo_out_BinaryTrees_nofib_lh" (fun () -> ignore (let open Module_lumberhack_flo_out_______.Module_lumberhack_flo_out_______(struct end) in ((let rec maxN_0 = ((max_lh__d1 (minN_lh__d1 + 2)) 14) in
  (let rec stretchN_0 = (maxN_0 + 1) in
    (let rec long_0 = ((make_lh__d1 0) maxN_0) in
      (let rec c_0 = (check_lh__d1 ((make_lh__d2 0) stretchN_0)) in
        (let rec vs_0 = ((depth_lh__d1 minN_lh__d2) maxN_0) in
          (`LH_P2((vs_0 (fun m_d_i_0 -> 
            (let rec _lh_matchIdent_0 = m_d_i_0 in
              (_lh_matchIdent_0 99)))), (check_lh__d2 long_0)))))))))));
])
