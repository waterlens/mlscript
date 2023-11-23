

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec tak__d0 _lh_tak_arg1_1 _lh_tak_arg2_1 _lh_tak_arg3_1 =
  (if (not (_lh_tak_arg2_1 < _lh_tak_arg1_1)) then
    _lh_tak_arg3_1
  else
    (((tak__d0 (((tak__d0 (_lh_tak_arg1_1 - 1)) _lh_tak_arg2_1) _lh_tak_arg3_1)) (((tak__d0 (_lh_tak_arg2_1 - 1)) _lh_tak_arg3_1) _lh_tak_arg1_1)) (((tak__d0 (_lh_tak_arg3_1 - 1)) _lh_tak_arg1_1) _lh_tak_arg2_1)));;
let rec testTak_nofib__d0 _lh_testTak_nofib_arg1_1 =
  (((tak__d0 31) 16) 8);;
end;;

