import Criterion.Main


--- original ---
(testSimpleRecursiveTypeExample_lh_₁ 3)

--- lumberhack ---
testSimpleRecursiveTypeExample_lh_₁_₀ _lh_testSimpleRecursiveTypeExample_arg1⁰ = (let _lh_listcomp_fun⁰ = (\_lh_listcomp_fun_para⁰ -> (_lh_listcomp_fun_para⁰ _lh_listcomp_fun⁰)) in (_lh_listcomp_fun⁰ (let _lh_listcomp_fun_ls_t⁰ = (\_lh_listcomp_fun¹ -> []) in (let _lh_listcomp_fun_ls_h⁰ = _lh_testSimpleRecursiveTypeExample_arg1⁰ in (\_lh_listcomp_fun² -> (_lh_listcomp_fun_ls_h⁰:(_lh_listcomp_fun² _lh_listcomp_fun_ls_t⁰)))))))

main :: IO ()
main = defaultMain [ bgroup "SimpleRecursiveTypeExample_lh" [
    bench "lumberhack_SimpleRecursiveTypeExample_lh" $ nf testSimpleRecursiveTypeExample_lh_₁_₀ 3
  , bench "original_SimpleRecursiveTypeExample_lh" $ nf testSimpleRecursiveTypeExample_lh_₁ 3 ] ]
