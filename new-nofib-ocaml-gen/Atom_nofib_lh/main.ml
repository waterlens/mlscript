(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Lumherhack_Common.ml ./Lumberhack_LargeStr.ml ./Module_original_________________.ml ./Module_lumberhack_only_expanded_.ml ./Module_lumberhack_______________.ml ./Module_lumberhack_pop_out_______.ml ./Module_lumberhack_inlined_______.ml ./Module_lumberhack_flo_out_______.ml ./main.ml -o Atom_nofib_lh.out -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Atom_nofib_lh.out +time
*)
open Core_bench;;
Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Atom_nofib_lh" (fun () -> ignore (let open Module_original_________________.Module_original_________________(struct end) in ((testAtom_nofib_lh 500))));
  Bench.Test.create ~name:"lumberhack_only_expanded_Atom_nofib_lh" (fun () -> ignore (let open Module_lumberhack_only_expanded_.Module_lumberhack_only_expanded_(struct end) in ((testAtom_nofib_lh__d1 500))));
  Bench.Test.create ~name:"lumberhack_Atom_nofib_lh" (fun () -> ignore (let open Module_lumberhack_______________.Module_lumberhack_______________(struct end) in ((testAtom_nofib_lh__d1 500))));
  Bench.Test.create ~name:"lumberhack_pop_out_Atom_nofib_lh" (fun () -> ignore (let open Module_lumberhack_pop_out_______.Module_lumberhack_pop_out_______(struct end) in ((testAtom_nofib_lh__d1 500))));
  Bench.Test.create ~name:"lumberhack_inlined_Atom_nofib_lh" (fun () -> ignore (let open Module_lumberhack_inlined_______.Module_lumberhack_inlined_______(struct end) in (((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (_lh_listcomp_fun_para_0 _lh_listcomp_fun_0)) in
  (_lh_listcomp_fun_0 ((take_lz_lh__d1 500) ((((runExperiment_lh__d1 testforce_lh__d1) 0.02) (let rec _lh_scalarMut_LH_C_1_0 = (fun _lh_scalarMut_arg1_0 -> 
    (`LH_N)) in
    (let rec _lh_scalarMut_LH_C_0_0 = 1.0 in
      (fun _lh_scalarMut_arg1_1 -> 
        (`LH_C((_lh_scalarMut_arg1_1 *. _lh_scalarMut_LH_C_0_0), (_lh_scalarMut_LH_C_1_0 _lh_scalarMut_arg1_1))))))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))) 99))));
  Bench.Test.create ~name:"lumberhack_flo_out_Atom_nofib_lh" (fun () -> ignore (let open Module_lumberhack_flo_out_______.Module_lumberhack_flo_out_______(struct end) in (((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
  (_lh_listcomp_fun_para_0 _lh_listcomp_fun_0)) in
  (_lh_listcomp_fun_0 ((take_lz_lh__d1 500) ((((runExperiment_lh__d1 testforce_lh__d1) 0.02) (let rec _lh_scalarMut_LH_C_1_0 = (fun _lh_scalarMut_arg1_0 -> 
    (`LH_N)) in
    (let rec _lh_scalarMut_LH_C_0_0 = 1.0 in
      (fun _lh_scalarMut_arg1_1 -> 
        (`LH_C((_lh_scalarMut_arg1_1 *. _lh_scalarMut_LH_C_0_0), (_lh_scalarMut_LH_C_1_0 _lh_scalarMut_arg1_1))))))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))) 99))));
])
