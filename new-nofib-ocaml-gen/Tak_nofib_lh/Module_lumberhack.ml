

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec tak__d0 _lh_tak_arg1_0 _lh_tak_arg2_0 _lh_tak_arg3_0 =
  (if (not (_lh_tak_arg2_0 < _lh_tak_arg1_0)) then
    _lh_tak_arg3_0
  else
    (((tak__d0 (((tak__d0 (_lh_tak_arg1_0 - 1)) _lh_tak_arg2_0) _lh_tak_arg3_0)) (((tak__d0 (_lh_tak_arg2_0 - 1)) _lh_tak_arg3_0) _lh_tak_arg1_0)) (((tak__d0 (_lh_tak_arg3_0 - 1)) _lh_tak_arg1_0) _lh_tak_arg2_0)));;
let rec testTak_nofib__d0 _lh_testTak_nofib_arg1_0 =
  (((tak__d0 31) 16) 8);;
end;;
