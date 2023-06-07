import Criterion.Main

safe x d []    = True
safe x d (q:l) = x /= q && x /= q+d && x /= q-d && safe x (d+1) l
gen 0 nq = [[]]
gen n nq = [ (q:b) | b <- gen (n-1) nq, q <- [1..nq], safe q 1 b]
nsoln nq = length (gen nq nq)


nsoln1 _lh_nsoln_arg1⁰ = (length ((gen₀₀ _lh_nsoln_arg1⁰) _lh_nsoln_arg1⁰))
safe₀₀ _lh_safe_arg1⁰ _lh_safe_arg2⁰ _lh_safe_arg3⁰ = ((_lh_safe_arg3⁰ _lh_safe_arg1⁰) _lh_safe_arg2⁰)
gen₀₀ _lh_gen_arg1⁰ _lh_gen_arg2⁰ = (case _lh_gen_arg1⁰ of {0 -> ((\_lh_safe_arg1¹ _lh_safe_arg2¹ -> (True )):[]); _ -> (let _lh_listcomp_fun⁰ = (\_lh_listcomp_fun_para⁰ -> (case _lh_listcomp_fun_para⁰ of {(_lh_listcomp_fun_ls_h⁰ : _lh_listcomp_fun_ls_t⁰) -> (let _lh_listcomp_fun¹ = (\_lh_listcomp_fun_para¹ -> (case _lh_listcomp_fun_para¹ of {(_lh_listcomp_fun_ls_h¹ : _lh_listcomp_fun_ls_t¹) -> (if (((safe₀₀ _lh_listcomp_fun_ls_h¹) 1) _lh_listcomp_fun_ls_h⁰) then ((let _lh_safe_LH_C_0⁰ = _lh_listcomp_fun_ls_h¹ in (let _lh_safe_LH_C_1⁰ = _lh_listcomp_fun_ls_h⁰ in (\_lh_safe_arg1² _lh_safe_arg2² -> ((((_lh_safe_arg1² /= _lh_safe_LH_C_0⁰) && (_lh_safe_arg1² /= (_lh_safe_LH_C_0⁰ + _lh_safe_arg2²))) && (_lh_safe_arg1² /= (_lh_safe_LH_C_0⁰ - _lh_safe_arg2²))) && (((safe₀₀ _lh_safe_arg1²) (_lh_safe_arg2² + 1)) _lh_safe_LH_C_1⁰))))):(_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)) else (_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)); [] -> (_lh_listcomp_fun⁰ _lh_listcomp_fun_ls_t⁰)})) in (_lh_listcomp_fun¹ ([1 .. _lh_gen_arg2⁰]))); [] -> []})) in (_lh_listcomp_fun⁰ ((gen₀₀ (_lh_gen_arg1⁰ - 1)) _lh_gen_arg2⁰)))})

testOur n = nsoln1 n
testDefault n = nsoln n

main :: IO ()
main = defaultMain [ bgroup "queen" [
                                      bench "our" $ nf testOur 12
                                    , bench "default" $ nf testDefault 12 ] ]

