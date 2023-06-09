import Criterion.Main

enumFromTo₀ a² b² = (if (a² <= b²) then (a²:((enumFromTo₀ (a² + 1)) b²)) else [])
gen₀ _lh_gen_arg1¹ _lh_gen_arg2¹ = (case _lh_gen_arg1¹ of {0 -> ([]:[]); _ -> (let _lh_listcomp_fun² = (\_lh_listcomp_fun_para² -> (case _lh_listcomp_fun_para² of {(_lh_listcomp_fun_ls_h² : _lh_listcomp_fun_ls_t²) -> (let _lh_listcomp_fun³ = (\_lh_listcomp_fun_para³ -> (case _lh_listcomp_fun_para³ of {(_lh_listcomp_fun_ls_h³ : _lh_listcomp_fun_ls_t³) -> (if (((safe₀ _lh_listcomp_fun_ls_h³) 1) _lh_listcomp_fun_ls_h²) then ((_lh_listcomp_fun_ls_h³:_lh_listcomp_fun_ls_h²):(_lh_listcomp_fun³ _lh_listcomp_fun_ls_t³)) else (_lh_listcomp_fun³ _lh_listcomp_fun_ls_t³)); [] -> (_lh_listcomp_fun² _lh_listcomp_fun_ls_t²)})) in (_lh_listcomp_fun³ ((enumFromTo₀ 1) _lh_gen_arg2¹))); [] -> []})) in (_lh_listcomp_fun² ((gen₀ (_lh_gen_arg1¹ - 1)) _lh_gen_arg2¹)))})
length₀ ls⁷ = (case ls⁷ of {(h⁷ : t⁸) -> (1 + (length₀ t⁸)); [] -> 0})
nsoln₀ _lh_nsoln_arg1¹ = (length₀ ((gen₀ _lh_nsoln_arg1¹) _lh_nsoln_arg1¹))
safe₀ _lh_safe_arg1¹ _lh_safe_arg2¹ _lh_safe_arg3¹ = (case _lh_safe_arg3¹ of {[] -> True; (_lh_safe_LH_C_0¹ : _lh_safe_LH_C_1¹) -> ((((_lh_safe_arg1¹ /= _lh_safe_LH_C_0¹) && (_lh_safe_arg1¹ /= (_lh_safe_LH_C_0¹ + _lh_safe_arg2¹))) && (_lh_safe_arg1¹ /= (_lh_safe_LH_C_0¹ - _lh_safe_arg2¹))) && (((safe₀ _lh_safe_arg1¹) (_lh_safe_arg2¹ + 1)) _lh_safe_LH_C_1¹)); _ -> (error "match error")})
testQueen₀ _lh_testQueen_arg1¹ = (nsoln₀ _lh_testQueen_arg1¹)

enumFromTo₀₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (a⁰:((enumFromTo₀₀ (a⁰ + 1)) b⁰)) else [])
gen₀₀ _lh_gen_arg1⁰ _lh_gen_arg2⁰ = (case _lh_gen_arg1⁰ of {0 -> ((\_lh_safe_arg1¹ _lh_safe_arg2¹ -> True):[]); _ -> (let _lh_listcomp_fun⁰ = (\_lh_listcomp_fun_para⁰ -> (case _lh_listcomp_fun_para⁰ of {(_lh_listcomp_fun_ls_h⁰ : _lh_listcomp_fun_ls_t⁰) -> (let _lh_listcomp_fun¹ = (\_lh_listcomp_fun_para¹ -> (case _lh_listcomp_fun_para¹ of {(_lh_listcomp_fun_ls_h¹ : _lh_listcomp_fun_ls_t¹) -> (if (((safe₀₀ _lh_listcomp_fun_ls_h¹) 1) _lh_listcomp_fun_ls_h⁰) then ((let _lh_safe_LH_C_0⁰ = _lh_listcomp_fun_ls_h¹ in (let _lh_safe_LH_C_1⁰ = _lh_listcomp_fun_ls_h⁰ in (\_lh_safe_arg1² _lh_safe_arg2² -> ((((_lh_safe_arg1² /= _lh_safe_LH_C_0⁰) && (_lh_safe_arg1² /= (_lh_safe_LH_C_0⁰ + _lh_safe_arg2²))) && (_lh_safe_arg1² /= (_lh_safe_LH_C_0⁰ - _lh_safe_arg2²))) && (((safe₀₀ _lh_safe_arg1²) (_lh_safe_arg2² + 1)) _lh_safe_LH_C_1⁰))))):(_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)) else (_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)); [] -> (_lh_listcomp_fun⁰ _lh_listcomp_fun_ls_t⁰)})) in (_lh_listcomp_fun¹ ((enumFromTo₀₀ 1) _lh_gen_arg2⁰))); [] -> []})) in (_lh_listcomp_fun⁰ ((gen₀₀ (_lh_gen_arg1⁰ - 1)) _lh_gen_arg2⁰)))})
length₀₀ ls⁰ = (case ls⁰ of {(h⁰ : t⁰) -> (1 + (length₀₀ t⁰)); [] -> 0})
nsoln₀₀ _lh_nsoln_arg1⁰ = (length₀₀ ((gen₀₀ _lh_nsoln_arg1⁰) _lh_nsoln_arg1⁰))
safe₀₀ _lh_safe_arg1⁰ _lh_safe_arg2⁰ _lh_safe_arg3⁰ = ((_lh_safe_arg3⁰ _lh_safe_arg1⁰) _lh_safe_arg2⁰)
testQueen₀₀ _lh_testQueen_arg1⁰ = (nsoln₀₀ _lh_testQueen_arg1⁰)

main :: IO ()
main = defaultMain [ bgroup "Queen" [
    bench "lumberhack_Queen" $ nf testQueen₀₀ 12
  , bench "original_Queen" $ nf testQueen₀ 12 ] ]
