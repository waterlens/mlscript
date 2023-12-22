import Criterion.Main


--- original ---
(testQueen_lh 12)
gen_lh _lh_gen_arg1⁰ _lh_gen_arg2⁰ = (case _lh_gen_arg1⁰ of {0 -> ([]:[]); _ -> (let _lh_listcomp_fun⁰ = (\_lh_listcomp_fun_para⁰ -> (case _lh_listcomp_fun_para⁰ of {(_lh_listcomp_fun_ls_h⁰ : _lh_listcomp_fun_ls_t⁰) -> (let _lh_listcomp_fun¹ = (\_lh_listcomp_fun_para¹ -> (case _lh_listcomp_fun_para¹ of {(_lh_listcomp_fun_ls_h¹ : _lh_listcomp_fun_ls_t¹) -> (if (((safe_lh _lh_listcomp_fun_ls_h¹) 1) _lh_listcomp_fun_ls_h⁰) then ((_lh_listcomp_fun_ls_h¹:_lh_listcomp_fun_ls_h⁰):(_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)) else (_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)); [] -> (_lh_listcomp_fun⁰ _lh_listcomp_fun_ls_t⁰)})) in (_lh_listcomp_fun¹ ((enumFromTo_lh 1) _lh_gen_arg2⁰))); [] -> []})) in (_lh_listcomp_fun⁰ ((gen_lh (_lh_gen_arg1⁰ - 1)) _lh_gen_arg2⁰)))})
length_lh ls⁰ = (case ls⁰ of {(h⁰ : t⁰) -> (1 + (length_lh t⁰)); [] -> 0})
nsoln_lh _lh_nsoln_arg1⁰ = (length_lh ((gen_lh _lh_nsoln_arg1⁰) _lh_nsoln_arg1⁰))
safe_lh _lh_safe_arg1⁰ _lh_safe_arg2⁰ _lh_safe_arg3⁰ = (case _lh_safe_arg3⁰ of {[] -> True; (_lh_safe_LH_C_0⁰ : _lh_safe_LH_C_1⁰) -> ((((_lh_safe_arg1⁰ /= _lh_safe_LH_C_0⁰) && (_lh_safe_arg1⁰ /= (_lh_safe_LH_C_0⁰ + _lh_safe_arg2⁰))) && (_lh_safe_arg1⁰ /= (_lh_safe_LH_C_0⁰ - _lh_safe_arg2⁰))) && (((safe_lh _lh_safe_arg1⁰) (_lh_safe_arg2⁰ + 1)) _lh_safe_LH_C_1⁰)); _ -> error})
testQueen_lh _lh_testQueen_arg1⁰ = (nsoln_lh _lh_testQueen_arg1⁰)

--- lumberhack ---
enumFromTo_lh_₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (a⁰:((enumFromTo_lh_₀ (a⁰ + 1)) b⁰)) else [])
gen_lh_₀ _lh_gen_arg1⁰ _lh_gen_arg2⁰ = (case _lh_gen_arg1⁰ of {0 -> ([]:[]); _ -> (let _lh_listcomp_fun⁰ = (\_lh_listcomp_fun_para⁰ -> (case _lh_listcomp_fun_para⁰ of {(_lh_listcomp_fun_ls_h⁰ : _lh_listcomp_fun_ls_t⁰) -> (let _lh_listcomp_fun¹ = (\_lh_listcomp_fun_para¹ -> (case _lh_listcomp_fun_para¹ of {(_lh_listcomp_fun_ls_h¹ : _lh_listcomp_fun_ls_t¹) -> (if (((safe_lh_₀ _lh_listcomp_fun_ls_h¹) 1) _lh_listcomp_fun_ls_h⁰) then ((_lh_listcomp_fun_ls_h¹:_lh_listcomp_fun_ls_h⁰):(_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)) else (_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)); [] -> (_lh_listcomp_fun⁰ _lh_listcomp_fun_ls_t⁰)})) in (_lh_listcomp_fun¹ ((enumFromTo_lh_₀ 1) _lh_gen_arg2⁰))); [] -> []})) in (_lh_listcomp_fun⁰ ((gen_lh_₀ (_lh_gen_arg1⁰ - 1)) _lh_gen_arg2⁰)))})
length_lh_₀ ls⁰ = (case ls⁰ of {(h⁰ : t⁰) -> (1 + (length_lh_₀ t⁰)); [] -> 0})
nsoln_lh_₀ _lh_nsoln_arg1⁰ = (length_lh_₀ ((gen_lh_₀ _lh_nsoln_arg1⁰) _lh_nsoln_arg1⁰))
safe_lh_₀ _lh_safe_arg1⁰ _lh_safe_arg2⁰ _lh_safe_arg3⁰ = (case _lh_safe_arg3⁰ of {[] -> True; (_lh_safe_LH_C_0⁰ : _lh_safe_LH_C_1⁰) -> ((((_lh_safe_arg1⁰ /= _lh_safe_LH_C_0⁰) && (_lh_safe_arg1⁰ /= (_lh_safe_LH_C_0⁰ + _lh_safe_arg2⁰))) && (_lh_safe_arg1⁰ /= (_lh_safe_LH_C_0⁰ - _lh_safe_arg2⁰))) && (((safe_lh_₀ _lh_safe_arg1⁰) (_lh_safe_arg2⁰ + 1)) _lh_safe_LH_C_1⁰)); _ -> error})
testQueen_lh_₀ _lh_testQueen_arg1⁰ = (nsoln_lh_₀ _lh_testQueen_arg1⁰)

main :: IO ()
main = defaultMain [ bgroup "Queen_lh" [
    bench "lumberhack_Queen_lh" $ nf testQueen_lh_₀ 12
  , bench "original_Queen_lh" $ nf testQueen_lh 12 ] ]
