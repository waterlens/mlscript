import Criterion.Main


--- original ---
enumFromTo_₀ a⁵ b² = (if (a⁵ <= b²) then (a⁵:((enumFromTo_₀ (a⁵ + 1)) b²)) else [])
gen_₀ _lh_gen_arg1¹ _lh_gen_arg2¹ = (case _lh_gen_arg1¹ of {0 -> ([]:[]); _ -> (let _lh_listcomp_fun² = (\_lh_listcomp_fun_para² -> (case _lh_listcomp_fun_para² of {(_lh_listcomp_fun_ls_h² : _lh_listcomp_fun_ls_t²) -> (let _lh_listcomp_fun³ = (\_lh_listcomp_fun_para³ -> (case _lh_listcomp_fun_para³ of {(_lh_listcomp_fun_ls_h³ : _lh_listcomp_fun_ls_t³) -> (if (((safe_₀ _lh_listcomp_fun_ls_h³) 1) _lh_listcomp_fun_ls_h²) then ((_lh_listcomp_fun_ls_h³:_lh_listcomp_fun_ls_h²):(_lh_listcomp_fun³ _lh_listcomp_fun_ls_t³)) else (_lh_listcomp_fun³ _lh_listcomp_fun_ls_t³)); [] -> (_lh_listcomp_fun² _lh_listcomp_fun_ls_t²)})) in (_lh_listcomp_fun³ ((enumFromTo_₀ 1) _lh_gen_arg2¹))); [] -> []})) in (_lh_listcomp_fun² ((gen_₀ (_lh_gen_arg1¹ - 1)) _lh_gen_arg2¹)))})
length_₀ ls¹⁹ = (case ls¹⁹ of {(h²⁰ : t²²) -> (1 + (length_₀ t²²)); [] -> 0})
nsoln_₀ _lh_nsoln_arg1¹ = (length_₀ ((gen_₀ _lh_nsoln_arg1¹) _lh_nsoln_arg1¹))
safe_₀ _lh_safe_arg1¹ _lh_safe_arg2¹ _lh_safe_arg3¹ = (case _lh_safe_arg3¹ of {[] -> True; (_lh_safe_LH_C_0¹ : _lh_safe_LH_C_1¹) -> ((((_lh_safe_arg1¹ /= _lh_safe_LH_C_0¹) && (_lh_safe_arg1¹ /= (_lh_safe_LH_C_0¹ + _lh_safe_arg2¹))) && (_lh_safe_arg1¹ /= (_lh_safe_LH_C_0¹ - _lh_safe_arg2¹))) && (((safe_₀ _lh_safe_arg1¹) (_lh_safe_arg2¹ + 1)) _lh_safe_LH_C_1¹)); _ -> error})
testQueen_₀ _lh_testQueen_arg1¹ = (nsoln_₀ _lh_testQueen_arg1¹)

--- lumberhack ---
enumFromTo_₀_₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (a⁰:((enumFromTo_₀_₀ (a⁰ + 1)) b⁰)) else [])
gen_₀_₀ _lh_gen_arg1⁰ _lh_gen_arg2⁰ = (case _lh_gen_arg1⁰ of {0 -> ([]:[]); _ -> (let _lh_listcomp_fun⁰ = (\_lh_listcomp_fun_para⁰ -> (case _lh_listcomp_fun_para⁰ of {(_lh_listcomp_fun_ls_h⁰ : _lh_listcomp_fun_ls_t⁰) -> (let _lh_listcomp_fun¹ = (\_lh_listcomp_fun_para¹ -> (case _lh_listcomp_fun_para¹ of {(_lh_listcomp_fun_ls_h¹ : _lh_listcomp_fun_ls_t¹) -> (if (((safe_₀_₀ _lh_listcomp_fun_ls_h¹) 1) _lh_listcomp_fun_ls_h⁰) then ((_lh_listcomp_fun_ls_h¹:_lh_listcomp_fun_ls_h⁰):(_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)) else (_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)); [] -> (_lh_listcomp_fun⁰ _lh_listcomp_fun_ls_t⁰)})) in (_lh_listcomp_fun¹ ((enumFromTo_₀_₀ 1) _lh_gen_arg2⁰))); [] -> []})) in (_lh_listcomp_fun⁰ ((gen_₀_₀ (_lh_gen_arg1⁰ - 1)) _lh_gen_arg2⁰)))})
length_₀_₀ ls⁰ = (case ls⁰ of {(h⁰ : t⁰) -> (1 + (length_₀_₀ t⁰)); [] -> 0})
nsoln_₀_₀ _lh_nsoln_arg1⁰ = (length_₀_₀ ((gen_₀_₀ _lh_nsoln_arg1⁰) _lh_nsoln_arg1⁰))
safe_₀_₀ _lh_safe_arg1⁰ _lh_safe_arg2⁰ _lh_safe_arg3⁰ = (case _lh_safe_arg3⁰ of {[] -> True; (_lh_safe_LH_C_0⁰ : _lh_safe_LH_C_1⁰) -> ((((_lh_safe_arg1⁰ /= _lh_safe_LH_C_0⁰) && (_lh_safe_arg1⁰ /= (_lh_safe_LH_C_0⁰ + _lh_safe_arg2⁰))) && (_lh_safe_arg1⁰ /= (_lh_safe_LH_C_0⁰ - _lh_safe_arg2⁰))) && (((safe_₀_₀ _lh_safe_arg1⁰) (_lh_safe_arg2⁰ + 1)) _lh_safe_LH_C_1⁰)); _ -> error})
testQueen_₀_₀ _lh_testQueen_arg1⁰ = (nsoln_₀_₀ _lh_testQueen_arg1⁰)

main :: IO ()
main = defaultMain [ bgroup "Queen" [
    bench "lumberhack_Queen" $ nf testQueen_₀_₀ 12
  , bench "original_Queen" $ nf testQueen_₀ 12 ] ]
