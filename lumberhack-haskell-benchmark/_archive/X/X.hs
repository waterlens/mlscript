import Criterion.Main

f'₀ _lh_f'_arg1¹ = (case _lh_f'_arg1¹ of {(_lh_f'_LH_C_0¹ : _lh_f'_LH_C_1¹) -> (\ff² -> (_lh_f'_LH_C_0¹:(ff² _lh_f'_LH_C_1¹))); [] -> (\ff³ -> []); _ -> (error "match error")})
f₀ _lh_f_arg1¹ = ((f'₀ _lh_f_arg1¹) f₀)
testX₀ _lh_testX_arg1¹ = (f₀ _lh_testX_arg1¹)

f'₀₀ _lh_f'_arg1⁰ = (case _lh_f'_arg1⁰ of {(_lh_f'_LH_C_0⁰ : _lh_f'_LH_C_1⁰) -> (\ff⁰ -> (_lh_f'_LH_C_0⁰:(ff⁰ _lh_f'_LH_C_1⁰))); [] -> (\ff¹ -> []); _ -> (error "match error")})
f₀₀ _lh_f_arg1⁰ = ((f'₀₀ _lh_f_arg1⁰) f₀₀)
testX₀₀ _lh_testX_arg1⁰ = (f₀₀ _lh_testX_arg1⁰)

main :: IO ()
main = defaultMain [ bgroup "X" [
    bench "lumberhack_X" $ nf testX₀₀ (3:[])
  , bench "original_X" $ nf testX₀ (3:[]) ] ]
