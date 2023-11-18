
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec tak_lh _lh_tak_arg1_0 _lh_tak_arg2_0 _lh_tak_arg3_0 =
  (if (not (_lh_tak_arg2_0 < _lh_tak_arg1_0)) then
    _lh_tak_arg3_0
  else
    (((tak_lh (((tak_lh (_lh_tak_arg1_0 - 1)) _lh_tak_arg2_0) _lh_tak_arg3_0)) (((tak_lh (_lh_tak_arg2_0 - 1)) _lh_tak_arg3_0) _lh_tak_arg1_0)) (((tak_lh (_lh_tak_arg3_0 - 1)) _lh_tak_arg1_0) _lh_tak_arg2_0)));;
let rec testTak_nofib_lh _lh_testTak_nofib_arg1_0 =
  (((tak_lh 31) 16) 8);;
end;;

